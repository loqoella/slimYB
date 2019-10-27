package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;

@Entity
@Table(name="Profile")
public class Profile implements Serializable {

	@Id
	@GeneratedValue
	@Column(name="Id")
	private int id;

	@Column(name="Username")
	private String username;

	@Column(name="Email")
	private String Email;

	@Column(name="Birthday")
	private String Birthday;

	@Column(name="Age")
	private int Age;


	@Column(name="Gender")
	private String Gender;

	@Column(name="Height")
	private double Height;

	@Column(name="Weight")
	private double Weight;

	@Column(name="Bust")
	private double Bust;

	@Column(name="Waist")
	private double Waist;

	@Column(name="Hips")
	private double Hips;

	@Column(name="BMI")
	private double BMI;

	public int getId() {
		return id;
	}

//	public void setId(long id) {
//		this.id = id;
//	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return Email;
	}


	public String getBirthday() {
		return Birthday;
	}

	public void setBirthday(String birthday) {
		Birthday = birthday;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public double getHeight() {
		return Height;
	}

	public void setHeight(double height) {
		Height = height;
	}

	public double getWeight() {
		return Weight;
	}

	public void setWeight(double weight) {
		Weight = weight;
	}

	public double getBust() {
		return Bust;
	}

	public void setBust(double bust) {
		Bust = bust;
	}

	public double getWaist() {
		return Waist;
	}

	public void setWaist(double waist) {
		Waist = waist;
	}

	public double getHips() {
		return Hips;
	}

	public void setHips(double hips) {
		Hips = hips;
	}

	public double getBMI() {
		return BMI;
	}

	public void setBMI(double bMI) {
		BMI = bMI;
	}

	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Username: " + username + ";");
		return buffer.toString();
	}
}
