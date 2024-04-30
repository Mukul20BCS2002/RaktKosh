package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.ThalassemiaPatientRegister;

public class ThalassemiaPatientRegisterDao {
	private SessionFactory sessionfactory;
	private Transaction transaction;
	private Session session;
	public ThalassemiaPatientRegisterDao(SessionFactory sessionfactory) {
		// TODO Auto-generated constructor stub
		this.sessionfactory = sessionfactory;
	}
	public boolean saveThalassemiaPatient(ThalassemiaPatientRegister tpregister) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.save(tpregister);
			transaction.commit();
			flag = true;
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
	}
	public ThalassemiaPatientRegister getThalassemiaPatient(String email, String password) {
		// TODO Auto-generated method stub
		ThalassemiaPatientRegister thalassemiapatient = null;
		try
		{
			session = sessionfactory.openSession();
			Query q = session.createQuery("from ThalassemiaPatientRegister where email=:email and password=:password");
			q.setParameter("email",email);
			q.setParameter("password",password);
			thalassemiapatient = (ThalassemiaPatientRegister) q.uniqueResult();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return thalassemiapatient;
	}
	public ThalassemiaPatientRegister getThalassemiaPatientById(int id) {
		// TODO Auto-generated method stub
		ThalassemiaPatientRegister patientregister = null;
		try
		{
			session = sessionfactory.openSession();
			patientregister = session.get(ThalassemiaPatientRegister.class,id);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return patientregister;
	}
	public boolean updateThalassemiaPatient(ThalassemiaPatientRegister patientregister) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try
		{
			session = sessionfactory.openSession();
			transaction = session.beginTransaction();
			session.update(patientregister);
			transaction.commit();
			flag = true;
		}
		catch (Exception e) {
			// TODO: handle exception
			if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            flag = false;
		}
		return flag;
	}

}
