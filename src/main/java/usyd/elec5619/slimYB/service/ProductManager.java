package usyd.elec5619.slimYB.service;

import java.io.IOException;
import java.io.Serializable;
import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import org.springframework.web.multipart.MultipartFile;
import usyd.elec5619.slimYB.domain.Cart;
import usyd.elec5619.slimYB.domain.Product;
import usyd.elec5619.slimYB.domain.User;

@Service(value="productManager")
@Transactional
public class ProductManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public Product getProductById(long productId) {
		Session session = sessionFactory.getCurrentSession();
		return (Product) session.get(Product.class, productId);
	}
	
	public List<Product> getProductListSortedByTime(int startIndex, int count) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product ORDER BY date(LastUpdateTime) ASC";
		Query query = session.createQuery(hql);
		query.setFirstResult(startIndex);
		query.setMaxResults(count);
		return (List<Product>) query.list();
	}
	
	public long getProductCount() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) from Product";
		return ((Number) session.createQuery(hql).uniqueResult()).longValue();
	}
	
	public List<Product> getProductListByName(String keyword, int startIndex, int count) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product WHERE ProductName LIKE :keyword ORDER BY date(LastUpdateTime) ASC";
		Query query = session.createQuery(hql);
		query.setString("keyword", "%" + keyword + "%");
		query.setFirstResult(startIndex);
		query.setMaxResults(count);
		return (List<Product>) query.list();
	}
	
	public long getProductCountByName(String keyword) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM Product WHERE ProductName LIKE :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + keyword + "%");
		return ((Number) query.uniqueResult()).longValue();
	}

	public List<Product> getProductListFromCart(long userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT c.product FROM Cart c WHERE c.userId = :userId";
		Query query = session.createQuery(hql);
		query.setParameter("userId", userId);
		return query.list();
	}

	public List<Product> getProductListBySellerId(long sellerId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product WHERE userId = :userId";
		Query query = session.createQuery(hql);
		query.setParameter("userId", sellerId);
		return query.list();
	}

	public void createNewProduct(Product product, MultipartFile[] imgs, String pathRoot) {
		Session session = sessionFactory.getCurrentSession();
		session.save(product);

		String imagePathString = "";

		for (MultipartFile mf : imgs) {
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			String contentType = mf.getContentType();
			String suffix = contentType.substring(contentType.indexOf("/") + 1);
			String path = "/static/images/" + uuid + "." + suffix;
			try {
				mf.transferTo(new File(pathRoot + path));
			} catch (IOException e) {
				e.printStackTrace();
			}
			imagePathString = imagePathString + "%" + path;
		}
	}
}
