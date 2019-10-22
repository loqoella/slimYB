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

	public void testAddUser() {
		Session currentSession = this.sessionFactory.getCurrentSession();
		User u = new User();
		u.setUsername("testUser");
		u.setPassword("testPassword");
		currentSession.save(u);
		
		System.out.print("new user added!");
	}
	

	public List<User> getAllUsers() throws Exception {
		
		
		List<User> list =this.sessionFactory.getCurrentSession().createQuery("from User").list();
		return list;
	}
	
	
	public User getUserById(int id)throws Exception {
		User q =(User) this.sessionFactory.getCurrentSession().get(User.class,id);
		System.out.print(q);
		return q;
	}



	

	
	
}
