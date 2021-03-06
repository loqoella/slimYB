package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Cart;
import usyd.elec5619.slimYB.domain.Product;
import usyd.elec5619.slimYB.domain.User;

@Service(value="cartManager")
@Transactional
public class CartManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public Cart getCartItemById(long id) {
		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
	}
	
	public List<Cart> getCartItems(long userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Cart WHERE userid = :userid";
		return session.createQuery(hql).setParameter("userid", userId).list();
	}

	public long getCartItemsCount(long userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM Cart WHERE userid = :userid";
		return ((Number)session.createQuery(hql).setParameter("userid", userId).uniqueResult()).longValue();
	}

	public Cart getCartItemByProduct(long userId, long productId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Cart WHERE userId.id = :userId AND productId.id=:product";
		Query query = session.createQuery(hql);
		query.setParameter("userId", userId);
		query.setParameter("product", productId);
		query.setMaxResults(1);
		return (Cart) query.uniqueResult();
	}

	public void removeItemFromCart(long cartItemId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "DELETE from Cart WHERE id=:cartItemId";
		session.createQuery(hql).setParameter("cartItemId", cartItemId).executeUpdate();
	}

	public void addItem(long userId, long productId) {
		Session session = sessionFactory.getCurrentSession();
		Cart cart = new Cart();
		cart.setUserId((User) session.get(User.class, userId));
		cart.setProductId((Product) session.get(Product.class, productId));
		session.save(cart);
	}

	public void clearCart(long userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "DELETE from Cart WHERE userid = :userId";
		session.createQuery(hql).setParameter("userId", userId).executeUpdate();
	}
}
