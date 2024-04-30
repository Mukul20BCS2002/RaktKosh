package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.AdminBank;
import com.entity.Donor;
import com.entity.DonorRepository;

public class DonorRepositoryDao {
	private SessionFactory sessionfactory;
	private Transaction transaction;
	private Session session;
	
	public DonorRepositoryDao(SessionFactory sessionfactory) {
		// TODO Auto-generated constructor stub
		this.sessionfactory = sessionfactory;
	}
	
	public Donor getDonorById(int donorId) {
		// TODO Auto-generated method stub
		Donor donor = null;
		try
		{
			session = sessionfactory.openSession();
			donor = session.get(Donor.class,donorId);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return donor;
	}
	
	public AdminBank getBankById(int id) {
		// TODO Auto-generated method stub
		AdminBank adminbank = null;
		try
		{
			session = sessionfactory.openSession();
			adminbank = session.get(AdminBank.class,id);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return adminbank;
	}

	public boolean saveDonorRepo(DonorRepository donorRepo) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.save(donorRepo);
			transaction.commit();
			flag=true;
		}
		catch (Exception e) {
			// TODO: handle exception
			if(transaction!=null)
			{
				flag = false;
			}
			e.printStackTrace();
		}
		return flag;
	}
	
	public List<Donor> getAllDonor(int adminbank_id)
	{
		List<Donor> donorlist = new ArrayList<Donor>();
		List<Integer>list = new ArrayList<Integer>();
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("SELECT dr.donor FROM DonorRepository dr WHERE dr.adminbank.id = :adminbank_id", Donor.class);
			q.setParameter("adminbank_id",adminbank_id);
			donorlist = q.list();
			System.out.print("Donor List: "+donorlist);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return donorlist;
	}
}
