package usyd.elec5619.slimYB.domain;

import junit.framework.TestCase;
import org.junit.Test;

public class FriendTest extends TestCase{
	
	private Friend friend;
	
	@Override
	protected void setUp() throws Exception {
		friend = new Friend();
	}
	
	public void testSetFriend () {
		String tag = "Test_setFriends";
		friend.setFriends(tag);
		assertEquals(this.friend.getFriends(), tag);
	}
	
	public void testAddFriend() {
		String tag = "Test_addFriends";
		String now = friend.getFriends() +" "+ tag;
		this.friend.addFriend(tag);
		assertEquals(this.friend.getFriends(), now);
	}
}