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

@WebServlet("/thalassemiaLogin")
public class ThalassemiaPatientLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		ThalassemiaPatientRegisterDao tprdao = new ThalassemiaPatientRegisterDao(HibernateUtil.getSessionFactory());
		ThalassemiaPatientRegister thalassemiapatient = tprdao.getThalassemiaPatient(email,password);
		HttpSession session = req.getSession();
		if(thalassemiapatient==null)
		{
			session.setAttribute("msg","Invalid Email or Password");
			resp.sendRedirect("thalassemiaLogin.jsp");
		}
		else
		{
			session.setAttribute("thalassemiapatient",thalassemiapatient);
			resp.sendRedirect("thalassemia/thalassemiaPatientHome.jsp");
		}
	}	
}
