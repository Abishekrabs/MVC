<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src="validate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body >

<%
Cookie [] ab =request.getCookies();
String user ="";
String pass ="";
String rem ="";

if(ab!=null) {
for (Cookie obj : ab) {
	if(obj.getName().equals("user")) {
		 user =obj.getValue();
	}
	if(obj.getName().equals("pass")) {
		 pass =obj.getValue();
	}
	if(obj.getName().equals("rem")) {
		rem =obj.getValue();
	}
}
}
%>

<form action="admindetails" method="post">

<div class="col-sm-3"></div>

<div class="col-sm-6">

</br>
<img class="img img-response" src="ad.gif">
</br>

<label for="uid">UserId <span class="glyphicon glyphicon-user"></span></label></br>
<input type="text" class="form-control" id="userid" name="userid" autocomplete="off" value="<%=user %>" placeholder="Enter UserId" onblur="userIdValidate()" required >
<span name="useridError" id="useridError" style="color: red"></span>
</br>

<label for="pass">Password <span class="glyphicon glyphicon-pencil"></span></label>
<input type="password" class="form-control" id="password" name="password" autocomplete="off" value="<%=pass %>" placeholder="Enter Password" required></br>

<label>
<input type="checkbox" id="rem" name="rem" value="1" <%="1".equals(rem.trim())?"checked='checked'" : "" %>>Remember Me </label></br>

<%
   String name =request.getParameter("user");
		if(name!=null) {
			out.print(name);
		}
%>

</br></br>
<input type="submit" value="Submit" class=" btn btn-primary form-control">

</div>
</form>
</body>
</html>