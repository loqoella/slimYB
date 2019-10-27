package usyd.elec5619.slimYB.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import usyd.elec5619.slimYB.domain.Application;
import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.domain.Friend;
import usyd.elec5619.slimYB.domain.Profile;
import usyd.elec5619.slimYB.domain.User;

@Service(value="friendManager")
@Transactional
public class FriendManager implements Serializable {

	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public String[] getAllFriends(int id) throws Exception {
		Friend friend = (Friend) this.sessionFactory.getCurrentSession().get(Friend.class, id);
		String[] friends = friend.getFriends().split(" ");
		return friends;
	}
	
	public void addFriend(int id, int friend)throws Exception {
		Session currentSession = this.sessionFactory.getCurrentSession();
		Friend friends = (Friend)currentSession.get(Friend.class, id);
		friends.addFriend(String.valueOf(friend));
		currentSession.save(friends);
	}
	
	public void deleteFriend(int id, int friend) {
		Session currentSession = this.sessionFactory.getCurrentSession();
		Friend friends = (Friend) this.sessionFactory.getCurrentSession().get(Friend.class, id);
		String friendList = friends.getFriends().trim();
		int index = friendList.indexOf(String.valueOf(friend));  
		String newFriendList = "";
		if(index != 0) {
			newFriendList = friendList.substring(0, index - 1).trim();
		}
		if(index + String.valueOf(friend).length() + 2 < friendList.length())
			newFriendList = newFriendList + " " + friendList.substring(index + 2);
		friends.setFriends(newFriendList.trim());
		currentSession.save(friends);
	}
}
