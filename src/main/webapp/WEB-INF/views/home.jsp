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
		<div class = "recruitTitContainer">
			<div class ="recruitTitBox">
				<div class ="container">
					<div class ="box_top">
						<p class="recruitTit">"직무 전체"</p>
						<button class="btn_filter">직무를 선택해주세요(clickon)</button>
						<div class ="filter-box"></div>
					</div>
					<div class ="box_bottom">
					  <div class ="btn_boxes">
						<div class ="btn_box dev_wrap-local">
							<button class ="btn_filter btn_filter_box">
								<span>지역</span>
								<!--여기 arrow  -->
								<!-- 여기버튼 div  -->
							</button>
						</div>
						<div class ="btn_box dev_wrap-career">
							<button class ="btn_filter btn_filter_box">
								<span>경력</span>
								<!--여기 arrow  -->
								<!-- 여기버튼 div  -->
							</button>
						</div>
						<div class ="btn_box dev_wrap-edu-level">
							<button class ="btn_filter btn_filter_box">
								<span>학력</span>
								<!--여기 arrow  -->
								<!-- 여기버튼 div  -->
							</button>
						</div>
					  </div><!-- btn_boxes -->
					  <form id="searchForm"><!-- onsubmit ="retrun false" -->
					  	<div class ="search-box" ></div>
					  </form>
					</div>
				</div>
			</div>
		</div>

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






