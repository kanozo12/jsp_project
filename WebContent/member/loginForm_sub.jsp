<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<form method="post" action="loginProc.jsp">
		<table border="1" style="width: 400">
		<tr>
			<th colspan="2" align="center">회원 로그인 </th>
		</tr>
		<tr>
			<th align="right" width="80">아이디  </th>
			<td>
				<input class="cls1" type="text" name="id"/>
			</td>
		</tr>
		<tr>
			<th align="right">비밀번호 </th>
			<td>
				<input class="cls1" type="password" name="pass"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input class="cls2" type="submit" value="로그인">
				<input class="cls2" type="button" value="회원가입" onclick="javascript:window.location='regForm_sub.jsp'"/>
			</td>
		</tr>
		</table>
	</form>

</body>
</html>