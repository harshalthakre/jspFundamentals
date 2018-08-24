
<%
		String userName=(String)session.getAttribute("user");
		if( userName ==null&&5<4){response.sendRedirect("login.jsp");}
		else{
			
		
		%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
</head>
<body>





	<jsp:useBean id="course" class="models.Course" scope="request"></jsp:useBean>

	<jsp:scriptlet>
		String courseName=null;
		String courseDescription=null;
		
		
		courseName=request.getParameter("courseName");
		
		/*connection temp*/
				/*JDBC Connection Info */
String driverClass=application.getInitParameter("dbDriver");
out.print("here is driver: ******************"+driverClass);
String url=application.getInitParameter("dbUrl");
String dbUsername=application.getInitParameter("dbUser");
/*JDBC Connection Info end*/

try{
	out.println("the driver was:*************"+driverClass);
	Class.forName(driverClass);
}catch(Exception ex){
	
	out.println("the driver was:*************"+driverClass);
	ex.printStackTrace();
}
/*Get JDBC Connection */
out.println("the driver was:*************"+driverClass);

Connection con=DriverManager.getConnection(url, dbUsername,"");

/* Set Connection attribute Required to all application 	*/
application.setAttribute("connection",con);
		
		/*connection temp end*/
		Connection connection=(Connection)application.getAttribute("connection");
		
		String sql="select * from course where coursename= '"+courseName+"'";
		Statement statement =connection.createStatement();
		ResultSet rs=statement.executeQuery(sql); 
		if(rs.next()){
			</jsp:scriptlet>

	<jsp:setProperty name="course" property="courseName"
		value="<%= courseName %>" />
	<jsp:setProperty name="course" property="courseDescription"
		value="<%= rs.getString(2) %>" />

	<jsp:scriptlet>
		}
		</jsp:scriptlet>


	<jsp:forward page="viewCourse.jsp"></jsp:forward>

</body>
</html>

<% }%>