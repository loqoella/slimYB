package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.Criteria;
import org.hibernate.Query;

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

	public void addUser(User u)throws Exception{
		Session currentSession = this.sessionFactory.getCurrentSession();
		currentSession.save(u);
	}
	
	public User getUserByEmail(String Email)throws Exception {
		
		List<User> list = this.sessionFactory.getCurrentSession().createQuery("FROM User u WHERE u.Email = " + "'" + Email + "'").list();
		System.out.print(list.size());
		if (list.size() !=0);
			return list.get(0);
	}
}
