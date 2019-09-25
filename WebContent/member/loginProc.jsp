<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="my.member.MemberDAO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Proc</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int rst = dao.loginCheck(id, pass);
	
	if(rst == 1) {
		session.setMaxInactiveInterval(60);
		session.setAttribute("loginId", id);
%>
	<script type="text/javascript">
		alert("어서오세요.");
		location.href="loginForm.jsp";
	</script>
<%
	} else if(rst == 0) {
%>
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		alert("존재하지 않는 아이디입니다.");
		history.go(-1);
	</script>
<% } %>
</body>
</html>