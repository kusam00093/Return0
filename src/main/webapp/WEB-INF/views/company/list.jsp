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
	width: 80%;
	margin: 0 auto;
}

body {
    font-family: Arial, sans-serif; /* 글꼴 선택 */
    line-height: 1.6; /* 줄 간격 조정 */
}

h2 {
    color: #333; /* 제목 색상 조정 */
    font-size: 24px; /* 제목 폰트 크기 조정 */
    font-weight: bold; /* 제목 폰트 굵게 */
}

.sub_title {
    display: grid;
    grid-template-columns: repeat(4, 1fr); /* 그리드 레이아웃 사용 */
    font-size: 18px;
    font-weight: bold;
    padding: 10px;
    margin-left: 10px;
    background-color: #f2f2f2; /* 배경색 추가 */
    border-radius: 5px; /* 모서리 둥글게 */
}

.content1 {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    border: 1px solid #ddd;
    padding: 10px;
    border-radius: 5px;
    margin: 10px;
    background-color: #fff; /* 배경색 추가 */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
}

.td1, .td2, .td3, .td4, .td5 {
    padding: 10px; /* 내부 여백 추가 */
}

.td1, .td3, .td4 {
    text-align: center; /* 텍스트 가운데 정렬 */
}

.td5 {
    text-align: center;
}

.td5 a {
    display: inline-block;
    padding: 8px 16px;
    background-color: #007bff; /* 버튼 배경색 */
    color: #fff; /* 버튼 텍스트 색상 */
    border-radius: 3px;
    text-decoration: none;
    transition: background-color 0.3s ease; /* 호버 효과 추가 */
}

.td5 a:hover {
    background-color: #0056b3; /* 호버시 배경색 변경 */
}

#on_com_login {
    float: right;
}

@media (max-width: 767px) {
    main {
        width: 100%;
    }

    .sub_title, .content1 {
        grid-template-columns: repeat(2, 1fr); /* 작은 화면에서는 2열로 변경 */
    }
}
.content1:hover {
    background-color: #f2f2f2; /* 호버시 배경색 변경 */
    transition: background-color 0.3s ease; /* 호버 효과 부드럽게 변경 */
}
.img-container{
   height: 350px; 
   background-image: url('/img/intro.jpg');
   background-size: cover; 
   background-position: center; 
   display: flex;
   justify-content: center; 
   align-items: center; 
}
.posting_title{
	font-weight: bolder;
	text-align: center;
	font-size: 30px;
}
</style>
</head>
 <%@include file="/WEB-INF/include/Header.jsp" %>
<section class="img-container"></section>
<body>
	<main>

	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<input type="hidden" name="nowpage" value="${nowpage}">
   <h2 class="posting_title">채용 목록</h2>
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
 
   <div>&nbsp;</div>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
	<div class="sub_title">
      <div class="td1">번호</div>
      <div class="td2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 제목</div>
      <div class="td3">부서</div>
      <div class="td4"></div>
	</div>  
   <c:forEach  var="co" items="${postingList}">
	<div class="content1">
      <div class="td1">${co.row_number}</div>
      <div class="td2"><a href="/Company/PostingView?nowpage=${nowpage}&posting_pno=${co.posting_pno}"> ${co.posting_title}</a></div>
      <div class="td3">${co.posting_hope_department}</div>
                <c:choose>
			    <c:when test="${sessionScope.userLogin != null }">
			        <!-- 기업 사용자일 경우 -->
      <div class="td5"><a href="/Resume/ResumeApplyList?nowpage=${nowpage }&posting_pno=${co.posting_pno}">즉시지원</a></div>
			    </c:when>
			    </c:choose>
                <c:choose>
			    <c:when test="${sessionScope.companyLogin != null }">
			        <!-- 기업 사용자일 경우 -->
      <div class="td4"><div class="td4">${co.posting_enddate}</div></div>
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