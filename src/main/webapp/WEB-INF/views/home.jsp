<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
    
    
 <style>
       .main {
        display: flex;
        justify-content: center;
      }
      
      .content {
        display: flex;
      }
      
      .content .left {
        flex: 1;
        padding: 20px;
      }
      .content .left h2{
      
      }
      .content .left .person_date{
          border: 1px solid black;
          text-align: center;
           display: flex;
           flex-direction: column;
           align-items: center;
           padding: 10px 0;

      }
      .content .left .person_date > a{
         display: inline-block;
         border: 1px solid #3f98f7;
         border-radius: 5px; 
         padding: 2px 4px;
         color: #3f98f7;
         margin: 4px 0;
      }
      .content .left .profile_pic{
         width: 50%
      }
      
      
      .content .right {
        flex: 3;
        padding: 20px;
      }
      
      .content .tabs {
        display: flex;
      }
      
      .content .tab {
        background-color: #f2f2f2;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
      }
      
      .content .tab:hover {
        background-color: #ccc;
        font-weight: bold;
      }
      .content .tab.active{
      font-weight: bold;
      }
      
      .content .tab-panel {
        display: none;
      }
      
      .content .tab-panel.active {
        display: block;
        font-weight: bold;
      }
      table {
        border-collapse: collapse;
        width: 100%;
      }
      
      th, td {
        padding: 10px;
        border: 1px solid #ddd; /* 셀 테두리 스타일 지정 */
        text-align: center;
      }
      td{
      font-weight: normal;
   }
   	/* 니가 -0--------------------------- */

		  

		/* ------------------------------ */
    </style>
</head>
<body>
  
   <%@include file="/WEB-INF/include/Header.jsp" %>
   <main>
    <section class="inner"> 
		   <h2>Home</h2>
		   <div><a href="/Company/MyPage">기업마이페이지</a></div>
		   <div><a href="/Company/List">채용목록</a></div>
		   <div><a href="/User/UserProfile?user_id=wodud6967">마이페이지</a></div>   
		   <div><a href="/Board">커뮤니티</a></div>   
		   <div><a href="/Login">로그인</a></div>   
		   <div>검색창</div>   
		   
		   <div>&nbsp;</div>
    </section>
	 </main> 
   <%@include file="/WEB-INF/include/Footer.jsp" %> 
    
</body>
</html>






