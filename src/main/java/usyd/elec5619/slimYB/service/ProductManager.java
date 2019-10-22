package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

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
		String hql = "FROM Product p ORDER BY p.LastUpdateTime ASC";
		Query query = session.createSQLQuery(hql);
		query.setFirstResult(startIndex);
		query.setMaxResults(count);
		return (List<Product>) query.list();
	}
	
	public int getProductCount() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) from Product";
		return (Integer) session.createSQLQuery(hql).uniqueResult();
	}
	
	public List<Product> getProductListByName(String keyword, int startIndex, int count) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product WHERE ProductName like concat('%',:keyword,'%') ORDER BY p.LastUpdateTime ASC";
		Query query = session.createSQLQuery(hql);
		query.setParameter("keyword", keyword);
		query.setFirstResult(startIndex);
		query.setMaxResults(count);
		return (List<Product>) query.list();
	}
	
	public int getProductCountByName(String keyword, int startIndex, int count) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM Product WHERE ProductName like concat('%',:keyword,'%')";
		Query query = session.createSQLQuery(hql);
		query.setParameter("keyword", keyword);
		return (Integer) session.createSQLQuery(hql).uniqueResult();
	}
}
