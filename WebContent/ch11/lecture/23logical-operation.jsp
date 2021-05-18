<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h4>and(&&)</h4>
	\${true && true} : ${true && true} <br>
	\${true && false} : ${true && false} <br>
	\${false && true} : ${false && true} <br>
	\${false && false} : ${false && false} <br>
	
	<hr>
	
	<h4>and</h4>
	\${true and true} : ${true and true} <br>
	\${true and false} : ${true and false} <br>
	\${false and true} : ${false and true} <br>
	\${false and false} : ${false and false} <br>
	
	<hr>
	
	<h4>or(||)</h4>
	\${true || true} : ${true || true} <br>
	\${true || false} : ${true || false} <br>
	\${false || true} : ${false || true} <br>
	\${false || false} : ${false || false} <br>
	
	<hr>
	
	<h4>or</h4>
	\${true or true} : ${true or true} <br>
	\${true or false} : ${true or false} <br>
	\${false or true} : ${false or true} <br>
	\${false or false} : ${false or false} <br>
	<hr>
	
	<h4>not(!)</h4>
	\${! true} : ${! true} <br>
	\${! false} : ${! false} <br>
	
	<hr>
	
	<h4>not</h4>
	\${not true} : ${not true} <br>
	\${not false} : ${not false} <br>
</div>
</body>
</html>