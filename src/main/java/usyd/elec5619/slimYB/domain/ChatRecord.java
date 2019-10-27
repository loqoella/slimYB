package usyd.elec5619.slimYB.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="ChatRecord")
public class ChatRecord implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long Id;

	@Column(name="senderId")
	private long senderId;
	
	@Column(name="receiveId")
	private long receiveId;

	@Column(name="content")
	private String content;
	
	@Column(name="sendTime")
	private String sendTime;

	public long getId() {
		return Id;
	}

	public void setId(long id) {
		Id = id;
	}

	public long getSenderId() {
		return senderId;
	}

	public void setSenderId(long senderId) {
		this.senderId = senderId;
	}

	public long getReceiveId() {
		return receiveId;
	}

	public void setReceiveId(long receiveId) {
		this.receiveId = receiveId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSendTime() {
		return sendTime;
	}

	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
}
