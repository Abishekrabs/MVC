<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% 
HttpSession s =request.getSession();

if(s.getAttribute("rem")!=null) {
	Cookie u=new Cookie("user", s.getAttribute("user").toString());
	Cookie p =new Cookie("pass", s.getAttribute("pass").toString());
	Cookie r =new Cookie("rem", s.getAttribute("rem").toString());
	u.setMaxAge(60*60*24*1);
	p.setMaxAge(60*60*24*1);
	r.setMaxAge(60*60*24*1);
	response.addCookie(u);
	response.addCookie(p);
	response.addCookie(r);
	response.sendRedirect("login.jsp");
}
else {

Cookie u=new Cookie("user", null);
Cookie p =new Cookie("pass", null);
Cookie r =new Cookie("rem", null);
u.setMaxAge(0);
p.setMaxAge(0);
r.setMaxAge(0);
response.addCookie(u);
response.addCookie(p);
response.addCookie(r);
s.invalidate();
response.sendRedirect("login.jsp");
}
%>

</body>
</html>