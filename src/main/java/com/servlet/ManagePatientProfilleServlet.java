package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ThalassemiaPatientRegisterDao;
import com.db.HibernateUtil;
import com.entity.ThalassemiaPatientRegister;

@WebServlet("/managethalassemiapatientProfile")
public class ManagePatientProfilleServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		int id = Integer.parseInt(req.getParameter("id"));
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String guardianname = req.getParameter("guardianname");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		String pincode = req.getParameter("pincode");
		String bloodgroup = req.getParameter("bloodgroup");
		String contact = req.getParameter("contact");
		ThalassemiaPatientRegisterDao tprdao = new ThalassemiaPatientRegisterDao(HibernateUtil.getSessionFactory());
		ThalassemiaPatientRegister patientregister = tprdao.getThalassemiaPatientById(id);
		boolean flag = false;
		if(patientregister!=null)
		{
			patientregister.setFirstname(firstname);
			patientregister.setLastname(lastname);
			patientregister.setGuardianname(guardianname);
			patientregister.setDob(dob);
			patientregister.setGender(gender);
			patientregister.setFirstname(firstname);
			patientregister.setEmail(email);
			patientregister.setState(state);
			patientregister.setDistrict(district);
			patientregister.setPincode(pincode);
			patientregister.setBloodgroup(bloodgroup);
			patientregister.setContact(contact);
			System.out.print(patientregister);
			flag = tprdao.updateThalassemiaPatient(patientregister);
		}
		HttpSession session = req.getSession();
		if(flag)
		{
			session.setAttribute("msg","Details Saved");
			resp.sendRedirect("thalassemia/thalassemiaPatientManageProfile.jsp");
		}
		else
		{
			session.setAttribute("msg","Somethis Went Wrong!! Try Again");
			resp.sendRedirect("thalassemia/thalassemiaPatientManageProfile.jsp");
		}
	}
}
