<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
<script type="text/javascript" src="validate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<%
    // String user =session.getAttribute("user").toString();
    if(session.getAttribute("user")==null) {
    	request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    else {

%>



<div>
<%@ include file="adcr.jsp" %>
</div>

<div id="header">
<%@ include file="header.jsp" %>
</div>

<form action="addcourse" method="post">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<h2 align="center">Add Course</h2>

<%
  String a =request.getParameter("ad");
    if(a!=null) {
    	out.print(a);
    }


%>


<form class="form-inline">
<div class="form-group">
<label for="cc">Course Code</label>
<input type="text" class="form-control" id="ccode" name="ccode" placeholder="Enter Course_Code" onblur="ccodeValidate()" required></br>
<span name="ccodeError" id="ccodeError" style="color: red"></span>
</div>

<div class="form-group">
<label for="cn">Course Name</label>
<input type="text" class="form-control" id="cname" name="cname" placeholder="Enter Course_Name" onblur="cnameValidate()" required></br>
<span name="cnameError" id="cnameError" style="color: red"></span>
</div>

<div class="form-group">
<label for="cde">Course Description</label>
<input type="textarea" class="form-control" id="cdesc" name="cdesc" placeholder="Enter Course_Description" onblur="cdescValidate()" required></br>
<span name="cdescError" id="cdescError" style="color: red"></span>
</div>

<div class="form-group">
<label for="ps">Participant Strength</label>
<input type="text" class="form-control" id="past" name="past" placeholder="Enter Participant_Strength" onblur="pastValidate()" required></br>
<span name="pastError" id="pastError" style="color: red"></span>
</div>

<div class="form-group">
<label for="cdu">Course Duration</label>
<select name="duration" class="form-control" required>
<option>--select--</option>
<option>D1</option>
<option>D2</option>
<option>D3</option>
</select>
</div>

<div class="form-group">
<label for="ct">Course Type</label></br>
<input type="radio" name="type" value="classroom" required> Classroom
<input type="radio" name="type" value="Elearning" required> E-learning
</div></br>

<input type="submit" class="btn btn-primary" value="Add Course">
&nbsp&nbsp&nbsp&nbsp
<button type="reset" class="btn btn-primary">Reset</button>
</br></br>
</form>
<div id="footer">
<%@ include file="footer.jsp" %>
</div>

</div>
</form>
<% } %>
</body>
</html>