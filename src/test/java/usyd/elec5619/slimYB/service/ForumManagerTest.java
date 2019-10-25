package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Forum;

import java.util.*;

public class ForumManagerTest extends TestCase{

	private ForumManager forumManager;
	
	private List<Forum> forums;
	
	private static int id1=10;
	private static String POST1_Title="Lose weight is good for health";
	private static String POST1_TAG="#Health";
	private static String USER1="User1";
	private static String POST1_CONTENT="post1post1post1";
	
	private static int id2=11;
	private static String POST2_Title="Food with low sugar helps lose weight";
	private static String POST2_TAG="#Food";
	private static String USER2="User2";
	private static String POST2_CONTENT="post2post2post2";
	
	protected void setUp() throws Exception {
		forumManager=new ForumManager();
		forums = new ArrayList<Forum>();
		//list of forums
		Forum forum = new Forum();
		forum.setId(10);
		forum.setTitle(POST1_Title);
		forum.setTag(POST1_TAG);
		forum.setUser(USER1);
		forum.setContent(POST1_CONTENT);
		forums.add(forum);
		
		forum = new Forum();
		forum.setId(11);
		forum.setTitle(POST2_Title);
		forum.setTag(POST2_TAG);
		forum.setUser(USER2);
		forum.setContent(POST2_CONTENT);
		forums.add(forum);
		
		forumManager.setForums(forums);
	}
	public void testGetForumsWithNoForums() {
		forumManager=new ForumManager();
		assertNull(forumManager.getAllForums());		
	}
}
