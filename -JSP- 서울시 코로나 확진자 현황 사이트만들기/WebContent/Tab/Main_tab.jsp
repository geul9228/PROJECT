<%@page import="oneday.com.org.Accumulate"%>
<%@page import="oneday.com.org.OneDay1" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://d3js.org/d3.v6.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
	<div class="liveNumOuter ml-5 mr-5">
		<div class="liveNum_today_new">
			<strong class="tit">일일확진자</strong>
			<div class="datalist">
				<ul class = "mt-3">
					<li><span class="subtit">국내발생</span>
					<span class="data">
					<%OneDay1 day = new OneDay1();%>
					<%= day.OneDay1() %>
					</li>
					<li><span class="subtit">해외유입</span>
					<span class="data">
					<%= day.OneDay2() %>
					</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="liveNum">
			<ul class="liveNum" style="padding:0px">
				<li><strong class="tit">확진환자</strong> 
				<span class="num">
				<span class="mini">(누적)</span>
				<%Accumulate ac1= new Accumulate();
					ac1.Accumulate1();%>
				<%=ac1.Accumulate1()%></span>
				<span class="before">전일대비 
				<%=ac1.Accumulate5() %>
				</span></li>
				<li><em class="sign">=</em> <strong class="tit">격리해제</strong> <span
					class="num">
				<%=ac1.Accumulate2()%></span> <span class="before">
				<%=ac1.Accumulate6() %>
				</span></li>
				<li><em class="sign">+</em> <strong class="tit">치료 중<br>
					<span class="mini_tit">(격리 중)</span></strong> <span class="num">
				<%=ac1.Accumulate3() %></span>
					<span class="before">
				<%=ac1.Accumulate7() %>
				</span> </li>
				<li><em class="sign">+</em> <strong class="tit">사망</strong> <span
					class="num">
				<%=ac1.Accumulate4() %>
				</span> <span class="before">
				<%=ac1.Accumulate8() %>
				</span></li>
			</ul>
			
		</div>
	</div>
	
</body>
</html>