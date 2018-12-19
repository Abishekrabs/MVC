package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BO.AdminBO;
import com.VO.admin;

@WebServlet("/admindetails")
public class admindetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		admin ad =new admin();
		ad.setUserId(request.getParameter("userid"));
		ad.setPassword(request.getParameter("password"));
		//System.out.println(ad.getUserId()+" "+ad.getPassword());
		
		HttpSession s =request.getSession();
		
		String user =request.getParameter("userid");
		s.setAttribute("user", user);
		String pass =request.getParameter("password");
		s.setAttribute("pass", pass);
		String rem =request.getParameter("rem");
		s.setAttribute("rem", rem);
		
		AdminBO b =new AdminBO();
		String username=b.getAdmin(ad);
				
		if(username!=null) {
			s.setAttribute("name", username);
			request.getRequestDispatcher("/HomePage.jsp").forward(request, response);			
		}
		else {
			String st ="**UserId and Password does not match**";
			response.sendRedirect("login.jsp?user= " +st);
		}
				
	}

}
