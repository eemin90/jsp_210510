<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>main</title>
</head>
<body>

main.jsp에서 생성한 내용.

<jsp:include page="sub.jsp" flush="false" />

include 이후의 내용.

</body>
</html>