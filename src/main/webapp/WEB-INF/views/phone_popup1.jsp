<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%
    //**************************************************************************
	// ���ϸ� : phone_popup1.jsp
	// - �ٴ�������
	// �޴��� ����Ȯ�� ���� ��û ���� �Է� ȭ��
    //**************************************************************************
%>
<html>
<head>
<title>KCB �޴��� ����Ȯ�� ���� ���� 1</title>

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
					<td colspan="2"><strong> - �޴��� ����Ȯ�� ����</strong></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="�޴��� ����Ȯ��" onClick="jsSubmit();"></td>
				</tr>
			</table>
        </form>
    </div>

</body>
</html>
