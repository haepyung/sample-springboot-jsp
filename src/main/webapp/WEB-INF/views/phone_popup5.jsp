<%@ page import="kcb.org.json.*" %>
<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%

    String popupUrl =  (String)request.getAttribute("commonSvlUrl");
    String CP_CD = (String)request.getAttribute("CP_CD");
    String RSLT_CD =  (String)request.getAttribute("RSLT_CD");
    String RSLT_MSG = (String)request.getAttribute("RSLT_MSG");
    String MDL_TKN = "";
    
	boolean succ = false;
	
    if ("B000".equals(RSLT_CD))
    {
		MDL_TKN = (String)request.getAttribute("MDL_TKN");
		succ = true;
    }
	
%>

<html>
<title>KCB �޴��� ����Ȯ�� ���� ���� 2</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script type="text/javascript">
	function request(){
		document.form1.action = "<%=popupUrl%>";
		document.form1.method = "post";
		document.form1.submit();
	}
</script>
</head>

<body>
	<form name="form1">
	<!-- ���� ��û ���� -->
	<!--// �ʼ� �׸� -->
	<input type="hidden" name="tc" value="kcb.oknm.online.safehscert.popup.cmd.P931_CertChoiceCmd"/>	<!-- ����Ұ�-->
	<input type="hidden" name="cp_cd" value="<%=CP_CD%>">	<!-- ȸ�����ڵ� -->
	<input type="hidden" name="mdl_tkn" value="<%=MDL_TKN%>">	<!-- ��ū --> 
	<input type="hidden" name="target_id" value="">	
	<!-- �ʼ� �׸� //-->	
	</form>
</body>
<%
	if (succ) {
		//������û
		out.println("<script>request();</script>");
	} else {
		//��û ���� �������� ����
		out.println("<script>alert('" + RSLT_CD + " : " + RSLT_MSG + " : " + MDL_TKN + "'); self.close(); </script>");
	}
%>
</html>


