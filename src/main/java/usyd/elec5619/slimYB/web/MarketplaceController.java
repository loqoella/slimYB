package usyd.elec5619.slimYB.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application marketplace page.
 */
@Controller
@RequestMapping("/marketplace")
public class MarketplaceController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("now", formattedDate );
		model.addAttribute("title", "Marketplace");
		model.addAttribute("cartNum", 3);
		
		return "marketplace/marketplace";
	}
	
	@RequestMapping(value = "/cart")
	public String cart(Model model) {
		
		model.addAttribute("title", "Cart");
		model.addAttribute("subtitle", "SHOPPING CART");
		
		return "marketplace/cart";
	}
	
	@RequestMapping(value = "/item")
	public String item(Model model) {
		
		model.addAttribute("title", "Marketplace - item");
		model.addAttribute("subtitle", "ITEM NAME");
		model.addAttribute("subsubtitle", "ITEM PRICE");
		
		return "marketplace/item";
	}
	
	@RequestMapping(value = "/checkout")
	public String checkout(Model model) {
		
		model.addAttribute("title", "Checkout");
		model.addAttribute("subtitle", "CHECKOUT");
		
		return "marketplace/checkout";
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
		
		return "marketplace/sell";
	}
	
	@RequestMapping(value = "/sellNew")
	public String sellNew(Model model) {
		
		model.addAttribute("title", "Marketplace - sell");
		model.addAttribute("subtitle", "SELL YOUR ITEM");
		
		return "marketplace/sellNew";
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
