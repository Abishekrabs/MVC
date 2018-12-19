<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Course</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body >

<%
//String user =session.getAttribute("user").toString();
   if(session.getAttribute("user")==null) {
	   request.getRequestDispatcher("login.jsp").forward(request, response);
   }
   else {

%>

<div>
<%@ include file="retcr.jsp" %>
</div>

<div id="header">
<%@ include file="header.jsp" %>
</div>


<form action="retrievecourse" method="post">
<div class="col-sm-3"></div>
<div class="col-sm-6">
</br></br>
<h2 align="center">Retrieve Course</h2>

<%
  String ad =request.getParameter("er");

   if(ad!=null) {
	   out.print(ad);
   }
%>

<div class="form-group">
<label for="ccode">Course Code</label>
<input type="text" class="form-control" name="ccode" placeholder="Enter Course_Code" required></br>
</div>

<input type="submit" class="btn btn-primary" value="Retrieve Course"> 
&nbsp&nbsp&nbsp&nbsp
<button type="reset" type="submit" class="btn btn-primary">Reset</button>
</br></br>

<div id="footer"></br></br></br></br></br></br></br></br>
<%@ include file="footer.jsp" %>
</div>

</div>
</form>
<% } %>
</body>
</html>