<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>User Details</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">User Details</div>
		
		<c:if test="${!empty users}">
			<table border="1" bgcolor="black" width="600px">
				<tr
					style="background-color: teal; color: white; text-align: center;"
					height="40px">
					<td>Username</td>
					<td>Password</td>
					<td>Email</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				
			   
				<c:forEach items="${users}" var="user">
					<tr id="user-${user.getUserId()}"
						style="background-color: white; color: black; text-align: center;"
						height="30px">

						<td id="username-${user.getUserId()}"><c:out
								value="${user.getUserName()}" /></td>
						<td id="password-${user.getUserId()}"><c:out
								value="${user.getPassword()}" /></td>

						<td id="email-${user.getUserId()}"><c:out
								value="${user.getEmail()}" /></td>

						<td><a href="updateuser?id=${user.getUserId()}">Edit</a></td>
						<td><a href="deleteuser?id=${user.getUserId()}">Delete</a></td>
						<%-- <td id="edit-${user.getUserId()}"> --%>
							<%-- <form action="edit-single-user" method="post">
								<input type="text" name="username" /><br />
								<input type="password" name="password" /><br /> 
								<input type="submit" value="login" />
								<span class="error">${error}</span>
							</form> --%>
						<!-- </td> -->
					</tr>
				</c:forEach>

			</table>
		</c:if>


		<a href="admin-adduser">Click Here to add new User</a>
	</center>
</body>

<script>
	$(document)
			.ready(
					function() {
						$('#edit')
								.click(
										function() {
											$('#username')
													.each(
															function() {
																var html = $(
																		this)
																		.html();
																var input = $('<td><input type="text" name="username" /> </td>');
																input.val(html);
																$(this)
																		.replaceWith(
																				input);
															});

											$('#password')
													.each(
															function() {
																var html = $(
																		this)
																		.html();
																var input = $('<td><input type="text" name="password" /></td>');
																input.val(html);
																$(this)
																		.replaceWith(
																				input);
															});
										});
					});
</script>
</html>
