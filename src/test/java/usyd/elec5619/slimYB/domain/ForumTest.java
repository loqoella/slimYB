package usyd.elec5619.slimYB.domain;

import junit.framework.TestCase;

public class ForumTest extends TestCase{

	private Forum forum;
	
	protected void setUp() throws Exception{
		forum = new Forum();		
	}
	
	public void testSetAndGetTitle() {
		String testTitle="aTitle";
		assertNull(forum.getTitle());
		forum.setTitle(testTitle);
		assertEquals(testTitle, forum.getTitle());		
	}
	
	public void testSetAndGetTag() {
		String testTag="aTag";
		assertNull(forum.getTag());
		forum.setTag(testTag);
		assertEquals(testTag, forum.getTag());		
	}
}
