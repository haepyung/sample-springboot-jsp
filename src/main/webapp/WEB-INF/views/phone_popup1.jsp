<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%
    //**************************************************************************
	// 파일명 : phone_popup1.jsp
	// - 바닥페이지
	// 휴대폰 본인확인 서비스 요청 정보 입력 화면
    //**************************************************************************
%>
<html>
<head>
<title>KCB 휴대폰 본인확인 서비스 샘플 1</title>

<script>
<!--
	function jsSubmit(){
		window.open("", "auth_popup", "width=430,height=640,scrollbar=yes");
		var form1 = document.form1;
		form1.target = "auth_popup";
		form1.submit();
	}
//-->
</script>
</head>
<body>
	<div>
		<form name="form1" action="certStart" method="GET">
			<table>
				<tr>
					<td colspan="2"><strong> - 휴대폰 본인확인 인증</strong></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="휴대폰 본인확인" onClick="jsSubmit();"></td>
				</tr>
			</table>
        </form>
    </div>

</body>
</html>
