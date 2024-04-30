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

@WebServlet("/donorLogin")
public class DonorLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		DonorRegisterDao drdao = new DonorRegisterDao(HibernateUtil.getSessionFactory());
		Donor donor = drdao.getDonor(email,password);
		HttpSession session = req.getSession();
		if(donor == null)
		{
			session.setAttribute("msg","Invalid Email or Password");
			resp.sendRedirect("donorLogin.jsp");
		}
		else
		{
			session.setAttribute("donor",donor);
			resp.sendRedirect("donor/donorHome.jsp");
		}
	}
	
}
