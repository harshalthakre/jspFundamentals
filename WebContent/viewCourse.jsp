<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course page 
	<jsp:getProperty property="courseName" name="course" />
</title>
</head>
<body>
<header>
<%@include file="header.jsp" %>
</header>

<article>
	<jsp:scriptlet> 
	 String user=(String)session.getAttribute("user");
	 String message="Welcome "+user+".....!!";
	</jsp:scriptlet>
	
	<b><%=message %></b>
	
	<jsp:useBean id="course" class="models.Course" scope="request"/>
	
	<h1> <jsp:getProperty property="courseName" name="course"/> </h1>
	<h3> <jsp:getProperty property="courseDescription" name="course"/> </h3>
</article>
<footer>
<%@include file="footer.jsp" %>
</footer>
</body>
</html>