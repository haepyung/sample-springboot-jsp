<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<%
    //**************************************************************************
	// ���ϸ� : phone_popup4.jsp
	// - �ٴ�������
	// �޴��� ����Ȯ�� ���� ��� �Ϸ� ȭ��
	//**************************************************************************
	
	//request.setCharacterEncoding("UTF-8"); // UTF-8 ȯ���� ��� �ּ� ����

	/* ���� ���� �׸� */
	String CP_CD		= (String)request.getAttribute("CP_CD");					// �����ڵ�
	String TX_SEQ_NO	= (String)request.getAttribute("TX_SEQ_NO");				// �ŷ���ȣ
	String RSLT_CD		= (String)request.getAttribute("RSLT_CD");					// ����ڵ�
	//String RSLT_MSG	= (String)request.getAttribute("RSLT_MSG");					// ����޼���(UTF-8)
	String RSLT_MSG	= (String)request.getAttribute("RSLT_MSG");	// ����޼���(EUC-KR)
	
	//String RSLT_NAME		= (String)request.getAttribute("RSLT_NAME");			// ����(UTF-8)
	String RSLT_NAME		= (String)request.getAttribute("RSLT_NAME");	// ����(EUC-KR)
	String RSLT_BIRTHDAY	= (String)request.getAttribute("RSLT_BIRTHDAY");		// �������
	String RSLT_SEX_CD 		= (String)request.getAttribute("RSLT_SEX_CD");			// �����ڵ�
	String RSLT_NTV_FRNR_CD = (String)request.getAttribute("RSLT_NTV_FRNR_CD");		// ���ܱ��� ����
	
	String DI = (String)request.getAttribute("DI");							// DI ��
	String CI = (String)request.getAttribute("CI");							// CI �� (CI_UPDATE�� Ȧ���� ��� ���)
	String CI_UPDATE = (String)request.getAttribute("CI_UPDATE");			// CI ������Ʈ Ƚ�� (���� ��1�� �� ������)
	String TEL_COM_CD = (String)request.getAttribute("TEL_COM_CD");			// ��Ż��ڵ�
	String TEL_NO = (String)request.getAttribute("TEL_NO");					// �޴�����ȣ
	
	String RETURN_MSG = (String)request.getAttribute("RETURN_MSG");			// ���ϸ޽���
%>
<title>KCB �޴��� ����Ȯ�� ���� ���� 4</title>
</head>
<body>
<h3>�������</h3>
<ul>
  <li>�����ڵ�		: <%=CP_CD%> </li>
  <li>�ŷ���ȣ			: <%=TX_SEQ_NO%> </li>
  <li>����ڵ�			: <%=RSLT_CD%></li>
  <li>����޼���		: <%=RSLT_MSG%></li>

  <li>����				: <%=RSLT_NAME%></li>
  <li>�������			: <%=RSLT_BIRTHDAY%></li>
  <li>����				: <%=RSLT_SEX_CD%></li>
  <li>���ܱ��� ����		: <%=RSLT_NTV_FRNR_CD%></li>
  
  <li>DI				: <%=DI%></li>
  <li>CI				: <%=CI%></li>
  <li>CI������Ʈ Ƚ��	: <%=CI_UPDATE%></li>
  <li>��Ż��ڵ�		: <%=TEL_COM_CD%></li>
  <li>�޴�����ȣ		: <%=TEL_NO%></li>
  
  <li>���ϸ޽���		: <%=RETURN_MSG%></li>

</ul>
<br/>
* ���� - M:��, F:��
<br/>
* ���ܱ��α��� - L:������, F:�ܱ���
<br/>
* ��Ż� - 01:SKT, 02:KT, 03:LGU+, 04:SKT�˶���, 05:KT�˶���, 06:LGU+�˶���
</body>
</html>
