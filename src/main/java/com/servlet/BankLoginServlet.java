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

@WebServlet("/adminLogin")
public class BankLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		AdminBankRegisterDao abrdao = new AdminBankRegisterDao(HibernateUtil.getSessionFactory());
		AdminBank adminbank = abrdao.getBank(email,password);
		
		HttpSession session = req.getSession();
		if(adminbank==null)
		{
			session.setAttribute("msg","Invalid Email or Password");
			resp.sendRedirect("login.jsp");
		}
		else
		{
			session.setAttribute("adminbank",adminbank);
			resp.sendRedirect("admin/home.jsp");
		}
	}
	
}
