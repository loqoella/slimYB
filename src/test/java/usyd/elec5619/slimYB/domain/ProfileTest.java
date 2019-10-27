package usyd.elec5619.slimYB.domain;


import org.junit.Test;

import junit.framework.TestCase;

public class ProfileTest extends TestCase{

	private Profile profilep;
	
	protected void setUp() throws Exception{
		profilep = new Profile();		
	}
	
	public void testSetAndGetUsername() {
		String testUsername="aUsername";
		assertNull(profilep.getUsername());
		profilep.setUsername(testUsername);
		assertEquals(testUsername, profilep.getUsername());		
	}
	
	public void testSetAndGetGender() {
		String testGender="male";
		assertNull(profilep.getGender());
		profilep.setGender(testGender);
		assertEquals(testGender, profilep.getGender());		
	}
	

	
	public void testSetAndGetBirthday() {
		String testBirthday="04/05/1998";
		assertNull(profilep.getBirthday());
		profilep.setBirthday(testBirthday);
		assertEquals(testBirthday, profilep.getBirthday());		
	}
	
	public void testSetAndGetAge() {
		int testAge=22;
		profilep.setAge(testAge);
		assertEquals(testAge, profilep.getAge());		
	}
	
	public void testSetAndGetHeight() {
		double testHeight=170.00;
		profilep.setHeight(testHeight);
		assertEquals(testHeight, profilep.getHeight());		
	}
	
	public void testSetAndGetWeight() {
		double testWeight=65.00;
		profilep.setWeight(testWeight);
		assertEquals(testWeight, profilep.getWeight());		
	}
	
	public void testSetAndGetBust() {
		double testBust=92.00;
		profilep.setBust(testBust);
		assertEquals(testBust, profilep.getBust());		
	}
	
	public void testSetAndGetWaist() {
		double testWaist=70.00;
		profilep.setWaist(testWaist);
		assertEquals(testWaist, profilep.getWaist());		
	}
	
	public void testSetAndGetHips() {
		double testHips=98.00;
		profilep.setHips(testHips);
		assertEquals(testHips, profilep.getHips());		
	}
}
