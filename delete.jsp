<%@ page language="java" contentType="text/html; charset=EUC-KR"
		 pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="test_db.MemberMgr"/>
<%
	String id = request.getParameter("id");
	mgr.deleteMember(id);
	response.sendRedirect("member.jsp");
%>