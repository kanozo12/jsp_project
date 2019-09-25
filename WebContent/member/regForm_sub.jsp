<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reg</title>
<script type="text/javascript" src="script.js"></script>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<form action="regProc_sub.jsp" method="post" name="regForm">
	<table border="1" style="width: 400">
	<tr>
		<td colspan="2" align="center">
			<b>회원 가입 정보 입력</b>
		</td>
	</tr>
	<tr>
		<td align="right">이름</td>
		<td>
			<input class="cls1" type="text" name="name"/>
		</td>
	</tr>
	<tr>
		<td align="right">아이디</td>
		<td>
			<input class="cls1" type="text" name="id"/>
			<input class="cls2" type="button" value="중복확인" onclick="idCheck(this.form.id.value)"/>
	</tr>
	<tr>
		<td align="right">비밀번호</td>
		<td>
			<input class="cls1" type="password" name="pass"/>
		</td>
	</tr>	
	<tr>
		<td align="right">비밀번호 확인</td>
		<td>
			<input class="cls1" type="password" name="rePass"/>
		</td>
	</tr>
	<tr>
		<td align="right">생년</td>
		<td>
			<select name="birth" class="cls1">
			<%
				for(int i=1970;i<=2019; i++) {
			%>
				<option value="<%=i%>"> <%=i %> </option>
			<%
				}
			%>
			</select>
		</td>
	</tr>
	<tr>
		<td align="right">성별</td>
		<td>
			<input type="radio" name="gender" value="남자" checked/>남자
			<input type="radio" name="gender" value="여자" />여자
		</td>
	</tr>
	<tr>
		<td align="right">직업 </td>
		<td>
			<input class="cls1" type="text" name="job"/>
		</td>
	</tr>
	<tr>
		<td align="right">주소 </td>
		<td>
			<input class="cls1" type="text" name="address" size="40"/>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input class="cls2" type="button" value="가입" onclick="valueCheck()"/>
			<input class="cls2" type="reset" value="재작성"/>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>