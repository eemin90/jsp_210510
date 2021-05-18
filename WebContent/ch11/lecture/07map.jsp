<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
Map<String, String> map = new HashMap<>();
map.put("java", "spring");
map.put("css", "bootstrap");
map.put("js", "jquery");
map.put("python", "django");
map.put("h-t-m-l", "html");
map.put("hello world!", "hi");

pageContext.setAttribute("map", map);
pageContext.setAttribute("p", "python");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	java : ${map.java} <br>
	css : ${map.css} <br>
	js : ${map["js"]} <br>
	python : ${map[p]} <br>
	
	<hr>
	
	h-t-m-l : ${map.h-t-m-l} <br> 
	h-t-m-l : ${map["h-t-m-l"]} <br>
	<%-- hello world! : ${map.hello world!} <br> -> 문법 오류 발생 --%>
	hello world! : ${map["hello world!"]} <br>
</div>
</body>
</html>