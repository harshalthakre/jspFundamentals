<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! int userCount;
		int rating;%>
<%


try {
	String query;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
	String course="spring";
	Statement statement=con.createStatement();
	query="select count(user) as users,rating from ratings where course='"+course+"' group by rating";
	ResultSet rs=statement.executeQuery(query);
	
	while(rs.next()) {
		 userCount=rs.getInt("users");
		 rating =rs.getInt("rating");
	}
	
}catch(Exception e) {
	e.printStackTrace();
}
%>

<h2><%= userCount %></h2>
<h2><%= rating %></h2>
</body>
</html>