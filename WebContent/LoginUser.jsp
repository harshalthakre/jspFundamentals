<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" import="java.sql.*"
	errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
	<%!
Connection con;
String findUser(String userName,String password){
	String username=null;
	try{
		String sql="select userName from users where userName=? and password=?";
		PreparedStatement preparedStatement=con.prepareStatement(sql);
		preparedStatement.setString(1,userName);
		preparedStatement.setString(2, password);
		ResultSet rs=preparedStatement.executeQuery();
		while(rs.next()){
			username=rs.getString("userName");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return username;
}
%>

	<%
/*Request Object*/
String userName= request.getParameter("userName"); 
String password=request.getParameter("password"); 

/* con=(Connection)application.getAttribute("connection"); */

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

con=DriverManager.getConnection(url, dbUsername,"");

/* Set Connection attribute Required to all application 	*/
application.setAttribute("connection",con);
	
String useri=findUser(userName,password);

if(useri!=null){
	session.setAttribute("user",userName);
	
	String rurl=request.getParameter("requestUrl");
	
	if(rurl!=null&&!rurl.equals(null)) response.sendRedirect(rurl+".jsp");
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("error.jsp");
}

%>


</body>
</html>