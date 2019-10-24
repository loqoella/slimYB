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
	@Column(name="UserId")
	private long id;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Password")
	private String password;

	public long getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Username: " + email + ";");
		buffer.append("Password: " + password + ";");
		return buffer.toString();
	}




}
