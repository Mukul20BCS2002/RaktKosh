package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminBankRegisterDao;
import com.db.HibernateUtil;
import com.entity.AdminBank;

@WebServlet("/searchadminbank")
public class SeachAdminBankServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		AdminBankRegisterDao abrdao = new AdminBankRegisterDao(HibernateUtil.getSessionFactory());
		List<AdminBank> banklist = abrdao.getAllBank(state, district);
		System.out.print(banklist);
		HttpSession session = req.getSession();
		if(banklist.isEmpty())
		{
			session.setAttribute("msg","Bank not found fot this location");
			resp.sendRedirect("donor/donorRepository.jsp");
		}
		else
		{
			session.setAttribute("banklist",banklist);
			resp.sendRedirect("donor/donorRepository.jsp");
		}
	}
	
}
