<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL SQL TAGS</title>
</head>
<body>

<sql:setDataSource var="myDB" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/mydb" user="root" />

<sql:update dataSource="${myDB}" var="count">
insert into users values("virat","virat");
</sql:update>

<sql:query dataSource="${myDB}" var="rsUsers">
select * from users;
</sql:query>

<c:forEach var="user"  items="${rsUsers.rows}">
<p> USER: <c:out value="${user.username}"></c:out></p>
<p> PASSWORD: <c:out value="${user.password}"></c:out></p>
</c:forEach>

</body>
</html>