package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Profile;
import usyd.elec5619.slimYB.domain.User;

@Service(value="profileManager")
@Transactional
public class ProfileManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
public Profile getProfileByEmail(String Email)throws Exception {
		
		List<Profile> list = this.sessionFactory.getCurrentSession().createQuery("FROM Profile u WHERE u.Email = " + "'" + Email + "'").list();
		System.out.print(list.size());
		return list.get(0);
		
	}
	
	public void addProfile(Profile p)throws Exception{
		Session currentSession = this.sessionFactory.getCurrentSession();
		currentSession.save(p);
	}
	
	public void changeProfile(String Email, Profile p) {
		Session currentSession =this.sessionFactory.getCurrentSession();
		Profile pro = (Profile)currentSession.get(Profile.class,Email);
		currentSession.update(pro);
	}	
}
