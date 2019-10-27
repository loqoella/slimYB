import junit.framework.TestCase;

class FriendTest extends TestCase{
	
	private Friend friend;
	
	@Override
	protected void setUp() throws Exception {
		this.friend = new Friend();
	}
	
	public void testSetFriend() {
		String tag = "Test_setFriends";
		this.friend.setFriends(tag);
		assertEquals(this.friend.getFriends(), tag);
	}
	
	public void testAddFriend() {
		String tag = "Test_addFriends";
		String now = this.friend.getFriends() + tag;
		this.friend.addFriend(tag);
		assertEquals(this.friend.getFriends(), tag);
	}
}