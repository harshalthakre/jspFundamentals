<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP FUNDAMENTALS: DECLARATIONS</title>
</head>
<body>


	<%! double getBonus(double salary){
	return salary * 0.05;
} 
int x=10;
double getSal(double salary){
	return salary *4.23;
}

class Hello{
	public String sayHello(){
		return "Hello class hello";
	}
}
%>

	<p>
		Bonus for employee with sakary 5000 will be:
		<%= getBonus(5000) %></p>
	<p>
		Salary for employee with sakary 5000 will be:
		<%= getSal(5000) %></p>
	<p>
		Greet Employee:
		<%= new Hello().sayHello() %></p>
</body>
</html>