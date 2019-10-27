package usyd.elec5619.slimYB.domain;

import junit.framework.TestCase;

public class ForumTest extends TestCase{

	private Forum forumf;
	
	protected void setUp() throws Exception{
		forumf = new Forum();		
	}
	
	public void testSetAndGetTitle() {
		String testTitle="aTitle";
		assertNull(forumf.getTitle());
		forumf.setTitle(testTitle);
		assertEquals(testTitle, forumf.getTitle());		
	}
	
	public void testSetAndGetTag() {
		String testTag="aTag";
		assertNull(forumf.getTag());
		forumf.setTag(testTag);
		assertEquals(testTag, forumf.getTag());		
	}
	
	public void testSetAndGetContent() {
		String testContent="aContent";
		assertNull(forumf.getContent());
		forumf.setContent(testContent);
		assertEquals(testContent, forumf.getContent());		
	}
}
