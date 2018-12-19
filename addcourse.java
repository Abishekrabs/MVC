package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BO.courseBO;
import com.VO.course;

@WebServlet("/addcourse")
public class addcourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		course c =new course();
		c.setCourseCode(request.getParameter("ccode"));
		c.setCourseName(request.getParameter("cname"));
		c.setCourseDesc(request.getParameter("cdesc"));
		c.setParticipantCount(request.getParameter("past"));
		c.setCourseType(request.getParameter("type"));
		c.setCourseDuration(request.getParameter("duration"));
		
		courseBO bo =new courseBO();
		boolean stat =bo.addCourse(c);
		
		HttpSession s =request.getSession();
		
		/*if(status ==true) {
			//bo.add1Course(c);
		}*/
		if(stat ==true) {
			String a ="Course Successfully Added in the System" ;
			s.setAttribute("msg", a);
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}
		else {
			String st =" **Insertion Error** ";
			s.setAttribute("er", st);
			response.sendRedirect("AddCourse.jsp?ad= " +st);
		}
		
		
	}

}
