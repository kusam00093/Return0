<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <main>
    <section class="content inner">
       
      <div class="left">
        <h2>프로필</h2>
        <div class ="person_date">
           <div class ="profile_pic">
                <a href ="#"><img src ="/img/defaultProfile.png"></a>
             </div>
             <p>강재영</p>
             <p>wodud6967@naver.com</p>
             <p>010-4808-6967</p>
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
	
</body>
</html>