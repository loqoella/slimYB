package usyd.elec5619.slimYB.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="Delivery")
public class Delivery implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@ManyToOne
	@JoinColumn(name="OrderId")
	private Order orderId;

	@Column(name="Name")
	private String name;

	@Column(name="PhoneNumber")
	private String phoneNumber;

	@Column(name="Address1")
	private String address1;

	@Column(name="Address2")
	private String address2;

	@Column(name="City")
	private String city;

	@Column(name="State")
	private String state;

	@Column(name="PoseCode")
	private String postCode;

	@Column(name="Status")
	private String status;

	public Order getOrderId() {
		return orderId;
	}

	public void setOrderId(Order orderId) {
		this.orderId = orderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getId() {
		return id;
	}
}
