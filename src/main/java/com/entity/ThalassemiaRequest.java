package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ThalassemiaRequest {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String date;
	private String component;
	private String quantity;
	private String bankname;
	private String patientHospitalName;
	private String patientContact;
	private String bloodgroup;
	private String rh;
	private String status;
	@ManyToOne
	private AdminBank adminbank;
	@ManyToOne
	private ThalassemiaPatientRegister thalassemiapatient; 
	
	public ThalassemiaRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThalassemiaRequest(String date, String component, String quantity, String bankname,
			String patientHospitalName, String patientContact, String bloodgroup, String rh, String status,
			AdminBank adminbank, ThalassemiaPatientRegister thalassemiapatient) {
		super();
		this.date = date;
		this.component = component;
		this.quantity = quantity;
		this.bankname = bankname;
		this.patientHospitalName = patientHospitalName;
		this.patientContact = patientContact;
		this.bloodgroup = bloodgroup;
		this.rh = rh;
		this.status = status;
		this.adminbank = adminbank;
		this.thalassemiapatient = thalassemiapatient;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getComponent() {
		return component;
	}

	public void setComponent(String component) {
		this.component = component;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getPatientHospitalName() {
		return patientHospitalName;
	}

	public void setPatientHospitalName(String patientHospitalName) {
		this.patientHospitalName = patientHospitalName;
	}

	public String getPatientContact() {
		return patientContact;
	}

	public void setPatientContact(String patientContact) {
		this.patientContact = patientContact;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public AdminBank getAdminbank() {
		return adminbank;
	}

	public void setAdminbank(AdminBank adminbank) {
		this.adminbank = adminbank;
	}

	public ThalassemiaPatientRegister getThalassemiapatient() {
		return thalassemiapatient;
	}

	public void setThalassemiapatient(ThalassemiaPatientRegister thalassemiapatient) {
		this.thalassemiapatient = thalassemiapatient;
	}

	@Override
	public String toString() {
		return "ThalassemiaRequest [id=" + id + ", date=" + date + ", component=" + component + ", quantity=" + quantity
				+ ", bankname=" + bankname + ", patientHospitalName=" + patientHospitalName + ", patientContact="
				+ patientContact + ", bloodgroup=" + bloodgroup + ", rh=" + rh + ", status=" + status + ", adminbank="
				+ adminbank + ", thalassemiapatient=" + thalassemiapatient + "]";
	}

	
}
