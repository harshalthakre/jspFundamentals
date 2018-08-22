<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<article>
	<%! static int x=0; %>
	<% response.setIntHeader("Refresh",1);
		out.println(x++);
	%>
</article>
</body>
</html>