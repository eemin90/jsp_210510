<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.Page" %>

<%
	/*
	Page p = new Page(3, 10);
	request.setAttribute("page", p);
	*/
	Page p2 = (Page) request.getAttribute("page");
	int start = p2.getStart();
	int end = p2.getEnd();
%>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
<%
	for (int i = start; i <= end; i++) {
%>
		<li class="page-item"><a class="page-link" href="#"><%= i %></a></li>
<%
	}
%>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>