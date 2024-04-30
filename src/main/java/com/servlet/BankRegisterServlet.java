package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminBankRegisterDao;
import com.db.HibernateUtil;
import com.entity.AdminBank;

@WebServlet("/adminRegister")
public class BankRegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String name = req.getParameter("name");
		String category = req.getParameter("category");
		String person = req.getParameter("person");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String contact = req.getParameter("contact");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		String pincode = req.getParameter("pincode");
		String address = req.getParameter("address");
		
		AdminBank adminbank = new AdminBank(name,category,person,email,password,contact,state,district,pincode,address);
		AdminBankRegisterDao abrdao = new AdminBankRegisterDao(HibernateUtil.getSessionFactory());
		boolean flag = abrdao.saveBank(adminbank);
		HttpSession session = req.getSession();
		if(flag)
		{
			session.setAttribute("msg","Blood Bank Added Successfully");
			resp.sendRedirect("register.jsp");
		}
		else
		{
			session.setAttribute("msg","Something went wrong");
			resp.sendRedirect("register.jsp");
		}
	}
	
}
