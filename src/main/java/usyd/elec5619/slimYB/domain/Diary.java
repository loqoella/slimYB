package usyd.elec5619.slimYB.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;



@Entity
@Table(name="Diary")
public class Diary implements Serializable{
	
	@Id
	@GeneratedValue
	@Column(name="DiaryId")
	private long diaryId;
	
	@Column(name="Title")
	private String title;
	
	@Column(name="Date")
	private String date;
	
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
	
	@OneToMany(mappedBy = "diary",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JsonIgnore
	private List<Comment> commentList;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public long getDiaryId() {
		return diaryId;
	}
	
	public void setDiaryId(long diaryId) {
		this.diaryId = diaryId;
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
	/**
	 * @return the commentList
	 */
	public List<Comment> getCommentList() {
		return commentList;
	}
	/**
	 * @param commentList the commentList to set
	 */
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("DiaryID: "+ diaryId + ";");
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
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
}