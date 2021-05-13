<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("memberId");
	if (id != null && id.equals("madvirus")) {
		out.print("로그인 성공");
		//response.sendRedirect("index.jsp");
	} else {
%>

<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인에 실패</title>
</head>
<body>
<div class="container">
	잘못된 아이디입니다.
</div>
</body>
</html>

<%
	}
%>