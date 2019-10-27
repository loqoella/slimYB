package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.User;

@Service(value="userManager")
@Transactional
public class UserManager implements Serializable {

	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}



	public List<User> getAllUsers() throws Exception {


		List<User> list =this.sessionFactory.getCurrentSession().createQuery("from User").list();
		return list;
	}

	public List<User> getAllOtherUsers() throws Exception {
		List<User> list =this.sessionFactory.getCurrentSession().createQuery("from User where Id <> 1").list();
		return list;
	}


	public User getUserById(long id)throws Exception {
		User q =(User) this.sessionFactory.getCurrentSession().get(User.class,id);
		System.out.print(q);
		return q;
	}

	public void deleteUser(long id) {
		Session currentSession =this.sessionFactory.getCurrentSession();
		User user = (User)currentSession.get(User.class,id);
		currentSession.delete(user);
	}
}
