<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>list</title>
</head>
<body>
<s2:navbar />
<div class="container">
	<h1>글 목록</h1>
	<s2:message />
	<table class="table table-bordered table-sm">
		<thead class="thead-light">
			<tr>
				<th>id</th>
				<th>title</th>
				<th>memberName</th>
				<th>inserted</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boards}" var="board">
				<tr>
					<td>${board.boardId}</td>
					<td>
						<a href="${pageContext.request.contextPath}/sample2/board/detail?id=${board.boardId}">
							${board.title}
						</a>
					</td>
					<td>${board.memberName}</td>
					<td>${board.timeAgo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>