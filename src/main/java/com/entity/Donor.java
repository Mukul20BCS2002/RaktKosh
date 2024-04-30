package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Donor {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String age;
	private String gender;
	private String contact;
	private String state;
	private String district;
	private String pincode;
	private String address;
	private String email;
	private String password;
	private String bloodgroup;
	private String maritailstatus;
	private String occupation;
	private String dob;
	private String religion;
	
	
	
	public Donor(int id, String name, String age, String gender, String contact, String state, String district,
			String pincode, String address, String email, String password, String bloodgroup, String maritailstatus,
			String occupation, String dob, String religion) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.contact = contact;
		this.state = state;
		this.district = district;
		this.pincode = pincode;
		this.address = address;
		this.email = email;
		this.password = password;
		this.bloodgroup = bloodgroup;
		this.maritailstatus = maritailstatus;
		this.occupation = occupation;
		this.dob = dob;
		this.religion = religion;
	}
	public Donor(String name, String age, String gender,String bloodgroup, String contact, String state, String district, String pincode,
			String address, String email, String password) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.bloodgroup=bloodgroup;
		this.contact = contact;
		this.state = state;
		this.district = district;
		this.pincode = pincode;
		this.address = address;
		this.email = email;
		this.password = password;
	}
	public Donor() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getMaritailstatus() {
		return maritailstatus;
	}
	public void setMaritailstatus(String maritailstatus) {
		this.maritailstatus = maritailstatus;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	@Override
	public String toString() {
		return "Donor [id=" + id + ", name=" + name + ", age=" + age + ", gender=" + gender + ", contact=" + contact
				+ ", state=" + state + ", district=" + district + ", pincode=" + pincode + ", address=" + address
				+ ", email=" + email + ", password=" + password + ", bloodgroup=" + bloodgroup + ", maritailstatus="
				+ maritailstatus + ", occupation=" + occupation + ", dob=" + dob + ", religion=" + religion + "]";
	}
	
	
	
}
