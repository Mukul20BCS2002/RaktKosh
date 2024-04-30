package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminBankRegisterDao;
import com.dao.DonorRegisterDao;
import com.dao.DonorRepositoryDao;
import com.db.HibernateUtil;
import com.entity.AdminBank;
import com.entity.Donor;
import com.entity.DonorRepository;

@WebServlet("/savedonorrepo")
public class SaveDonorRepoServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		int bankId = Integer.parseInt(req.getParameter("bankId"));
		int donorId = Integer.parseInt(req.getParameter("donorId"));
		System.out.println("DonorId is: " + donorId);
		DonorRepositoryDao donorrepordao = new DonorRepositoryDao(HibernateUtil.getSessionFactory());
		AdminBank adminbank = donorrepordao.getBankById(bankId);

		Donor donor = donorrepordao.getDonorById(donorId);

		DonorRepository donorRepo = new DonorRepository(donor, adminbank);
		boolean flag = donorrepordao.saveDonorRepo(donorRepo);
		System.out.print(flag);

		System.out.print(donor+" "+adminbank);
		resp.sendRedirect("donor/donorHome.jsp");
	}

}
