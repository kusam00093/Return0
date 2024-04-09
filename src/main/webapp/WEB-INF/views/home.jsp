<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="/css/start.css" rel="stylesheet" />
    <link href="/css/test.css" rel="stylesheet" />
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
                <div><a href="/Loginform">로그인</a></div>   
   <div><a href="/writeform">회원가입</a></div>
      <div>&nbsp;</div>
      <div>
	   ${ sessionScope.login.com_name } 님 환영합니다<br>
      당신의 가입일은 ${ login.indate } 입니다<br>
      <a href="/logout">로그아웃</a>
	</div>	
              
            </ul>
          </div>
        </div>
      </header>
      <!------------------------------------  header---------------------------------------------- -->
      <!-- 여기가 사용할 공간  -->
      <main>
       
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
      </footer>
    </div>
  </body>
</html>


