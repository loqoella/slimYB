package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.ItemComment;
import usyd.elec5619.slimYB.domain.Product;
import usyd.elec5619.slimYB.domain.User;

import javax.xml.stream.events.Comment;

@Service(value="itemCommentManager")
@Transactional
public class ItemCommentManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<ItemComment> getCommentListByProductId(long productId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM ItemComment WHERE productId = :productId ORDER BY id DESC";
		return session.createQuery(hql).setParameter("productId", productId).list();
	}

	public void addComment(long productId, long userId, String comment) {
		Session session = sessionFactory.getCurrentSession();
		ItemComment itemComment = new ItemComment();
		itemComment.setUserId((User) session.get(User.class, userId));
		itemComment.setProductId((Product) session.get(Product.class, productId));
		itemComment.setComment(comment);
		session.save(itemComment);
	}
}
