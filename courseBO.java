package com.BO;

import com.DAO.courseDAO;
import com.VO.course;

public class courseBO {
	
	public boolean addCourse (course c) {
		boolean status=false; 
		courseDAO dao =new courseDAO();
		courseBO courseObj=new courseBO();
		courseObj.calculateFees(c);
		status=dao.addCourseDetails(c);
		if(status==true)
		{
			status= dao.add1CourseDetails(c);
		}
		return status;
		/*if(status==true) {
			return dao.add1CourseDetails(c);
		} 
		else {
		return dao.addCourseDetails(c);	
		}*/
	}
	

	public void calculateFees (course c) {
		float fees=0;
		String a ="classroom";
		String b ="Elearning";
		String d1 ="D1";
		String d2 ="D2";
		String d3 ="D3";
		
		if(c.getCourseType().equalsIgnoreCase(a)) {
			if(c.getCourseDuration().equalsIgnoreCase(d1)) {
				fees =3000;
			}
			else if(c.getCourseDuration().equalsIgnoreCase(d2)) {
				fees =4000;
			}
				else if(c.getCourseDuration().equalsIgnoreCase(d3)) {
					fees =7000;
				}
			}

		else if(c.getCourseType().equalsIgnoreCase(b)) {
			if(c.getCourseDuration().equalsIgnoreCase(d1)) {
				fees =1000;
			}
			else if(c.getCourseDuration().equalsIgnoreCase(d2)) {
				fees =2000;
			}
			else if(c.getCourseDuration().equalsIgnoreCase(d3)) {
				fees =3000;
			}
		}
		
		c.setCourseFees(fees);
	}
	
	public course retrieveCourse(String code) {
		
		courseDAO obj =new courseDAO();
		return obj.retrieveCourseDetails(code);
	}

}
