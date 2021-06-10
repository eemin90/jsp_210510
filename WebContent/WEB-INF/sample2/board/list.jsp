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
	<h6>총 ${totalNum}개의 게시글이 있습니다.</h6>
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
						<c:if test="${board.numberOfComment != 0}">
							<span>[${board.numberOfComment}]</span>
						</c:if>
					</td>
					<td>${board.memberName}</td>
					<td>${board.timeAgo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav>
		<ul class="pagination justify-content-center">
			<c:forEach var="p" begin="1" end="${pageCnt}">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/sample2/board/list?page=${p}">${p}</a></li>
			</c:forEach>
		</ul>
	</nav>
</div>
</body>
</html>