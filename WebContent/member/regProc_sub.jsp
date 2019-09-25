<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="my.member.MemberDTO"/>
<jsp:useBean id="dao" class="my.member.MemberDAO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	boolean rst = dao.insertMember(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Refresh" content="3; url=/JSP04/member/loginForm_sub.jsp" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (rst) {
			out.println("<h2>회원가입이 정상 처리되었습니다.</h2>");
		} else {
			out.println("<h2>회원가입 처리중 오류가 발생하였습니다.</h2>");
		}
	%>
	3초 뒤 로그인 페이지로 이동합니다.
</body>
</html>