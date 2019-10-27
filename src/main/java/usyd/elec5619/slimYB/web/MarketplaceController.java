package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import usyd.elec5619.slimYB.domain.Cart;
import usyd.elec5619.slimYB.domain.Delivery;
import usyd.elec5619.slimYB.domain.Product;
import usyd.elec5619.slimYB.service.CartManager;
import usyd.elec5619.slimYB.service.ItemCommentManager;
import usyd.elec5619.slimYB.service.OrderManager;
import usyd.elec5619.slimYB.service.ProductManager;
import usyd.elec5619.slimYB.service.UserManager;

/**
 * Handles requests for the application marketplace page.
 */
@Controller
@RequestMapping("/marketplace")
public class MarketplaceController {
	
	final int PRODUCT_PAGE_LIMIT = 12;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name="userManager")
	private UserManager userManager;
	
	@Resource(name="cartManager")
	private CartManager cartManager;
	
	@Resource(name="itemCommentManager")
	private ItemCommentManager itemCommentManager;
	
	@Resource(name="orderManager")
	private OrderManager orderManager;
	
	@Resource(name="productManager")
	private ProductManager productManager;
	
	private long getCurrentUserId() {
		return -1;
	}
	
	private long getCartNumber() {
		long currentUser = getCurrentUserId();
		if (currentUser != -1)
			return cartManager.getCartItemsCount(getCurrentUserId());
		else
			return -1;
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(
			Model model,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			@RequestParam(value = "page", required = false, defaultValue = "0") int currentPage) {

		model.addAttribute("title", "Marketplace");
		model.addAttribute("cartNum", getCartNumber());
		if (keyword.equals("")) {
			model.addAttribute("productList", productManager.getProductListSortedByTime(0, PRODUCT_PAGE_LIMIT));
			model.addAttribute("productCount", productManager.getProductCount());
		} else {
			model.addAttribute("productList", productManager.getProductListByName(keyword, (currentPage - 1) * 12, PRODUCT_PAGE_LIMIT));
			model.addAttribute("productCount", productManager.getProductCountByName(keyword));
		}
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("keyword", keyword);
		
		return "marketplace/marketplace";
	}
	
	@RequestMapping(value = "/cart")
	public String cart(Model model) {

		model.addAttribute("title", "Cart");
		model.addAttribute("subtitle", "SHOPPING CART");
		model.addAttribute("cartNum", getCartNumber());
		model.addAttribute("cartItemList", productManager.getProductListFromCart(getCurrentUserId()));

		return "marketplace/cart";
	}

	@RequestMapping(value = "/cart/add", method = RequestMethod.DELETE)
	@ResponseStatus(value = HttpStatus.OK)
	public void addCartItem(@RequestParam(value = "item") long productId) {
		cartManager.addItem(getCurrentUserId(), productId);
	}

	@RequestMapping(value = "/cart/delete", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.OK)
	public void deleteCartItem(@RequestParam(value="item") long cartItemId) {
		Cart cartItem = cartManager.getCartItemById(cartItemId);
		if (cartItem.getUserId().getId() == getCurrentUserId())
			cartManager.removeItemFromCart(cartItemId);
	}
	
	@RequestMapping(value = "/item")
	public String item(
			Model model,
			@RequestParam(value = "id") long itemId) {

		Product product = productManager.getProductById(itemId);

		model.addAttribute("title", "Marketplace - item");
		model.addAttribute("subtitle", product.getProductName());
		model.addAttribute("subsubtitle", "Price: $ " + product.getPrice());
		model.addAttribute("product", product);
		model.addAttribute("commentList", itemCommentManager.getCommentListByProductId(product.getId()));
		
		return "marketplace/item";
	}
	
	@RequestMapping(value = "/checkout")
	public String checkout(Model model) {
		
		model.addAttribute("title", "Checkout");
		model.addAttribute("subtitle", "CHECKOUT");
		
		return "marketplace/checkout";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String checkoutPost(Model model, Delivery delivery) {

		delivery.setStatus("Delivering");
		orderManager.createOrder(getCurrentUserId(), delivery);

		return "marketplace/success";
	}
	
	@RequestMapping(value = "/success")
	public String success(Model model) {
		
		model.addAttribute("title", "success");
		
		return "marketplace/success";
	}
	
	@RequestMapping(value = "/sell")
	public String sell(Model model) {
		
		model.addAttribute("title", "Marketplace - sell");
		model.addAttribute("subtitle", "SELLING ITEMS");
		model.addAttribute("productList", productManager.getProductListBySellerId(getCurrentUserId()));
		
		return "marketplace/sell";
	}
	
	@RequestMapping(value = "/sellNew")
	public String sellNew(Model model) {
		
		model.addAttribute("title", "Marketplace - sell");
		model.addAttribute("subtitle", "SELL YOUR ITEM");
		
		return "marketplace/sellNew";
	}

	@RequestMapping(value = "/sellNew", method = RequestMethod.POST)
	public String sellNewPost(
			Model model,
			@RequestParam("file") MultipartFile[] imgs,
			HttpServletRequest request,
			Product product) {

		String pathRoot = request.getSession().getServletContext().getRealPath("");

		return "marketplace/success";
	}
	
	@RequestMapping(value = "/orders")
	public String orders(Model model) {
		
		model.addAttribute("title", "Marketplace - orders");
		model.addAttribute("subtitle", "YOUR ORDERS");
		
		return "marketplace/orders";
	}
	
	@RequestMapping(value = "/comment")
	public String comment(Model model) {
		
		model.addAttribute("title", "Marketplace - comment");
		model.addAttribute("subtitle", "COMMENT - ITEM NAME");
		
		return "marketplace/comment";
	}
}
