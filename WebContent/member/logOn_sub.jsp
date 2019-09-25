<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("loginId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOn</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<table border="1" style="width:250px">
		<tr class="cls1">
			<th colspan="3" align="center">
				<font color="blue"> <%=id %> </font> 님 로그인중.
			</th>
		</tr>
		<tr class="cls2">
			<td align="center">
				<a href="updateForm_sub.jsp">정보수정</a>
			</td>
			<td align="center">
				<a href="deleteForm_sub.jsp">회원탈퇴</a>
			</td>
			<td align="center">
				<a href="logoutProc.jsp">로그아웃</a>
			</td>
		</tr>
	</table>
</body>
</html>