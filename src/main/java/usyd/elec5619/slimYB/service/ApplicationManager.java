package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Application;

@Service(value="applicationManager")
@Transactional
public class ApplicationManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}


	public List<Application> getAllApplications() throws Exception {
		
		
		List<Application> list =this.sessionFactory.getCurrentSession().createQuery("from Application").list();
		return list;
	}
	
	
	public Application getApplicationById(int id)throws Exception {
		Application m =(Application) this.sessionFactory.getCurrentSession().get(Application.class,id);
		System.out.print(m);
		return m;
	}	
}
