package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ValueGenerationType;

@Entity
public class AdminBank {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String category;
	private String person;
	
	@Column(nullable = false, unique = true)
	private String email;
	private String password;
	private String contact;
	private String state;
	private String district;
	private String pincode;
	private String address;
	
	public AdminBank() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminBank(String name, String category, String person, String email, String password, String contact,
			String state, String district, String pincode, String address) {
		super();
		this.name = name;
		this.category = category;
		this.person = person;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.state = state;
		this.district = district;
		this.pincode = pincode;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "AdminBank [id=" + id + ", name=" + name + ", category=" + category + ", person=" + person + ", email="
				+ email + ", password=" + password + ", contact=" + contact + ", state=" + state + ", district="
				+ district + ", pincode=" + pincode + ", address=" + address + "]";
	}
	
	
}
