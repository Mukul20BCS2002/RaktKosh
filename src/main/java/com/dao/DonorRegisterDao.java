package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Donor;

public class DonorRegisterDao {

	private SessionFactory sessionfactory;
	private Transaction transaction;
	private Session session;
	public DonorRegisterDao(SessionFactory sessionfactory) {
		// TODO Auto-generated constructor stub
		this.sessionfactory = sessionfactory;
	}
	public boolean saveDonor(Donor donor) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.save(donor);
			transaction.commit();
			flag = true;
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
	public Donor getDonor(String email, String password) {
		// TODO Auto-generated method stub
		Donor donor = null;
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("from Donor where email=:email and password=:password");
			q.setParameter("email",email);
			q.setParameter("password",password);
			donor = (Donor) q.uniqueResult();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return donor;
	}
	public boolean updateDonor(Donor donor) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.update(donor);
			transaction.commit();
			flag = true;
		}
		catch (Exception e) {
			// TODO: handle exception
			if(session!=null)
			{
				flag = false;
			}
			e.printStackTrace();
		}
		return flag;
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
	
}
