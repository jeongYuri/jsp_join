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
	alert("회원정보를 수정 하였습니다.");
	location.href="login.jsp";
</script>
<%
}
else
{
%>
<script>
	alert("회원정보 수정에 실패 하였습니다.");
	history.back();
</script>
<%}%>