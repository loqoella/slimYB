package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;

@Entity
@Table(name="Friend")
public class Friend implements Serializable {

	@Id
	@GeneratedValue
	@Column(name="Id")
	private int id;
	
	@Column(name="Friends")
	private String Friends;
	
	public int getId() {
		return id;
	}

	public String getFriends() {
		return Friends;
	}

	public void setFriends(String friends) {
		Friends = friends;
	}
	
	public void addFriend(String friend) {
		Friends += " " + friend;
	}
	
}
