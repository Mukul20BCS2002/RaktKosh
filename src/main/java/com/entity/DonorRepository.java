package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GeneratorType;

@Entity
public class DonorRepository {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	@ManyToOne
	Donor donor;
	@ManyToOne
	AdminBank adminbank;
	public DonorRepository() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DonorRepository(Donor donor, AdminBank adminbank) {
		super();
		this.donor = donor;
		this.adminbank = adminbank;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Donor getDonor() {
		return donor;
	}
	public void setDonor(Donor donor) {
		this.donor = donor;
	}
	public AdminBank getAdminbank() {
		return adminbank;
	}
	public void setAdminbank(AdminBank adminbank) {
		this.adminbank = adminbank;
	}
	@Override
	public String toString() {
		return "DonorRepository [id=" + id + ", donor=" + donor + ", adminbank=" + adminbank + "]";
	}
	
	
}
