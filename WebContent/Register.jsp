<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>

	<article>

		<h1 class="page-header">Registration Form</h1>

		<form name="registrationForm" class="form-horizontal"
			action="RegisterUser.jsp" method="post">
			<div class="form-group">
				<label class="col-md-2 control-label">User name: </label>

				<div class="col-md-4 control-label">
					<input type="text" class="form-control" name="userName"
						required="required" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-2 control-label">Password: </label>

				<div class="col-md-4 control-label">
					<input type="password" class="form-control" name="password"
						required="required" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-4 col-md-offset-2">
					<input type="submit" name="btnRegister" class="btn btn-primary"
						value="Register" />
				</div>
			</div>

		</form>
	</article>

	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>