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

	public Profile getProfileByGender(String gender) {
		Profile q = (Profile) this.sessionFactory.getCurrentSession().get(Profile.class, gender);
		return q;
	}
	
	public Profile getProfileById(int id)throws Exception {
		Profile q =(Profile) this.sessionFactory.getCurrentSession().get(Profile.class, id);
		return q;
	}
	
	public void deleteProfile(int id) {
		Session currentSession =this.sessionFactory.getCurrentSession();
		Profile profile = (Profile)currentSession.get(Profile.class,id);
		currentSession.delete(profile);
	}	
}
