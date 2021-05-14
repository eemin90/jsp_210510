<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	Cookie cookie = new Cookie("long-cookie", "long-value");
	cookie.setMaxAge(60 * 30); //30분
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>30분 쿠키</h1>
</div>
</body>
</html>