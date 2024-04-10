<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />

<style>
main {
	
}
.img-container{
   height: 500px; 
   background-image: url('/img/intro.jpg');
   background-size: cover; 
   background-position: center; 
   display: flex;
   justify-content: center; 
   align-items: center; /
}
.Announce{
}
.Announce .top-title{
margin: 20px;
}

.flex-list{
margin-bottom: 150px;
}
.flex-list .flex-contanier{
 	display: flex;
 	justify-content: space-between;
 	
}
.flex-list .flex-contanier li{
	box-sizing :border-box;;
	width: 18%;
	padding:0 20px;
}
.flex-list .flex-contanier li a{
	display: block;
	width: 100%;
	height:200px;
	
	position: relative;
	border: 1px solid #c8cbd0;
	padding: 0 20px;
	font-size: 12px;
	letter-spacing: 0px;
	font-weight: normal;
	line-height: 20px;
	color: #333;
	background-color: #fff;
}
.flex-list .flex-contanier li a .logo{
	padding: 16px 0;
	display: block;
}
.flex-list .flex-contanier li a .tx{
		display:block;
		margin-top:7px;
         height: 47px;
         overflow: hidden;
}
 .flex-list .flex-contanier li a .daystart{
  display: inline-block;
  color: #3f98f7;
  font-weight: bold;
 }
.flex-list .flex-contanier li a button.bookmark{
         
         background: url("/img/bookmark-check.svg");
         background-size: cover;
         display: inline-block;
         width : 20px;
         height: 20px;
         margin-top: 2px;
         position: absolute;
         right: 24px;
         bottom: 17px;
         
      }

</style>
</head>

<body>
	<%@include file="/WEB-INF/include/Header.jsp"%>
    
    
	<main>
		<section class="img-container"></section>
		<div class = "main-wrap inner">
	

		<%-- 	<input type="hidden" name="nowpage" value="${nowpage}"> <input
				type="hidden" name="com_id" value="${com_id}"> <input
				type="hidden" name="nowpage" value="${user_id}">
			<h2>Home</h2>
			<div>
				<a href="/Company/MyPage?nowpage=1">기업마이페이지</a>
			</div>
			<div>
				<a href="/Company/List?nowpage=1">채용목록</a>
			</div>
			<div>
				<a href="/User">마이페이지</a>
			</div>
			<div>
				<a href="/Board">커뮤니티</a>
			</div>
			<div>
				<a href="/Login">로그인</a>
			</div>
			<div>검색창</div>

			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>
		</div> --%>
		<div class ="Announce inner">
		  <div class ="top-title">
		  	<h2>추천 공채</h2>
		  </div>
		  <div class ="flex-list">
		  	<ul class="flex-contanier">
		  		<li><a href="#">
		  			<span class ="logo">
			  		<img src ="/img/winsLogo.gif" width="160" height="64" alt ="윈스">
			  		</span>
			  		<strong class ="co">(주)윈스</strong>
			  		<span class ="tx">2024년 상반기 신입/경력 수시채용</span>
			  		<span class ="daystart">오늘시작</span>
			  		<button class="bookmark"></button>
		  		</a></li>	
		  		<li><a href="#">
		  			<span class ="logo">
			  		<img src ="/img/winsLogo.gif" width="160" height="64" alt ="윈스">
			  		</span>
			  		<strong class ="co">(주)윈스</strong>
			  		<span class ="tx">2024년 상반기 신입/경력 수시채용</span>
			  		<span class ="daystart">오늘시작</span>
			  		<button class="bookmark"></button>
		  		</a></li>	
		  		<li><a href="#">
		  			<span class ="logo">
			  		<img src ="/img/winsLogo.gif" width="160" height="64" alt ="윈스">
			  		</span>
			  		<strong class ="co">(주)윈스</strong>
			  		<span class ="tx">2024년 상반기 신입/경력 수시채용</span>
			  		<span class ="daystart">오늘시작</span>
			  		<button class="bookmark"></button>
		  		</a></li>	
		  		<li><a href="#">
		  			<span class ="logo">
			  		<img src ="/img/winsLogo.gif" width="160" height="64" alt ="윈스">
			  		</span>
			  		<strong class ="co">(주)윈스</strong>
			  		<span class ="tx">2024년 상반기 신입/경력 수시채용</span>
			  		<span class ="daystart">오늘시작</span>
			  		<button class="bookmark"></button>
		  		</a></li>	
		  	</ul>
		  </div>
		</div>
	</main>
	<%@include file="/WEB-INF/include/Footer.jsp"%>
	<script>
	  
	</script>
	
</body>

</html>






