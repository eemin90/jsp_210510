<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sesAttr1", "sesVal1");
application.setAttribute("appAttr1", "appVal1");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%
	out.print(pageContext.getAttribute("pageAttr1"));
	%>
	<br>
	${pageAttr1}
	
	<hr>
	
	<%
	out.print(request.getAttribute("reqAttr1"));
	%>
	<br>
	<%= request.getAttribute("reqAttr1") %>
	<br>
	${reqAttr1}
	
	<hr>
	
	<%= request.getAttribute("sesAttr1") %>
	<br>
	${sesAttr1}
	
	<hr>
	
	<%= application.getAttribute("appAttr1") %>
	<br>
	${appAttr1}
	
	<hr>
	
	<%= application.getAttribute("appAttr0") %>
	<br>
	${appAttr0}
</div>
</body>
</html>