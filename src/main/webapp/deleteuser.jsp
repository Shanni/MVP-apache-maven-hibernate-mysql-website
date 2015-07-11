<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete User</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Edit Details</div>

		<form id="registerForm"  method="post"
			action="deleteuser">
			<input name="id" value="${id}" type="hidden"/>
				<table width="400px" height="150px">
				<tr>
					<td><label>Username</label></td>
					<td><input name="username" value="${user.getUserName()}" /></td>
				</tr>
				
				<tr>
					
					<td><input type="submit" value="Delete" />
					</td>
				</tr>
			</table>
		</form>


		
	</center>
</body>
</html>
