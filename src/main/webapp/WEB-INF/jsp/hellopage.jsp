<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login succeed</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>Name</td>
				<td>Email</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${movies}">
				<tr>
					<td>${user.getMovieName()}</td>
					<td>${user.getPosterUrl()}</td>
				</tr>
			</c:forEach>
		
		</tbody>
	</table>
	<form action="login" method="post">
				Name:<input type="text" name="username" /><br /> 
				Password:<input type="password" name="password" /><br /> 
				<input type="submit" value="login" />
				 <span class="error">${error}</span>
	</form>
	
	<form >
							
								<input type="text" class="form-control" name="subscribe_email" placeholder="Your email address..."> <span
									class="input-group-btn">
									<button class="btn btn-base" type="button">Go!</button>
								</span>
						
						</form>
	
	This is User: ${currentUser.email}
</body>
</html>