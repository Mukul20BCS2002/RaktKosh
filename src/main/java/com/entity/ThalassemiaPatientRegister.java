package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ThalassemiaPatientRegister {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String firstname;
	private String lastname;
	private String guardianname;
	private String dob;
	private String gender;
	private String email;
	private String state;
	private String district;
	private String pincode;
	private String contact;
	private String password;
	private String hospitaltype;
	private String hospitalname;
	private String bloodtakenprev;
	private String bloodgroup;
	private String rh;
	private String component;
	
	

	public ThalassemiaPatientRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThalassemiaPatientRegister(String firstname, String lastname, String guardianname, String dob, String gender,
			String email, String state, String district, String pincode, String contact, String password,
			String hospitaltype, String hospitalname, String bloodtakenprev, String bloodgroup, String rh,
			String component) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.guardianname = guardianname;
		this.dob = dob;
		this.gender = gender;
		this.email = email;
		this.state = state;
		this.district = district;
		this.pincode = pincode;
		this.contact = contact;
		this.password = password;
		this.hospitaltype = hospitaltype;
		this.hospitalname = hospitalname;
		this.bloodtakenprev = bloodtakenprev;
		this.bloodgroup = bloodgroup;
		this.rh = rh;
		this.component = component;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGuardianname() {
		return guardianname;
	}

	public void setGuardianname(String guardianname) {
		this.guardianname = guardianname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHospitaltype() {
		return hospitaltype;
	}

	public void setHospitaltype(String hospitaltype) {
		this.hospitaltype = hospitaltype;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getBloodtakenprev() {
		return bloodtakenprev;
	}

	public void setBloodtakenprev(String bloodtakenprev) {
		this.bloodtakenprev = bloodtakenprev;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getRh() {
		return rh;
	}

	public void setRh(String rh) {
		this.rh = rh;
	}

	public String getComponent() {
		return component;
	}

	public void setComponent(String component) {
		this.component = component;
	}

	@Override
	public String toString() {
		return "ThalassemiaRequestServlet [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", guardianname=" + guardianname + ", dob=" + dob + ", gender=" + gender + ", email=" + email
				+ ", state=" + state + ", district=" + district + ", pincode=" + pincode + ", contact=" + contact
				+ ", password=" + password + ", hospitaltype=" + hospitaltype + ", hospitalname=" + hospitalname
				+ ", bloodtakenprev=" + bloodtakenprev + ", bloodgroup=" + bloodgroup + ", rh=" + rh + ", component="
				+ component + "]";
	}
	
}
