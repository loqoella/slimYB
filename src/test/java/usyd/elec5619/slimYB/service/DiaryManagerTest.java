package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Diary;

public class DiaryManagerTest extends TestCase{
	
	private DiaryManager diaryManager;
	
	protected void setUp() throws Exception{
		diaryManager = new DiaryManager();
		
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		
		
	}
	
	public void testGetDiaryWithNoDiary() {
		diaryManager = new DiaryManager();
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		assertEquals("Test Title",diary.getTitle());
		
	}
	
	public void testGetDiary() {
		diaryManager = new DiaryManager();
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		assertEquals("Test Text",diary.getText());
		
	}
	
	public void testGetDiaryWithBreakfast() {
		diaryManager = new DiaryManager();
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		assert(diary.getBreakfast()==0);
		
	}
	
	public void testAddDiary() {
		diaryManager = new DiaryManager();
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		assert(diary.getDinner()==1);
		
	}
	
	
	public void testGetDiaryWithGymFunction() {
		diaryManager = new DiaryManager();
		Diary diary = new Diary();
		diary.setTitle("Test Title");
		diary.setText("Test Text");
		diary.setBreakfast(0);
		diary.setDinner(1);
		diary.setGym(1);
		diary.setSnack(0);
		
		assert(diary.getGym()==1);
		
	}
	
}