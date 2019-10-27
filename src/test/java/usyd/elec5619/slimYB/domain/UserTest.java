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
		user.setUsername(testUsername);
		assertEquals(testUsername, user.getUsername());		
	}
	
	public void testSetAndGetEmail() {
		String testEmail="aEmail";
		assertNull(user.getUsername());
		user.setEmail(testEmail);
		assertEquals(testEmail, user.getEmail());		
	}
	
	public void testSetAndGetPassword() {
		String testPassword="aPassword";
		assertNull(user.getPassword());
		user.setPassword(testPassword);
		assertEquals(testPassword, user.getPassword());		
	}
}

