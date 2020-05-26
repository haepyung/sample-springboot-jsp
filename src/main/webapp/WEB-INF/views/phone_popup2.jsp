<%@ page import="kcb.org.json.*" %>
<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<title>KCB 휴대폰 본인확인 서비스 샘플 2</title>
<head>
<body onload="javascript:request();">
	<form name="form1" method="post" th:action="${commonSvlUrl}">
		<input type="hidden" name="tc" value="kcb.oknm.online.safehscert.popup.cmd.P931_CertChoiceCmd" />
		<input type="hidden" name="cp_cd" th:value="${CP_CD}">	<!-- 회원사코드 -->
		<input type="hidden" name="mdl_tkn" th:value="${MDL_TKN}">	<!-- 토큰 -->
		<input type="hidden" name="target_id" th:value="">
	</form>
	<script th:inline="javascript">
		var targetId = [[${targetId}]];

		function request() {
			window.name = targetId;
			document.form1.submit();
		}
	</script>
</body>
</html>


