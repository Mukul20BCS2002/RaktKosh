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

@WebServlet("/manageProfile")
public class manageProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		int id = Integer.parseInt(req.getParameter("id"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String contact = req.getParameter("contact");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		String pincode = req.getParameter("pincode");
		String address = req.getParameter("address");
		String bloodgroup = req.getParameter("bloodgroup");
		String maritialstatus = req.getParameter("maritialstatus");
		String religion = req.getParameter("religion");
		String occupation = req.getParameter("occupation");
		
		DonorRegisterDao drdao = new DonorRegisterDao(HibernateUtil.getSessionFactory());
		Donor donor = drdao.getDonorById(id);
		boolean flag = false;
		if(donor!=null)
		{
			donor.setEmail(email);
			donor.setPassword(password);
			donor.setName(name);
			donor.setAge(age);
			donor.setDob(dob);
			donor.setGender(gender);
			donor.setContact(contact);
			donor.setState(state);
			donor.setDistrict(district);
			donor.setPincode(pincode);
			donor.setAddress(address);
			donor.setBloodgroup(bloodgroup);
			donor.setMaritailstatus(maritialstatus);
			donor.setReligion(religion);
			donor.setOccupation(occupation);
			flag = drdao.updateDonor(donor);
		}
		HttpSession session = req.getSession();
		
		if (flag) {
			session.setAttribute("msg", "Profile Saved Successfully");
			resp.sendRedirect("donor/manageProfile.jsp");
		} else {
			session.setAttribute("msg", "Something went wrong! Try Again");
			resp.sendRedirect("donor/manageProfile.jsp");
		}
	}
}
