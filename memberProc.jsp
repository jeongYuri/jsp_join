<%@page contentType="text/html; charset=EUC-KR" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="test_db.MemberMgr"/>
<jsp:useBean id="bean" class="test_db.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean result = mgr.insertMember(bean);
	String msg = "ȸ�����Կ� ���� �Ͽ����ϴ�.";
	String location = "member.jsp";
	if(result){
		msg = "ȸ�������� �Ͽ����ϴ�.";
		location = "login.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>