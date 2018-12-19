package com.BO;

import com.DAO.AdminDAO;
import com.VO.admin;

public class AdminBO {
	public String getAdmin(admin ad) {
		
	AdminDAO a =new AdminDAO();
	return a.getAdminDetails(ad);
	
	}
	

}
