<%@page import="jsp.com.org.Login"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<script type="text/javascript">
	history.replaceState({}, null, location.pathname);
</script>
<%
	String ID = request.getParameter("id");
	String PW = request.getParameter("pwd");
	Login login = new Login();
	int ret = login.login(ID, PW);
	
	if(ret==1){
		session.setAttribute("ID", ID);
		session.setAttribute("PW", PW);
	}
%>
<script>
if(<%=ret%>==1){
	location.href="../Tab/NoticeBoard.jsp";
}else{
	alert('로그인 실패')
	location.href = "../Tab/NoticeBoard.jsp"
}
</script>