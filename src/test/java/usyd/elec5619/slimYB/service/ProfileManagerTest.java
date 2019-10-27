package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Profile;

import java.util.*;

public class ProfileManagerTest extends TestCase{

	private ProfileManager profileManager;
	
	private List<Profile> profile;
	private static int PROFILE_COUNT=2;
	
	private static int id1=10;
	private static String birthday="testbirthday";
	private static String gender="male";
	private static String username="User1";
	private static String email="email1";
	
	private static int id2=11;
	private static String birthday2="testbirthday2";
	private static String gender2="female";
	private static String username2="User2";
	private static String email2="email2";
	
	protected void setUp() throws Exception {
		profileManager=new ProfileManager();
		profile = new ArrayList<Profile>();
		//list of forums
		Profile profile = new Profile();
		//profile.setId(10);
		profile.setBirthday(birthday);;
		profile.setEmail(email);
		profile.setGender(gender);
		profile.setUsername(username);
		//profile.add(profile);
		
		profile = new Profile();
		//profile.setId(11);
		profile.setBirthday(birthday2);;
		profile.setEmail(email2);
		profile.setGender(gender2);
		profile.setUsername(username2);
	}
	public void testAddProfile() {
		profileManager=new ProfileManager();
		//assertNull(profileManager.getProfile());		
	}
	
	public void testUpdateProfile() {
		//List <Profile> profile = profileManager.getProfile();
		assertNotNull(profile);
		//assertEquals(FORUM_COUNT, profileManager.getForums().size());
		profile = new ArrayList<Profile>();
		Profile profile = new Profile();
		
		assertEquals(id2, profile.getId());
		assertEquals(username2, profile.getUsername());
		assertEquals(email2, profile.getEmail());
		assertEquals(gender2, profile.getGender());
		assertEquals(birthday2, profile.getBirthday());
	}
}

