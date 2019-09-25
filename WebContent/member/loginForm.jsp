<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String context = null;
	String title = null;
	if(session.getAttribute("loginId") != null) {
		context = "logOn_sub.jsp";
		title = "ed LogOn";
	} else {
		context = "loginForm_sub.jsp";
		title = "ed LogIn";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
</head>
<body>
	<jsp:include page="<%=context %>"></jsp:include>
</body>
</html>