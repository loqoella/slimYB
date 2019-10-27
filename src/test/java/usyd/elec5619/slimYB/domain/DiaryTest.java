package usyd.elec5619.slimYB.domain;
import junit.framework.TestCase;


public class DiaryTest extends TestCase{
	
	private Diary diary;
	
	
	protected void setUp() throws Exception{
		diary = new Diary();
	
	}
	
	
	public void testSetAndGetTitle() {
		String testTitle = "aTitle";
		assertNull(diary.getTitle());
		diary.setTitle(testTitle);
		assertEquals(testTitle, diary.getTitle());
	}
	
	

	public void testSetAndGetText() {
		String testText = "Text";
		assertNull(diary.getText());
		diary.setText(testText);
		assertEquals(testText, diary.getText());
	}
	
	public void testSetAndGetBreakfast() {
		int testBreakfast = 1;
		
		diary.setBreakfast(testBreakfast);
		assertEquals(testBreakfast, diary.getBreakfast());
	}
	
	public void testSetAndGetLunch() {
		int testLunch = 1;
		
		diary.setLunch(testLunch);
		assertEquals(testLunch, diary.getLunch());
	}
	
	public void testSetAndGetDinner() {
		int testDinner = 1;
		
		diary.setDinner(testDinner);
		assertEquals(testDinner, diary.getDinner());
	}
	
	public void testSetAndGetWater() {
		int testWater = 1;
		
		diary.setWater(testWater);
		assertEquals(testWater, diary.getWater());
	}
	
	public void testSetAndGetGym() {
		int testGym = 1;
		
		diary.setGym(testGym);
		assertEquals(testGym, diary.getGym());
	}
	
	
	
}