package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.AdminBank;
import com.entity.ThalassemiaRequest;

public class ThalassemiaRequestDao {
	
	private SessionFactory sessionfactory;
	private Transaction transaction;
	private Session session;
	
	public ThalassemiaRequestDao(SessionFactory sessionfactory) {
		// TODO Auto-generated constructor stub
		this.sessionfactory=sessionfactory;
	}

	public boolean saveThalassemiaRequest(ThalassemiaRequest thalassemiarequest) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.save(thalassemiarequest);
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
	public List<ThalassemiaRequest> getAllThalassemiaRequestById(int thalassemiapatient_id)
	{
		List<ThalassemiaRequest> threquest = new ArrayList<ThalassemiaRequest>();
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("from ThalassemiaRequest where thalassemiapatient_id=:thalassemiapatient_id");
			q.setParameter("thalassemiapatient_id", thalassemiapatient_id);
			threquest = q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return threquest;
	}
	public List<ThalassemiaRequest> getAllBankRequestById(int adminbank_id,String status)
	{
		List<ThalassemiaRequest> banklist = new ArrayList<ThalassemiaRequest>();
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("from ThalassemiaRequest where adminbank_id=:adminbank_id and status=:status");
			q.setParameter("adminbank_id",adminbank_id);
			q.setParameter("status",status);
			banklist = q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return banklist;
	}

	public ThalassemiaRequest getThalassemiaRequestById(int id) {
		// TODO Auto-generated method stub
		ThalassemiaRequest thalassemiaRequest = null;
		try
		{
			session = sessionfactory.openSession();
			thalassemiaRequest = session.get(ThalassemiaRequest.class,id);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return thalassemiaRequest;
	}

	public boolean updateThalassemiaRequest(ThalassemiaRequest thalassemiarequest) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.update(thalassemiarequest);
			transaction.commit();
			flag = true;
		}
		catch (Exception e) {
			// TODO: handle exception
			if(transaction!=null)
			{
				transaction.rollback();
				flag = false;
			}
		}
		return flag;
	}

}
