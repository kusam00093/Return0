<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>기업 공고 상세보기</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <link href="/css/start.css" rel="stylesheet" />
    <link href="/css/test.css" rel="stylesheet" />

    <style>
    	body{
    		width : 80%;
    		margin : 0 auto;
    	}
    	
    	
		.title{
			font-weight: bolder;
			font-size: 30px;
			text-align : center;
		}
		
		form{
		}
		
		.ac{
			display : grid;
			grid-template-columns: 1fr 1fr ;
			border : 1px solid black;
			padding : 30px;
			border-radius: 10px;
		}
		
		.person{
			display : grid;
			grid-template-columns: 1fr 1fr 1fr;
			grid-template-rows: 1fr 1fr 1fr;
						border : 1px solid black;
			padding : 30px;
			border-radius: 10px;
		}
		
		.sub_title1{
			font-weight: bold;
		}
		
		.sub_title2{
			font-size: 20px;
			font-weight: bold;
			text-align: center;
		}
		
		.content{
			border : 1px solid black;
			border-radius: 5px;
			padding : 30px;
		}
		
		#inside_title{
			color: #3f98f7;
		
		}
        #goUpdate {
            display: block;
            width: 120px;
            margin: 20px auto;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        #goUpdate:hover {
            background-color: #0056b3;
        }
        
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
	button{
		margin-right: 50px;
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
		width : 150px;
	}
		
	}
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/include/Header.jsp" %>
  <input type="hidden" name="nowpage" value="${nowpage}">
  <input type="hidden" name="com_id" value="${com_id}">
  <input type="hidden" name="nowpage" value="${user_id}">
    <form action="/Resume">
        <div class="title">${map.posting_title}</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
      <div class="ac">
        <div class="apply">
        <div class="sub_title1">지원요건</div>
	        <div>&nbsp;</div>
	        <div>경력</div>
	        <div id="inside_title" >${map.posting_career}</div>
	        <div>지원부서</div>
	        <div id="inside_title">${map.posting_hope_department}</div>
	        <div>학력</div>
	        <div id="inside_title">${map.posting_grade}</div>
	        <div>스킬</div>
	        <div id="inside_title">자바</div>
        </div>
        <div class="company">
        <div class="sub_title1">기업 정보</div>
	        <div>&nbsp;</div>
	        <div>기업명</div>
	        <div id="inside_title">${map.com_name}</div>
	        <div>기업형태</div>
	        <div id="inside_title">${map.com_type}</div>
	        <div>마감기한</div>
	        <div id="inside_title">${map.posting_enddate}</div>
	        <div>회사주소</div>
	        <div id="inside_title">${map.com_address}</div>
	    </div>
      </div>
      	<div>&nbsp;</div>
      	<div>&nbsp;</div>
      
        <div class="sub_title2">당담자 정보</div>
      	<div>&nbsp;</div>
        <div class="person">
          <div>
	        <div>대표자</div>
	        <div>&nbsp;</div>
	        <div id="inside_title">${map.com_ceo}</div>
          </div>
          <div>
	        <div>전화번호</div>
	        <div>&nbsp;</div>
	        <div id="inside_title">${map.com_phone}</div>
          </div>
          <div>
	        <div>이메일</div>
	        <div>&nbsp;</div>
	        <div id="inside_title">${map.com_email}</div>
          </div>
           <div>&nbsp;</div>
	    </div>
	     <div>&nbsp;</div>
	      <div>&nbsp;</div>
        <div class="sub_title2">채용 정보</div>
      	<div>&nbsp;</div>
      	
        
        <div class = "content">
        <div>${map.posting_content}</div>
        </div>

    </form>
    <c:if test="${sessionScope.com_id != null || com_id != ''}">
        <button id="goUpdate" onclick="goToUpdate()">지원하기</button>
    </c:if>
    

   <div>&nbsp;</div>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
   <div>&nbsp;</div>
	<div class="sub_title">
      <div class="td1">번호</div>
      <div class="td2">제목</div>
      <div class="td3">부서</div>
      <div class="td4">마감기한</div>
	</div>  
   <c:forEach  var="co" items="${postingList}">
	<div class="content1">
      <div class="td1">${co.row_number}</div>
      <div class="td2"><a href="/Company/PostingView?nowpage=${nowpage}">${co.posting_title}</a></div>
      <div class="td3">${co.posting_hope_department}</div>
      <div class="td4">${co.posting_enddate}</div>
      <div class="td5"><input type="submit" value = "즉시지원"></div>
	</div>
   </c:forEach>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<main></main>
    
    <script>
        function goToUpdate() {
            location.href = '/Company/Posting/UpdateForm?Pno=';
        }
    </script>
    <div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
    
    <%@ include file="/WEB-INF/include/Footer.jsp" %>
</body>
</html>