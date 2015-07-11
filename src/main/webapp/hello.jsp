<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${message}</h2>
shan.liu@stonybrook.edu
<form action="subscribe" method="post">

		<input type="text" class="form-control" name="subscribe_email"
			placeholder="Your email address...">
			 <span
			class="input-group-btn">
			<button class="btn btn-base" type="submit">Go!</button>
			<input type="submit" value="sub" />
		</span>

	</form>
	
	<form action="login" method="post">
				Name:<input type="text" name="username" /><br /> 
				Password:<input type="password" name="password" /><br /> 
				<input type="submit" value="login" />
				 <span class="error">${error}</span>
	</form>
	
</body>
</html>