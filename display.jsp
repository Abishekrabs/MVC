<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.VO.course"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
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

</br></br>
	<h3 align="center">The Result for the given Course Code is</h3>
</br></br>

	<table align="center" border="2px">
		<tr>
			<th> Course Code</th>
			<th>Course Name</th>
			<th>No of Participants</th>
			<th>Course Description</th>
			<th>Course Code</th>
			<th>Course Type</th>
			<th>Duration</th>
			<th>Fees</th>
		</tr>
		<%
			course s = (course) request.getAttribute("ab");
			if (s != null) {

				//for (course s : list) {
		%>

		<tr>
			<td><%=s.getCourseCode()%></td>
			<td><%=s.getCourseName()%></td>
			<td><%=s.getParticipantCount()%></td>
			<td><%=s.getCourseDesc()%></td>
			<td><%=s.getCourseCode()%></td>
			<td><%=s.getCourseType()%></td>
			<td><%=s.getCourseDuration()%></td>
			<td><%=s.getCourseFees()%></td>
		</tr>
		<%
			}
			//}
		%>

	</table>
	
<div id="footer"></br></br></br></br></br></br></br></br></br></br></br>
<%@ include file="footer.jsp" %>
</div>
	
<% } %>
</body>
</html>