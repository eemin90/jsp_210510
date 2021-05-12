<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%
	String type = request.getParameter("type");
	if (type == null) {
		return;
	}
%>

<br>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-6">
			<table class="table table-sm table-hover table-bordered">
				<tr>
					<td>타입</td>
					<td><b><%= type %></b></td>
				</tr>
				<tr>
					<td>특징</td>
					<td>
						<% if (type.equals("A")) { %>
								강한 내구성.
						<% } else if (type.equals("B")) { %>
								뛰어난 대처 능력
						<% } %>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>