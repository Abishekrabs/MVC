<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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


<nav class="navbar navbar-inverse">

<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
</button>
</div>

<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav">
<li class="active"><a href="HomePage.jsp">Home</a></li>
<li><a href="AddCourse.jsp">Add Course</a></li>
<li><a href="RetrieveCourse.jsp">Retrieve Course</a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</ul>
</div>

</nav>
<%
   String name=session.getAttribute("name").toString();
%>

<div align="center">

<div id="header">
<%@ include file="header.jsp" %>
</div>

<h1><b><font color="red">Welcome <%=name %></font></b></h1>
</br></br></br>
<img class="img img-response" src="CM.png">


<div id="footer"></br></br></br></br>
<%@ include file="footer.jsp" %>
</div>

</div>

<% } %>
</body>
</html>