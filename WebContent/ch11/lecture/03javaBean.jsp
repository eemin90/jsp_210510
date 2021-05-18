<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!-- ex1, ex2 -->
<jsp:useBean id="book1" class="ch08.Book" scope="page">
	<jsp:setProperty name="book1" property="title" value="JAVA" />
	<jsp:setProperty name="book1" property="writer" value="Kim" />
</jsp:useBean>

<%
// ex3
pageContext.setAttribute("t", "title");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<!-- ex1 -->
	book: ${book1} <br>
	title: ${book1.title} <br>
	writer: ${book1.writer} <br>
	<%-- none: ${book1.none} <br> --%>
	
	<hr>
	<!-- ex2 -->
	title: ${book1["title"]} <br>
	writer: ${book1["writer"]} <br>
	
	<hr>
	<!-- ex3 -->
	title: ${book1[t]} <br> <!-- ${book1["title"]}과 같음 -->
</div>
</body>
</html>