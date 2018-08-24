<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>courses</title>
</head>
<body>
<header>
<%@include file="header.jsp" %>
</header>

<article>

<jsp:useBean id="obj" class="models.Courses" scope="request"/>
<div class="row">
	
	<c:set var="i" value="0" scope="page" />
	
	<c:forEach var="course" items="${obj.getAllCourse()}">
		<div class="row">
			<h3 style="padding:25px">*******************${course.courseName}</h3>
			<h5 style="padding:25px">*******************${course.courseDescription}</h5>
		</div>
	</c:forEach>
	
</div>

</article>

<footer>
<%@include file="footer.jsp" %>
</footer>
</body>
</html>