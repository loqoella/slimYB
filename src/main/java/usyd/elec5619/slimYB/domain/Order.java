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
@Table(name="Order")
public class Order implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@ManyToOne
	@JoinColumn(name="BuyerId")
	private User buyerId;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="OrderTime")
	private Date orderTime;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="LastUpdateTime")
	private Date lastUpdateTime;
	
	@Column(name="Status")
	private String status;
	
	@Column(name="TotalPrice")
	private double totalPrice;
		
	@Column(name="ItemCount")
	private long itemCount;
	
	@PrePersist
    protected void onCreate() {
		orderTime = new Date();
		lastUpdateTime = new Date();
    }
	
	@PreUpdate
    protected void onUpdate() {
		lastUpdateTime = new Date();
    }

	public User getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(User buyerId) {
		this.buyerId = buyerId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public long getItemCount() {
		return itemCount;
	}

	public void setItemCount(long itemCount) {
		this.itemCount = itemCount;
	}
}
