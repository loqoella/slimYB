package usyd.elec5619.slimYB.domain;

import java.io.Serializable;


import java.util.Date;



public class Diary implements Serializable{
	
	private int DiaryID;
	private Date date;
	private int breakfast;
	private int lunch;
	private int dinner;
	private int water;
	private int snack;
	private int gym;
	private  String text;
	private String image;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getID() {
		return DiaryID;
	}
	public void setID(int DiaryID) {
		DiaryID = DiaryID;
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
		buffer.append("DiaryID: "+ DiaryID + ";");
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