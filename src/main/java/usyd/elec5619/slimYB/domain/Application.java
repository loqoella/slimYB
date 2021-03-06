package usyd.elec5619.slimYB.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;

@Entity
@Table(name="Application")
public class Application implements Serializable {
	
	@Id
	@GeneratedValue	
	@Column(name="Id")
	private int id;
	
	@Column(name="Title")
	private String title;
	
	@Column(name="Tag")
	private String tag;
	
	@Column(name="User")
	private String user;
	
	@Column(name="Content",length=2655)
	private String content;
	
	
	public int getId() {
		return id;
	}
	
	public String getUser() {
		return user;
	}


	public void setUser(String user) {
		this.user = user;
	}

	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}

	
	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}
	
	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Application getApplication() {
		return this;
	}
	

	
	public String toString() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("Id: " + id + ";");
		buffer.append("Tag: " + tag + ";");
		buffer.append("Title: " + title + ";");		
		return buffer.toString();
	}

	
}

