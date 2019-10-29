package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Friend;

public class FriendManagerTest extends TestCase {
	private FriendManager fm;
	private static int id = 1;
	int friend = 2;
	
	@Override
	protected void setUp() throws Exception {
		this.fm = new FriendManager();
	}
	
	public void testDeleteFriend() throws Exception {
		
		this.fm.addFriend(id, friend);
		String[] now  = this.fm.getAllFriends(id);
		//System.out.println(now);
		this.fm.deleteFriend(id, friend);
		assertEquals(now.length, this.fm.getAllFriends(id).length + 1);
	}

	public void testAddFriend() throws Exception {
		this.fm.deleteFriend(id, friend);
		String[] now = this.fm.getAllFriends(id);
		this.fm.addFriend(id, friend);
		assertEquals(now.length, this.fm.getAllFriends(id).length - 1);
	}

}
