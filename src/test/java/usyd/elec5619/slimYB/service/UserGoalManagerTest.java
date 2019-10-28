package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.domain.UserGoal;

import java.util.ArrayList;
import java.util.List;

public class UserGoalManagerTest extends TestCase{

	private UserGoalManager userGoalManager;
	private UserGoal userGoal = new UserGoal();

	
	protected void setUp() throws Exception {

		userGoal.setGoal_weight("1");
		userGoal.setGoal_thigh_girth("2");
		userGoal.setGoal_waist_girth("3");
		userGoal.setGoal_hip_girth("4");
		userGoal.setGoal_duration_days("5");
		userGoal.setId(6);
		userGoalManager = new UserGoalManager();

	}

	public void testAddForums() {
		userGoalManager.addGoal(userGoal);
		assertNotNull(userGoal);
	}

	public void testGetForums() {
		userGoalManager.addGoal(userGoal);
		UserGoal userGoal = userGoalManager.getGoal();
		assertNotNull(userGoal);

		assertEquals("1", userGoal.getGoal_weight());
		assertEquals("2", userGoal.getGoal_thigh_girth());
		assertEquals("3", userGoal.getGoal_waist_girth());
		assertEquals("4", userGoal.getGoal_hip_girth());
		assertEquals("5", userGoal.getGoal_duration_days());
		assertEquals(6, userGoal.getId());
	}
}
