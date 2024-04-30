package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DonorRegisterDao;
import com.db.HibernateUtil;
import com.entity.Donor;

@WebServlet("/donorRegister")
public class DonorRegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String bloodgroup  = req.getParameter("bloodgroup");
		String contact = req.getParameter("contact");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		String pincode = req.getParameter("pincode");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Donor donor = new Donor(name,age,gender,bloodgroup,contact,state,district,pincode,address,email,password);
		DonorRegisterDao drdao = new DonorRegisterDao(HibernateUtil.getSessionFactory());
		boolean flag = drdao.saveDonor(donor);
		HttpSession session = req.getSession();
		if(flag)
		{
			resp.sendRedirect("donorLogin.jsp");
		}
		else
		{
			session.setAttribute("msg","Something went wrong");
			resp.sendRedirect("donorRegister.jsp");
		}
	}
	
}
