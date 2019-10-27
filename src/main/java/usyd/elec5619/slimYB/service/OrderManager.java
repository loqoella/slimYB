package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.*;

import javax.annotation.Resource;

@Service(value="orderManager")
@Transactional
public class OrderManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Resource(name = "productManager")
	private ProductManager productManager;

	@Resource(name = "cartManager")
	private CartManager cartManager;

	public void createOrder(long userid, Delivery delivery) {
		List<Product> productList = productManager.getProductListFromCart(userid);

		Session session = sessionFactory.getCurrentSession();
		Order order = new Order();
		order.setBuyerId((User) session.get(User.class, userid));
		order.setItemCount(productList.size());
		order.setStatus("Delivering");
		int totalPrice = 0;
		for (Product p : productList) {
			totalPrice += p.getPrice();
		}
		order.setTotalPrice(totalPrice);
		session.save(order);

		for (Product p : productList) {
			OrderItem item = new OrderItem();
			item.setItemPrice(p.getPrice());
			item.setOrderId(order);
			item.setProductId(p);
			session.save(item);
		}

		session.save(delivery);
		cartManager.clearCart(userid);
	}

	public List<Order> getOrderListByUserId(long userId) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "FROM Order o WHERE o.buyerId.id=:buyerId";
		Query query = session.createQuery(hql);
		query.setParameter("buyerId", userId);
		return query.list();
	}
}
