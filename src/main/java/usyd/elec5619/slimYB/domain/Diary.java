package usyd.elec5619.slimYB.domain;

import java.io.Serializable;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Diary")
public class Diary implements Serializable{
	
	@Id
	@GeneratedValue
	@Column(name="DiaryId")
	private long DiaryId;
	
	@Column(name="Title")
	private String title;
	
	@Column(name="Date")
	private Date date;
	
	@Column(name="breakfast")
	private int breakfast;
	
	@Column(name="lunch")
	private int lunch;
	
	@Column(name="dinner")
	private int dinner;
	
	@Column(name="water")
	private int water;
	
	@Column(name="snack")
	private int snack;
	
	@Column(name="gym")
	private int gym;
	
	@Column(name="text")
	private  String text;
	
	@Column(name="image")
	private String image;
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public long getID() {
		return DiaryId;
	}
	
	public int getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(int breakfast) {
		this.breakfast = breakfast;
	}
	public int getLunch() {
		return lunch;
	}
	public void setLunch(int lunch) {
		this.lunch = lunch;
	}
	public int getDinner() {
		return dinner;
	}
	public void setDinner(int dinner) {
		this.dinner = dinner;
	}
	public int getWater() {
		return water;
	}
	public void setWater(int water) {
		this.water = water;
	}
	public int getSnack() {
		return snack;
	}
	public void setSnack(int snack) {
		this.snack = snack;
	}
	public int getGym() {
		return gym;
	}
	public void setGym(int gym) {
		this.gym = gym;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("DiaryID: "+ DiaryId + ";");
		buffer.append("Date: "+ date + ";");
		buffer.append("Breakfast: "+ breakfast + ";");
		buffer.append("Lunch: "+ lunch + ";");
		buffer.append("Dinner: "+ dinner + ";");
		buffer.append("Water: "+ water + ";");
		buffer.append("Snack: "+ snack + ";");
		buffer.append("Gym: "+ gym + ";");
		buffer.append("Text: "+ text + ";");
		buffer.append("Image: "+ image + ";");
		
		return buffer.toString();
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
	
	
}