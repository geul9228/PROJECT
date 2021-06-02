<%@page import="jsp.com.org.Posting.Posting"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jsp.com.org.Posting.PostingDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국민의 소리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- style 적용 css 파일 생성했습니다 -->
<link rel="stylesheet" href="/JSP/css/Style.css"/>

  <%
    int num = 0;
    String PageNum;
    PageNum=request.getParameter("num");
    PostingDB PDB = new PostingDB();
    List<Posting> list;
    if(PageNum==null){
    list = PDB.select(num);
    }else{
    list = PDB.select_reload(Integer.parseInt(PageNum));
    }
    int Page = PDB.PageNum();
    %>
</head>
<body>
	<header>
	<nav class="navbar navbar-expand-sm">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="nav-link" href="../Main.jsp">Main</a>
			</li>
			<li class="nav-item">
     			 <a class="nav-link" href="tab2.jsp">코로나 확진 현황</a>
    		</li>
    		<li class="nav-item">
    			<a class="nav-link" href="NoticeBoard.jsp">국민의 소리</a>
    		</li>
			<%
    		String ID= (String)session.getAttribute("ID");
    		if(ID!=null){ %>
    		<li class="nav-item ">
    			<a class="nav-link float-right" href="../check/logout.jsp">로그아웃</a>
    		</li>
    		<%} %>
		</ul>
	</nav>
	</header>
		<%if(ID==null){%>
			<form class="form-inline ml-3 mt-3" action="../check/loginGoTab.jsp">
				 <label for="ID">ID:</label>
				 <input type="id" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id">
				 <label for="PWD">Password:</label> 
				 <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요" name="pwd">
				
				 <button type="button" class="btn mt-2" id = "member">
				 <img src="../Img/회원가입.JPG" width="30" height="30" class = "mr-2 img-thumbnail">회원가입</button>
				 <button type="submit" class="btn btn-success mt-2" id ="login">로그인</button>
			</form>
			<% }else{ %>
			<div class="container" id = "reload">
				<div class="row">
					<table class="table table-hover" style="margin-top:50px;">
						 <thead style="background-color:#03A6A6; color:#F2F2F2;">
      						<tr>
        						<th>번호</th>
        						<th>제목</th>
        						<th>작성자</th>
        						<th>작성일</th>
      						</tr>
    					</thead>
    					<tbody>
    					<%for(int i=0; i<list.size();i++){
    						Posting Pdata = list.get(i);%>
    						<tr id = "click" onclick="location.href='../BoardRead.jsp?num='+$(this).find('td:eq(0)').text().replace(/ /g, '');" style="cursor:pointer;">
    							<td style="cursor:pointer;">
    							<%out.print(Pdata.getNum());%></td>
    							
    							<td style="cursor:pointer;">
    							<%out.print(Pdata.getTitle());%></td>
    							
    							<td  style="cursor:pointer;">
    							<%out.print(Pdata.getUserid());%></td>
    							
    							<td style="cursor:pointer;">
    							<%out.print(Pdata.getDate());%></td>
    						</tr>
    						<%} %>
    					</tbody>
					</table>
					
					<%for(int i = 0; i<Page+1;i++){ %>
						
						<a class = "col-1" id = "PageNumber" onclick="location.href='NoticeBoard.jsp?num='+$(this).text().replace(/ /g, '');" style="cursor:pointer;"><%out.print(i+1);%></a>
						<%} %>
						<a href="../write.jsp" class="btn btn-info">글쓰기</a>
				</div>
			</div>
			<%}%>
			</div>
		    
</body>
</html>