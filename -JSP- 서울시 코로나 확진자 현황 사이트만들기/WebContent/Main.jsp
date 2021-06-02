<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코로나19 현황</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/Style.css"/>
<link rel="stylesheet" href="./css/StatusBoard.css" />

<script type="text/javascript">
	<%String ID = (String)session.getAttribute("ID");%>
	history.replaceState({}, null, location.pathname); //넘겨받은 파라메터를 숨기는 구문
	window.onload = function() {
		<%if(ID==null){%>	//로그인 안했을때 활성화되는 버튼
		document.getElementById('member').onclick = function() {
			location.href = 'memberInsert.jsp';
		}
		
		
			$('#loginbtn').click(function login_from() {
				$("#loginform").attr('style', 'display:block');
				$("#loginbtn").attr('style', 'display:none');
				$("#hide_loginbtn").attr('style', 'display:block');
			})
			
			$('#hide_loginbtn').click(function() {
				$("#loginform").attr('style', 'display:none');
				$("#hide_loginbtn").attr('style', 'display:none');
				$("#loginbtn").attr('style', 'display:block');
			})
		
		<%}%>
	}
	
	
</script>
</head>
<body>
	<header>
	<nav class="navbar navbar-expand-sm">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="nav-link" href="Main.jsp">Main</a>
			</li>
			<li class="nav-item">
     			 <a class="nav-link" href="./Tab/tab2.jsp">코로나 확진 현황</a>
    		</li>
    		<li class="nav-item">
    			<a class="nav-link" href="./Tab/NoticeBoard.jsp">국민의 소리</a>
    		</li>
    		<li class="nav-item">
    			<a class="nav-link" href="survey.jsp">설문조사</a>
    		</li>
			<%if(ID!=null){%>
    		<li class="nav-item ">
    			<a class="nav-link float-right" href="./check/logout.jsp">로그아웃</a>
    		</li>
    		<%}else{%>
    		<li class="nav-item ">
    		<button class="nav-link float-right btn text-primary" id="loginbtn">로그인</button>
    		<button class="nav-link float-right btn text-primary" id="hide_loginbtn" style="display:none">로그인</button>
    		</li>
    		<%} %>
		</ul>
	</nav>
	<div class="jumbotron text-center">
		<h1>이겨내자! COVID-19</h1>
	</div>
	</header>
			<div class="container col-4" style="display:none" id="loginform">
			<%if(ID==null){%>
			<form action="./check/login.jsp">
				 <label for="ID">ID:</label>
				 <input type="id" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id">
				 <label for="PWD">Password:</label> 
				 <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요" name="pwd">
				 <button type="button" class="btn mt-2" id = "member">
				 <img src="./res/회원가입.JPG" width="30" height="30" class = "mr-2 img-thumbnail">회원가입</button>
				 <button type="submit" class="btn btn-success mt-2" id ="login">로그인</button>
			</form>
			<%}%>
			</div> 
			<%@ include file="./Tab/Main_tab.jsp" %>

</body>
</html>