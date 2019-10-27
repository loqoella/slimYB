package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;

@Entity
@Table(name="User")
public class User implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@Column(name="Username")
	private String username;
	
	@Column(name="Password")
	private String password;
	
	@Column(name="Email")
	private String Email;

	@Column (name="DiaryBookID")
	private long DiaryBookID;
	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getDiaryBookId() {
		return DiaryBookID;
	}
	
	
	public void setDiaryBookId(long DiaryBookID) {
		this.DiaryBookID = DiaryBookID;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public User getUser() {
		return this;
	}
	
	public String getEmail() {
		return Email;
	}
	
	public void setEmail(String em) {
		this.Email=em;
	}
	
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Username: " + username + ";");
		buffer.append("Password: " + password + ";");
		buffer.append("DiaryBookID: " + DiaryBookID + ";");
		return buffer.toString();
	}
}
