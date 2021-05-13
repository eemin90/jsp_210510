<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>26redirect-parameter2.jsp</h1>
	<p>name : <%= request.getParameter("name") %></p>
	<p>age : <%= request.getParameter("age") %></p>
</div>
</body>
</html>