package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Forum;

@Service(value="applicationManager")
@Transactional
public class ForumManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	

	public List<Forum> getAllApplications() throws Exception {
		
		
		List<Forum> list =this.sessionFactory.getCurrentSession().createQuery("from Application").list();
		return list;
	}
	
	
	public Forum getApplicationById(int id)throws Exception {
		Forum m =(Forum) this.sessionFactory.getCurrentSession().get(Forum.class,id);
		System.out.print(m);
		return m;
	}	
}
