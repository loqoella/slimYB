package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;

@Entity
@Table(name="Profile")
public class Profile implements Serializable {
	
	@Id
	@Column(name="Id")
	private long id;
	
	@ManyToOne
    @JoinColumn(name = "UserId")
    private User user;
	
	@Column(name="Username")
	private String username;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="Birthday")
	private String birthday;
	
	@Column(name="Age")
	private String age;
	
	@Column(name="Firstname")
	private String firstname;
	
	@Column(name="Surname")
	private String surname;

	public long getId() {
		return id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Username: " + username + ";");
		buffer.append("Gender: " + gender + ";");
		buffer.append("Birthday: " + birthday + ";");
		buffer.append("Age: " + age + ";");
		buffer.append("Firstname: " + firstname + ";");
		buffer.append("Durname: " + surname + ";");
		return buffer.toString();
	}

	

	

}



	
