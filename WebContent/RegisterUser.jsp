<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" import="java.sql.*"
	errorPage="error.jsp"%>


<%! Connection con;
private boolean createUser(String userName,String password){
	try{
		String sql="insert into users values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,userName);
		ps.setString(2, password);
		int result=ps.executeUpdate();
		
		if(result>0){
			return true;
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return false;
}
%>

<% 
/*Request Object*/
String userName= request.getParameter("userName"); 
String password=request.getParameter("password"); 
/*Request Object end */
out.println("m here...................");
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


boolean authFlag=createUser(userName,password);

if(authFlag){
	response.sendRedirect("login.jsp");
}else{
	response.sendRedirect("error.jsp");
}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered User</title>
</head>
<body>

</body>
</html>