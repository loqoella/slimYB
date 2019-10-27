package usyd.elec5619.slimYB.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.GeneratedValue;

@Entity
@Table(name="ItemComment")
public class ItemComment implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@ManyToOne
	@JoinColumn(name="Userid")
	private User userId;
	
	@ManyToOne
	@JoinColumn(name="ProductId")
	private Product productId;
	
	@Column(name="Comment")
	private String comment;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="CommentTime")
	private Date commentTime;
	
	@PrePersist
    protected void onCreate() {
		commentTime = new Date();
    }
	
	@PreUpdate
    protected void onUpdate() {
		commentTime = new Date();
    }

	public long getId() {
		return id;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public Product getProductId() {
		return productId;
	}

	public void setProductId(Product productId) {
		this.productId = productId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
