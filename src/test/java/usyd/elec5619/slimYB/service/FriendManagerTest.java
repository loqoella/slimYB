package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Friend;

public class FriendManagerTest extends TestCase {
	private FriendManager fm;
	private static int id = 1;

	@Override
	protected void setUp() throws Exception {
		this.fm = new FriendManager();
	}

	public void testAddFriend() {
		String[] now  = this.fm.getAllFriends(id);
		int friend = 2;
		this.fm.addFriend(id, friend);
		assertEquals(now.length(), this.fm.getAllFriends(id).length() - 1);
	}

	pubic void testDeleteFriend() {
		String[] now  = this.fm.getAllFriends(id);
		int friend = 2;
		this.fm.deleteFriend(id, friend);
		assertEquals(now.length(), this.fm.getAllFriends(id).length() + 1);
	}
}
