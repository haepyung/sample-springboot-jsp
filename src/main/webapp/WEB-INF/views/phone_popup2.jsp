<%@ page import="kcb.org.json.*" %>
<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<title>KCB �޴��� ����Ȯ�� ���� ���� 2</title>
<head>
<body onload="javascript:request();">
	<form name="form1" method="post" th:action="${commonSvlUrl}">
		<input type="hidden" name="tc" value="kcb.oknm.online.safehscert.popup.cmd.P931_CertChoiceCmd" />
		<input type="hidden" name="cp_cd" th:value="${CP_CD}">	<!-- ȸ�����ڵ� -->
		<input type="hidden" name="mdl_tkn" th:value="${MDL_TKN}">	<!-- ��ū -->
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


