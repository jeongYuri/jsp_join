<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="mgr" class="test_db.MemberMgr"/>
<jsp:useBean id="bean" class="test_db.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean result=mgr.updateMember(bean);
	if(result){
%>
<script>
	alert("ȸ�������� ���� �Ͽ����ϴ�.");
	location.href="login.jsp";
</script>
<%
}
else
{
%>
<script>
	alert("ȸ������ ������ ���� �Ͽ����ϴ�.");
	history.back();
</script>
<%}%>