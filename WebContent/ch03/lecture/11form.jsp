<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>form</h1>
<form>
	<input type="text" name="q">
	<br>
	<input type="text" name="age">
	<br>
	<input type="submit" value="send">
</form>

<hr>

<p><%= request.getParameter("q") %></p>
<p><%= request.getParameter("age") %></p>

</body>
</html>