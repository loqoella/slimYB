package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.domain.User;

@Service(value="forumManager")
@Transactional
public class ForumManager implements Serializable {

	private SessionFactory sessionFactory;
	private List<Forum> forums;
	//private List<Forum> forums;

	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}



	public Forum getApplicationById(int id)throws Exception {
		Forum m =(Forum) this.sessionFactory.getCurrentSession().get(Forum.class,id);
		System.out.print(m);
		return m;
	}

	public void addForum(Forum fo)throws Exception{
		Session currentSession = this.sessionFactory.getCurrentSession();
		currentSession.save(fo);
	}

	public List<Forum> getAllForums(){

		List<Forum> forums =this.sessionFactory.getCurrentSession().createQuery("from Forum").list();
		return forums;
	}


	public Forum getForumById(int id) {
		Forum f =(Forum) this.sessionFactory.getCurrentSession().get(Forum.class,id);
		return f;
	}

	public void deleteForum(int id) {
		Session currentSession =this.sessionFactory.getCurrentSession();
		Forum fo = (Forum)currentSession.get(Forum.class,id);
		currentSession.delete(fo);
	}



	public void updateForum(Forum nf) {
		Session currentSession =this.sessionFactory.getCurrentSession();
		currentSession.merge(nf);
	}

	public List<Forum> getForums() {

		return forums;
	}

	public void setForums(List<Forum> forums) {
		this.forums=forums;
}


}
