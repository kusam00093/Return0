<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/png" href="/img/favicon.png" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
<title>기업 공고 목록</title>

<style>
	main{
		margin: 0 auto;
		width : 1200px;
		text-align: center;
	}
	
	.sub_title{
		font-weight : border;
		text-align : center;
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		font-size : 20px;
		font-weight: border;
		padding : 10px;
		margin-left: 10px;
		
	.td1{
		width : 50px;
	}
	
	.td2{
		width : 650px;
		margin-right: 50px;
	}
	
	.td3{
		width : 150px;
		padding-right: 100px;
	}
	
	.td4{
		margin-right : 50px;
		padding-right: 50px;
		width : 200px;
		
	}
	

	}
	
	.content1{
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		border : 1px solid  #3f98f7;
		padding : 10px;
		border-radius: 5px;
		margin : 10px;
		
		
	.td1{
		width : 50px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
		
	}
	
	.td2{
		width : 650px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
	}
	
	.td3{
		width : 150px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
	}
	
	.td4{
		width : 200px
	}
	
	.td5{
		width : 100px;
		border-radius: 5px;
		border: 1px solid black;
		font-weight: bold;
		
	}
		
	}
	#on_com_login{
		display: block;
		float: right; 
	}
	
</style>
</head>
<body>
	<main>

 <%@include file="/WEB-INF/include/Header.jsp" %>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<input type="hidden" name="nowpage" value="${nowpage}">
   <h2>채용 목록</h2>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
   
               <c:choose>
			    <c:when test="${sessionScope.companyLogin != null }">
			        <!-- 기업 사용자일 경우 -->
			        <ul class="navbar" id="on_com_login">
			            <li><a href="/Company/Posting/WriteForm?nowpage=${nowpage}" class="btn btn-primary">공고 등록하기</a></li>
			        </ul>
			    </c:when>
			    </c:choose>
	<div class="sub_title">
      <div class="td1">번호</div>
      <div class="td2">제목</div>
      <div class="td3">부서</div>
      <div class="td4">마감기한</div>
	</div>  
   <c:forEach  var="co" items="${postingList}">
	<div class="content1">
      <div class="td1">${co.row_number}</div>
      <div class="td2"><a href="/Company/PostingView?nowpage=${nowpage}&posting_pno=${co.posting_pno}">${co.posting_title}</a></div>
      <div class="td3">${co.posting_hope_department}</div>
      <div class="td4">${co.posting_enddate}</div>
                <c:choose>
			    <c:when test="${sessionScope.userLogin != null }">
			        <!-- 기업 사용자일 경우 -->
      <div class="td5"><a href="/Resume/ResumeApplyList?nowpage=${nowpage }&posting_pno=${co.posting_pno}">즉시지원</a></div>
			    </c:when>
			    </c:choose>
	</div>
   </c:forEach>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<%@include file="/WEB-INF/include/Footer.jsp" %>
	</main>
    <script>
     const  goPostingEl  = document.getElementById('goPosting');
     goPostingEl.addEventListener('click', function(e) {
     });
     

   
  </script> 


</body>
</html>