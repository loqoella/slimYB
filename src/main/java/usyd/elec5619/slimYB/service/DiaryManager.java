package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Diary;
import usyd.elec5619.slimYB.domain.User;

@Service(value="diaryManager")
@Transactional
public class DiaryManager implements Serializable {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void testAddDiary() throws ParseException {
		Session currentSession = this.sessionFactory.getCurrentSession();
		Diary d = new Diary();
		
		d.setBreakfast(0);
		d.setDinner(1);
		d.setLunch(1);
		d.setSnack(0);
		d.setGym(1);
		d.setWater(1);
		
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		d.setDate(dateformat.parse("2019-10-10"));
		d.setText("This function will record life based on the calendar, users can query, add, modify and delete specific content through the calendar.");
		
		
		
		currentSession.save(d);
		
		
		String test = d.toString();
		
		System.out.print("new user added!");
		System.out.print(test);
		
	}
}
