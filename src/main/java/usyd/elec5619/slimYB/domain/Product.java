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
@Table(name="Product")
public class Product implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private long id;
	
	@ManyToOne
	@JoinColumn(name="userId")
	private User userId;
	
	@Column(name="Password")
	private String password;

	public long getId() {
		return id;
	}
}
