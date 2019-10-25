package usyd.elec5619.slimYB.domain;

import junit.framework.TestCase;

public class ProfileTest extends TestCase{

	private Profile profile;
	
	protected void setUp() throws Exception{
		profile = new Profile();		
	}
	
	public void testSetAndGetUsername() {
		String testUsername="aUsername";
		assertNull(profile.getUsername());
		profile.setUsername(testUsername);
		assertEquals(testUsername, profile.getUsername());		
	}
	
	public void testSetAndGetGender() {
		String testGender="aGender";
		assertNull(profile.getEmail());
		profile.setGender(testGender);
		assertEquals(testGender, profile.getGender());		
	}
}
