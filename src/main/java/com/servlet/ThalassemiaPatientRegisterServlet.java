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


@WebServlet("/thalassemiaRegister")
public class ThalassemiaPatientRegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String guardianname = req.getParameter("guardianname");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		String pincode = req.getParameter("pincode");
		String contact = req.getParameter("contact");
		String password = req.getParameter("password");
		String hospitaltype = req.getParameter("hospitaltype");
		String hospitalname = req.getParameter("hospitalname");
		String bloodtakenprev = req.getParameter("bloodtakenprev");
		String bloodgroup = req.getParameter("bloodgroup");
		String rh = req.getParameter("rh");
		String component = req.getParameter("component");

		ThalassemiaPatientRegister tpregister = new ThalassemiaPatientRegister(firstname, lastname, guardianname, dob, gender, email,
				state, district, pincode, contact, password, hospitaltype, hospitalname, bloodtakenprev, bloodgroup, rh,
				component);
		System.out.print(tpregister);
		ThalassemiaPatientRegisterDao trdao= new ThalassemiaPatientRegisterDao(HibernateUtil.getSessionFactory());
		boolean flag = trdao.saveThalassemiaPatient(tpregister);
		HttpSession session = req.getSession();
		if(flag)
		{
			resp.sendRedirect("thalassemiaLogin.jsp");
		}
		else
		{
			session.setAttribute("msg","Something went wrong");
			resp.sendRedirect("thalassemiaLogin.jsp");
		}
	}
}
