package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminBankRegisterDao;
import com.dao.ThalassemiaPatientRegisterDao;
import com.dao.ThalassemiaRequestDao;
import com.db.HibernateUtil;
import com.entity.AdminBank;
import com.entity.ThalassemiaPatientRegister;
import com.entity.ThalassemiaRequest;

@WebServlet("/thalassemiaRequest")
public class ThalassemiaRequestServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		int id = Integer.parseInt(req.getParameter("bankname"));
		int patientId = Integer.parseInt(req.getParameter("patientId"));
		
		AdminBankRegisterDao abrdao = new AdminBankRegisterDao(HibernateUtil.getSessionFactory());
		AdminBank adminbank = abrdao.getBankById(id);
		
		ThalassemiaPatientRegisterDao tprdao = new ThalassemiaPatientRegisterDao(HibernateUtil.getSessionFactory());
		ThalassemiaPatientRegister patientregister = tprdao.getThalassemiaPatientById(patientId);
		
		String date = req.getParameter("date");
		String component = req.getParameter("component");
		String quantity = req.getParameter("quantity");
		String bankname = adminbank.getName();
		String patientHospitalName = patientregister.getHospitalname();
		String patientContact = patientregister.getContact();
		String bloodgroup = req.getParameter("bloodgroup");
		String rh = req.getParameter("rh");
		String status = req.getParameter("status");
		
		ThalassemiaRequest thalassemiarequest = new ThalassemiaRequest(date, component, quantity, bankname,patientHospitalName,patientContact, bloodgroup,
				rh,status,adminbank, patientregister);
		
		ThalassemiaRequestDao trdao = new ThalassemiaRequestDao(HibernateUtil.getSessionFactory());
		boolean flag = trdao.saveThalassemiaRequest(thalassemiarequest);
		
		HttpSession session = req.getSession();
		
		if (flag) {
			session.setAttribute("msg", "Request Send Successfully");
			resp.sendRedirect("thalassemia/thalassemiaRequest.jsp");
		} else {
			session.setAttribute("msg", "Something went wrong!! Try Again");
			resp.sendRedirect("thalassemia/thalassemiaRequest.jsp");
		}

	}

}
