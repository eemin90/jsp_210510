<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="book1" class="ch08.Book" scope="page" />
<jsp:setProperty name="book1" property="title" value="스프링" />

<jsp:useBean id="book2" class="ch08.Book" scope="request" />
<jsp:setProperty name="book2" property="title" value="웹" />

<jsp:useBean id="book3" class="ch08.Book" scope="session" />
<jsp:setProperty name="book3" property="title" value="JSP" />

<jsp:useBean id="book4" class="ch08.Book" scope="application" />
<jsp:setProperty name="book4" property="title" value="CSS" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	책1 제목: <jsp:getProperty name="book1" property="title" /> <br>
	책2 제목: <jsp:getProperty name="book2" property="title" /> <br>
	책3 제목: <jsp:getProperty name="book3" property="title" /> <br>
</div>

<jsp:include page="03scope2.jsp" />

</body>
</html>