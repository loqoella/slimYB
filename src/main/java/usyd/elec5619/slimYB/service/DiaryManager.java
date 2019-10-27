package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import usyd.elec5619.slimYB.domain.Comment;
import usyd.elec5619.slimYB.domain.Diary;

@Service(value = "diaryManager")
@Transactional
public class DiaryManager implements Serializable {

	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addOrUpdateDiary(Diary diary) {
		Session currentSession = this.sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(diary);
	}

	public Diary getDiary(long diaryId) {
		if (diaryId < 0) {
			return null;
		}
		Session currentSession = this.sessionFactory.getCurrentSession();
		Diary diary = (Diary) currentSession.get(Diary.class, diaryId);
		return diary;
	}

	public Diary findDiaryByDate(String date) {
		Session currentSession = this.sessionFactory.getCurrentSession();
		String hql = "from Diary where date=:date";
		Query query = currentSession.createQuery(hql);
		query.setParameter("date", date);
		List<Diary> diaries = query.list();
		if (diaries.isEmpty()) {
			return null;
		}
		return diaries.get(0);
	}

	public void addComment(long id, String commentString) {
		Diary diary = getDiary(id);
		Comment comment = new Comment();
		comment.setComment(commentString);
		comment.setDiary(diary);
		diary.getCommentList().add(comment);
		addOrUpdateDiary(diary);
	}

	public void deleteDiary(Diary diary) {
		Session currentSession = this.sessionFactory.getCurrentSession();;
		diary = (Diary) currentSession.get(Diary.class, diary.getDiaryId());
		currentSession.delete(diary);
	}

	public void testAddDiary() {
		Session currentSession = this.sessionFactory.getCurrentSession();
		Diary d = new Diary();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd");

		d.setBreakfast(0);
		d.setDinner(1);
		d.setLunch(1);
		d.setSnack(0);
		d.setGym(1);
		d.setWater(1);
		d.setDate("2019-10-10");

		d.setText(
				"This function will record life based on the calendar, users can query, add, modify and delete specific content through the calendar.");

		currentSession.save(d);
		String test = d.toString();

		System.out.print("new user added!");
		System.out.print(test);

	}
	
	
}
