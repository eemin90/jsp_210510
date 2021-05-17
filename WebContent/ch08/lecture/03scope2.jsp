<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="book1" class="ch08.Book" scope="page" />
<jsp:useBean id="book2" class="ch08.Book" scope="request" />

<div class="container">
	<h3>scope2.jsp</h3>
	책1 제목: <jsp:getProperty name="book1" property="title" /> <br>
	책2 제목: <jsp:getProperty name="book2" property="title" /> <br>
</div>