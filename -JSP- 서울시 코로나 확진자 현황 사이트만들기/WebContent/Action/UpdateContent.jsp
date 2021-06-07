<%@page import="jsp.com.org.Posting.PostingUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
PostingUpdate update = new PostingUpdate();
String num = request.getParameter("num");
String content = request.getParameter("content");
System.out.print(content);
update.Update(num,content);
%>

<script>
history.replaceState({}, null, location.pathname); //넘겨받은 파라메터를 숨기는 구문
alert("수정완료")
location.href="../Tab/NoticeBoard.jsp"
</script>
