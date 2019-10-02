<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="deleteProc.jsp">
		<table border="1" style="width: 400">
			<tr>
				<th colspan="2" align="center">회원 탈퇴</th>
			</tr>
			<tr>
				<th align="right">비밀번호</th>
				<td><input class="cls1" type="password" name="pass" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input class="cls2"
					type="submit" value="탈퇴"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>