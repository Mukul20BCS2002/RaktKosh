package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ThalassemiaRequestDao;
import com.db.HibernateUtil;
import com.entity.ThalassemiaRequest;

@WebServlet("/removethalassemiarequest")
public class RemoveThalassemiaRequest extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		int id = Integer.parseInt(req.getParameter("id"));
		ThalassemiaRequestDao trdao = new ThalassemiaRequestDao(HibernateUtil.getSessionFactory());
		ThalassemiaRequest thalassemiarequest = trdao.getThalassemiaRequestById(id);
		boolean flag = false;
		if(thalassemiarequest!=null)
		{
			thalassemiarequest.setStatus("Remove");
			flag = trdao.updateThalassemiaRequest(thalassemiarequest);
		}
		HttpSession session = req.getSession();
		if(flag)
		{
			session.setAttribute("msg","Blood Request Removed Successfully");
			resp.sendRedirect("admin/bloodRequest.jsp");
		}
		else
		{
			session.setAttribute("msg","Unable to Remove");
			resp.sendRedirect("admin/bloodRequest.jsp");
		}
	}
}
