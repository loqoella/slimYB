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
	private String friends;
	
	public int getId() {
		return id;
	}

	public String getFriends() {
		return friends;
	}

	public void setFriends(String friends) {
		this.friends = friends;
	}
	
	public void addFriend(String friend) {
		this.friends += " " + friend;
		this.friends = this.friends.trim();
	}
	
}
