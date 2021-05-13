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
	<h1>session 2</h1>
	
	<%-- <p><%= session.getAttribute("myattr1") %></p> --%>
	
	<%
	Object o = session.getAttribute("myattr1");
	String s = (String) o;
	%>
	
	myattr1 : <%= s %>
</div>
</body>
</html>