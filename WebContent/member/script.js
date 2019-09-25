function idCheck(id) {
	if (id=="") {
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
	} else {
		url = "idCheck.jsp?id="+id;
		window.open(url,"post",width=300,height=150);
	}
}

function valueCheck() {
	if (document.regForm.name.value=="") {
		alert("이름을 입력해주세요.");
		document.regForm.name.focus();
		return;
	}
	if (document.regForm.id.value=="") {
		alert("아이디를 입력해주세요.");
		document.regForm.id.focus();
		return;
	}
	if (document.regForm.pass.value=="") {
		alert("비밀번호를 입력해주세요.");
		document.regForm.pass.focus();
		return;
	}
	if (document.regForm.rePass.value=="") {
		alert("비밀번호 확인을 입력해주세요.");
		document.regForm.rePass.focus();
		return;
	}
	if (document.regForm.pass.value != document.regForm.rePass.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.rePass.value="";
		document.regForm.rePass.focus();
		return;
	}
	if (document.regForm.job.value=="") {
		alert("직업을 입력해주세요.");
		document.regForm.job.focus();
		return;
	}
	if (document.regForm.address.value=="") {
		alert("주소를 입력해주세요.");
		document.regForm.address.focus();
		return;
	}
	document.regForm.submit();
}