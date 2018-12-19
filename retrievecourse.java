package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BO.courseBO;
import com.VO.course;

@WebServlet("/retrievecourse")
public class retrievecourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code =request.getParameter("ccode");
		
		courseBO b =new courseBO();
		course courseObj =b.retrieveCourse(code);
		//System.out.println(object);
		
		if(courseObj!=null) {
			request.setAttribute("ab", courseObj);
			request.getRequestDispatcher("display.jsp").forward(request, response);
		}
		else {
			String a ="Course Code not found ";
			response.sendRedirect("RetrieveCourse?er= " +a);
		}
	}

}
