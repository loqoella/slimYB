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
		String testGender="aGender";
		assertNull(profilep.getEmail());
		profilep.setGender(testGender);
		assertEquals(testGender, profilep.getGender());		
	}
}
