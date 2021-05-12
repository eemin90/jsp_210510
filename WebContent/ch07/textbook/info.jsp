<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>INFO</title>
</head>
<body>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-6">
			<table class="table table-sm table-hover table-bordered">
				<tr>
					<td>제품번호</td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>10,000원</td>
				</tr>
			</table>
		</div>

		<jsp:include page="infoSub.jsp">
			<jsp:param name="type" value="B" />
		</jsp:include>
	</div>
</div>
</body>
</html>