package usyd.elec5619.slimYB.domain;

import junit.framework.TestCase;

public class UserTest extends TestCase{

	private User user;
	
	protected void setUp() throws Exception{
		user = new User();		
	}
	
	public void testSetAndGetUsername() {
		String testUsername="aUsername";
		assertNull(user.getUsername());
		profile.setUsername(testUsername);
		assertEquals(testUsername, user.getUsername());		
	}
	
	public void testSetAndGetEmail() {
		String testEmail="aEmail";
		assertNull(user.getEmail));
		profile.setEmail(testEmail);
		assertEquals(testEmail, user.getEmail());		
	}
	
	public void testSetAndGetPassword() {
		String testPassword="aPassword";
		assertNull(profile.getPassword());
		profile.setPassword(testPassword);
		assertEquals(testPassword, profile.getPassword());		
	}
}
