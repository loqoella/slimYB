package usyd.elec5619.slimYB.domain;
import junit.framework.TestCase;


public class UserGoalTest extends TestCase{
	
	private UserGoal userGoal;
	
	
	protected void setUp() throws Exception{
		userGoal = new UserGoal();
	
	}
	
	
	public void testSetAndGetId() {
		long id = 1;
		userGoal.setId(id);
		assertEquals(id, userGoal.getId());
	}
	
	

	public void testSetAndGetGoal_weight() {
		String w = "1";
		assertNull(userGoal.getGoal_weight());
		userGoal.setGoal_weight(w);
		assertEquals(w, userGoal.getGoal_weight());
	}
	
	public void testSetAndGetGoal_thigh_girth() {
		String g = "1";
		userGoal.setGoal_thigh_girth(g);
		assertEquals(g, userGoal.getGoal_thigh_girth());
	}
	
	public void testSetAndGetGoal_hip_girth() {
		String g = "1";
		userGoal.setGoal_hip_girth(g);
		assertEquals(g, userGoal.getGoal_hip_girth());
	}
	
	public void testSetAndGetGoal_waist_girth() {
		String g = "1";
		userGoal.setGoal_waist_girth(g);
		assertEquals(g, userGoal.getGoal_waist_girth());
	}
	
	public void testSetAndGetGoal_duration_days() {
		String g = "1";

		userGoal.setGoal_duration_days(g);
		assertEquals(g, userGoal.getGoal_duration_days());
	}
}