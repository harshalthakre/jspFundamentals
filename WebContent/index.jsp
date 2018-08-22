<%@ page language="java"   contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Raw Studio - Way to Success</title>
</head>
<body>

<header>
<%@ include file="header.jsp" %>
</header>
<article>

<div class="row">
<div class="jumbotron">
	<h1 class="text-center">Enter to Learn</h1>
	<p class="text-center"> Hello dummy </p>


<div class="row">
	<center>
	<form class="form-inline" action="findCourse.jsp">
		<div class="form-group">
			<label class="control-label">Search course</label>
			<input type="search" class="form-control" name="courseName" placeholder="Enter course Title "/>
			<input type="submit" class="btn btn-primary" value="Search"/>
		</div>
	 </form>
	
	</center>
</div>
	<br/>
	
<p class="text-center"><a href="courses.jsp" class="btn btn-lg btn-success">View All Courses</a></p>
</div>
</div>

<div class="row">
	<p> *** New user? <a href="register.jsp">Register Here</a></p>
</div>

<div class="row">
	<p> *** Existing user? <a href="login.jsp">Login Here</a></p>
</div>
</article>

<footer>
	<%@ include file="footer.jsp" %>
</footer>

</body>

</html>