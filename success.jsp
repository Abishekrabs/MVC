<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
if(session.getAttribute("user")==null) {
	request.getRequestDispatcher("login.jsp").forward(request, response);
}
else {

%>

<div>
<%@ include file="hmcr.jsp" %>
</div>

<div id="header">
<%@ include file="header.jsp" %>
</div>

   <%
   String a =session.getAttribute("msg").toString();
   %>
   
   </br></br>
   
   <h1 align="center"><font color="red"><%= a %></font></h1>
   
<div id="footer"></br></br></br></br></br></br></br></br></br></br></br>
<%@ include file="footer.jsp" %>
</div>
   
<% } %>   
</body>
</html>