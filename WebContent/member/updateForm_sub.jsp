<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="my.member.*"%>
<jsp:useBean id="dao" class="my.member.MemberDAO" />
<%
	String id = (String) session.getAttribute("loginId");
	MemberDTO dto = dao.selectMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eD Update</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function begin() {
		document.regForm.pass.focus();
	}
</script>
</head>
<body onload="begin()">
	<form action="updateProc.jsp" name="regForm" method="post">
	<table border="1" style="width: 400">
		<tr>
			<td colspan="2" align="center"><b>회원 수정 정보 입력</b></td>
		</tr>
		<tr>
			<td align="right">이름</td>
			<td><input class="cls1" type="text" name="name"
				value="<%=dto.getName()%>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td align="right">아이디</td>
			<td><input class="cls1" type="text" name="id"
				value="<%=dto.getId()%>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td align="right">비밀번호</td>
			<td><input class="cls1" type="password" name="pass"
				value="<%=dto.getPass()%>" /></td>
		</tr>
		<tr>
			<td align="right">비밀번호 확인</td>
			<td><input class="cls1" type="password" name="rePass"
				value="<%=dto.getPass()%>" /></td>
		</tr>
		<tr>
			<td align="right">생년</td>
			<td><select name="birth" class="cls1">
					<%
						for (int i = 1970; i <= 2019; i++) {
							if(dto.getBirth()==i) {
					%>
					<option value="<%=i%>" selected="selected">
						<%=i%>
					</option>
					<%
						} else {
					%>
					<option value="<%=i%>"><%=i %></option>
					<% 	
						}
					}
					%>
			</select></td>
		</tr>
		<tr>
			<td align="right">성별</td>
			<td>
			<%
				if(dto.getGender().equals("남자")) {
			%> 
			<input type="radio" name="gender" value="남자" checked />남자 <input
				type="radio" name="gender" value="여자" />여자 
			<%
				} else {
			%> 
			<input type="radio" name="gender" value="남자" />남자 <input
				type="radio" name="gender" value="여자" checked="checked"/>여자
			<%
				}
			%>
			</td>
		</tr>
		<tr>
			<td align="right">직업</td>
			<td><input class="cls1" type="text" name="job" value="<%=dto.getJob()%>"/></td>
		</tr>
		<tr>
			<td align="right">주소</td>
			<td><input class="cls1" type="text" name="address" size="40" value="<%=dto.getAddress() %>"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input class="cls2" type="button" value="수정" onclick="valueCheck()" /> &nbsp;&nbsp;&nbsp;
			<input class="cls2"
				type="button" value="취소" onclick="javascript:window.location='loginForm.jsp'" /></td>
		</tr>
	</table>
	</form>
</body>
</html>