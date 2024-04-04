<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Hello, world!</title>
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
    </style>
  </head>
  <body>
  
    <div id="wrap">
      <header>
        <div class="inner">
          <div id="gnb">
            <h1 id="logo">
              <a href="#"><img src="/img/logo02.png" /></a>
            </h1>
            <ul id="navbar">
              <li><a href="#">채용</a></li>
              <li><a href="#">이력서</a></li>
              <li><a href="#">마이페이지</a></li>
            </ul>
          </div>
        </div>
      </header>
      <!------------------------------------  header---------------------------------------------- -->
      <!-- 여기가 사용할 공간  -->
       <main>
    <section class="content inner">
    	
      <div class="left">
        <h2>프로필</h2>
        <div class ="person_date">
        	<div class ="profile_pic">
       			<a href ="#"><img src ="/img/defaultProfile.png"></a>
	       	</div>
	       	<p>${ userVo.user_name }</p>
	       	<p>${ userVo.user_email}</p>
	       	<p>${ userVo.user_phone}</p>
	       	<p>지원 횟수 : 2</p>
	       	<a>채용공고보러가기</a>
	       	<a>이력서수정하기</a>
	       	<a>개인정보수정하기</a>
        </div>
      </div>
      <div class="right">
        <div class="tabs">
          <button class="tab" onclick="openTab0">지원현황</button>
          <button class="tab" onclick="openTab1">추천서비스</button>
          <button class="tab" onclick="openTab2">북마크</button>
        </div>
        <div class="tab-content">
          <div class="tab-panel">
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr>
		                <th>기업명</th>
		                <th>공고</th>
		                <th>제목</th>
		                <th>분야</th>
		                <th>이력서</th>
		                <th>지원일자</th>
		                <th>삭제</th>
		                <th>결과</th>
		              </tr>
		            </thead>
		            <tbody>
		          
		              <c:forEach var="item" items="${map }"> 
		               <tr>
		              	<td>${item.com_name }</td>
		              	<td>${item.posting_pno }</td>
		              	<td>${item.posting_title }</td>
		              	<td>${item.posting_career }</td>
		              	<td><a href="#">이력서 보기</a></td>
		              	<td>${item.posting_startdate }</td>
		              	<td><button type="button" class="btn btn-warning">수정</button></td>
		                <td><button type="button" class="btn btn-info">대기</button></td>
		                </tr>
		              </c:forEach>
		              <tr>
		                <td>기업명 1</td>
		                <td>공고 1</td>
		                <td>제목 1</td>
		                <td>분야 1</td>
		                <td><a href="#">이력서 보기</a></td>
		                <td>2024-04-04</td>
		                <td><button type="button" class="btn btn-warning">수정</button></td>
		                <td><button type="button" class="btn btn-info">대기</button></td>
		              </tr>
		              <!-- 나머지 행들도 유사하게 추가 -->
		            </tbody>
		          </table>
		        </li>
		      </ul>
          </div>
          <div class="tab-panel">
           <h4>회원님의 기술스택과 일치하는 기업입니다.</h4>
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr>
		                <th>기업명</th>
		                <th>공고</th>
		                <th>분야</th>
		                <th>마감</th>
		                
		              </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td>기업명 1</td>
		                <td>공고 1</td>	     
		                <td>분야 1</td>		  
		                <td>2024-04-04</td>
		              </tr>
		            </tbody>
		          </table>
		        </li>
		      </ul>
          </div>
          <div class="tab-panel">
          	<h4>회원님이 북마크한 기업입니다.</h4>
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr>
		                <th>기업명</th>
		                <th>공고</th>
		                <th>분야</th>
		                <th>마감</th>
		                
		              </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td>기업명 1</td>
		                <td>공고 1</td>	     
		                <td>분야 1</td>		  
		                <td>2024-04-04</td>
		              </tr>
		            </tbody>
		          </table>
		        </li>
		      </ul>
          </div>
        </div>
      </div>
    </section>
  </main>








<!--------------------------------------------footer---------------------------------------------------  -->
      <footer>
        <div class="inner">
          <div class="info">
            <div class="info_left">
              <p>Need more information</p>
              <p>Write your to us and our speciallist will get back to you</p>
            </div>
            <div class="info_right">
              <button>Button</button>
            </div>
          </div>
          <ul class="support">
            <li class="first"><a href="#">회사소개</a></li>
            <li><a href="#">개인정보처리방침</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">청소년 보호방침</a></li>
            <li><a href="#">지식재산권센터</a></li>
            <li><a href="#">광고신청</a></li>
          </ul>
          <div class="info_contents">
            <dl>
              <dd>구직Plus</dd>
              <dt>대표자 :</dt>
              <dt>그린컴퓨터</dt>
              <dd>부산광역시 부산진구 중앙대로 749 15(범향빌딜 4층)</dd>
              <dt>고객센터 :</dt>
              <dd>
                <a href="tel:1111-1111" title="tel:1111-1111">1111-1111</a>
                <em>(09:00 ~ 18:00 / 토, 일, 공휴일 휴무) </em>
              </dd>
              <br />
              <dt>이메일 :</dt>
              <dd><a href="#">wodud6967@naver.com</a></dd>

              <dt>사업자등록번호 :</dt>
              <dd>118-42-23255</dd>
              <dt>통신판매업신고 :</dt>
              <dd>
                "진구 제02-532-678호"
                <a href="#">사업자정보확인</a>
              </dd>
            </dl>
          </div>
          <i class="bi bi-youtube"></i>
        </div>
        <a href="https://www.flaticon.com/kr/free-icons/" title="사용자 아이콘">사용자 아이콘 제작자: Smashicons - Flaticon</a>
      </footer>
    </div>
  
  <script>
  document.addEventListener('DOMContentLoaded', function() {
	    const tabs = document.querySelectorAll('.tab');
	    const tabPanels = document.querySelectorAll('.tab-panel');

	    tabs.forEach((tab, index) => {
	        tab.addEventListener('click', () => {
	            // Remove 'active' class from all tabs and tab panels
	            tabs.forEach(tab => tab.classList.remove('active'));
	            tabPanels.forEach(panel => panel.classList.remove('active'));

	            // Add 'active' class to the clicked tab and corresponding tab panel
	            tab.classList.add('active');
	            tabPanels[index].classList.add('active');
	        });
	    });
	});
  </script> 
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  
  </body>
</html>



