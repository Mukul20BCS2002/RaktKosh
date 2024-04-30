package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.AdminBank;

public class AdminBankRegisterDao {
	private SessionFactory sessionfactory;
	private Transaction transaction;
	private Session session;
	
	public AdminBankRegisterDao(SessionFactory sessionfactory) {
		// TODO Auto-generated constructor stub
		this.sessionfactory = sessionfactory;
	}

	public boolean saveBank(AdminBank adminbank) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.save(adminbank);
			transaction.commit();
			flag = true;
		}
		catch (Exception e) {
			// TODO: handle exception
			if(transaction!=null)
			{
				flag = false;
				e.printStackTrace();
			}
		}
		return flag;
	}

	public AdminBank getBank(String email, String password) {
		// TODO Auto-generated method stub
		AdminBank adminbank = null;
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("from AdminBank where email=:email and password=:password");
			q.setParameter("email",email);
			q.setParameter("password",password);
			adminbank = (AdminBank) q.uniqueResult();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return adminbank;
	}

	public List<AdminBank> getAllBank(String state, String district) {
		// TODO Auto-generated method stub
		List<AdminBank>banklist = new ArrayList<AdminBank>();
		try
		{
			session  = sessionfactory.openSession();
			Query q = session.createQuery("from AdminBank where state=:state and district=:district");
			q.setParameter("state",state);
			q.setParameter("district",district);
			banklist = q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return banklist;
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
}
