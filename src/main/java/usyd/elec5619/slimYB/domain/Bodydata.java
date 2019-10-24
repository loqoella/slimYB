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
@Table(name="Bodydata")
public class Bodydata implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@ManyToOne
    @JoinColumn(name = "UserId")
    private User user;
	
	@Column(name="Height")
	private String height;
	
	@Column(name="Weight")
	private String weight;

	@Column(name="Bust")
	private String bust;
	
	@Column(name="Waist")
	private String waist;
	

	@Column(name="Hips")
	private String hips;

	public long getId() {
		return id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getBust() {
		return bust;
	}

	public void setBust(String bust) {
		this.bust = bust;
	}

	public String getWaist() {
		return waist;
	}

	public void setWaist(String waist) {
		this.waist = waist;
	}

	public String getHips() {
		return hips;
	}

	public void setHips(String hips) {
		this.hips = hips;
	}
	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Height: " + height + ";");
		buffer.append("Weight: " + weight + ";");
		buffer.append("Bust: " + bust + ";");
		buffer.append("Waist: " + waist + ";");
		buffer.append("Hips: " + hips + ";");
		return buffer.toString();
	}
}
