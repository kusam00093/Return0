<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
   crossorigin="anonymous">
<title>Hello, world!</title>
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />


<style>
main {
   display: flex;
   justify-content: center;
   height: 800px;
}

.content {
   display: flex;
}

.content .left {
   flex: 1;
   padding: 20px;
   margin-top: 75px;
}

.content .left h2 {
   
}

.content .left .person_date {
   border: 1px solid #d9d9d9;
   text-align: center;
   display: flex;
   flex-direction: column;
   align-items: center;
   padding: 10px 0;
}

.content .left .person_date>a {
   display: inline-block;
   border: 1px solid #3f98f7;
   border-radius: 5px;
   padding: 2px 4px;
   color: #3f98f7;
   margin: 4px 0;
}

.content .left .profile_pic {
   width: 50%
}

.content .left .person_date a {
   width: 150px
}

.content .right {
   flex: 3;
   padding: 20px;
}

.content .tabs {
   display: flex;
}

.content .tab {
   background-color: #f7faf9;
   border: none;
   padding: 10px 20px;
   cursor: pointer;
}

.content .tab:hover {
   background-color: #ccc;
   font-weight: bold;
}

.content .tab.active {
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

td {
   font-weight: normal;
}

.f-col {
   
}
.pagination{
   display: flex;
   justify-content: center;
   margin-top: 20px;
   
}

.pagination .page-link{
 color: black;
}

main h4 {   
   margin: 20px 0
}

main button {
   background-color: inherit;
   border: none;
   box-shadow: none;
   border-radius: 0;
   padding: 0;
}

main button.bookmark {
   background: url("/img/bookmark-check.svg");
   background-size: cover;
   display: inline-block;
   width: 30px;
   height: 30px;
   margin-top: 2px
}

main button.bookmark:hover {
   background: url("/img/bookmark-check-fill.svg");
   background-size: cover;
}

main button.bookmarkOn {
   background: url("/img/bookmark-check-fill.svg");
   background-size: cover;
}
</style>
</head>
<body>

   <%@include file="/WEB-INF/include/Header.jsp"%>
   <!------------------------------------  header---------------------------------------------- -->
   <!-- 여기가 사용할 공간  -->
   <main>
      <section class="content inner">

         <div class="left">
            <h2>프로필</h2>
            <div class="person_date">
               <div class="profile_pic">
                  <a href="#"><img src="/img/defaultProfile.png"></a>
               </div>
               <p>${ userVo.user_name }</p>
               <p>${ userVo.user_email}</p>
               <p>${ userVo.user_phone}</p>
               <p>지원 횟수 :${totalSup}</p>
               <a href="/Company/List?nowpage=1">채용공고보러가기</a>
                <a href=" /Resume/List?user_id=${ userVo.user_id }">이력서수정하기</a>
                 <a href="/User/View/Detail?user_id=${userVo.user_id }&nowpage=${nowpage}">개인정보상세보기</a>
            </div>
         </div>
         <div class="right">
            <div class="tabs">
               <button class="tab" id="tab1">지원현황</button>
               <button class="tab" id="tab2">추천서비스</button>
               <button class="tab" id="tab3">북마크</button>
            </div>
            <div class="tab-content">
               <div class="tab-panel">
                  <h4>회원님의 지원하신 기업입니다.</h4>
                  <ul class="job-list">
                     <li>
                        <table>
                           <thead>
                              <tr>
                                 <th>기업명</th>

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

                                    <td>${item.posting_title }</td>
                                    <td>${item.posting_career }</td>
                                    <td><a href="#">이력서 보기</a></td>
                                    <td>${item.posting_startdate }</td>
                                    <td><button type="button" class="btn btn-warning">수정</button></td>
                                    <td><c:choose>
                                          <c:when test="${item.applicant_recode_result == 1}">
                                             <button type="button" class="btn btn-info">대기</button>
                                          </c:when>
                                          <c:when test="${item.applicant_recode_result == 0}">
                                             <button type="button" class="btn btn-danger">불합격</button>
                                          </c:when>
                                       </c:choose></td>
                                 </tr>
                              </c:forEach>
                           </tbody>
                        </table>
                     </li>
                  </ul>
               </div>
               <div id="first-view" class="tab-panel">
                  <h4>회원님의 기술스택과 일치하는 기업입니다.</h4>
                  <ul class="job-list">
                     <li>
                        <table>
                           <thead>
                              <tr class="f-col">
                                 <th>기업명</th>
                                 <th>매칭스택</th>
                                 <th>분야</th>
                                 <th>마감</th>
                                 <th>북마크></th>
                                 <th>지원</th>
                              </tr>
                           </thead>
                           <tbody id="bookmark-container">
                              <c:forEach var="item" items="${ response.list }"
                                 varStatus="loop">
                                 <tr>
                                    <td>${item.com_name }</td>
                                    <td>${item.matching_stack_count }</td>
                                    <td>${item.posting_hope_department }</td>
                                    <td>${item.posting_startdate }</td>
                                    <td><button class="bookmark" ub_ubno="${item.ub_ubno }"
                                          posting_pno="${ item.posting_pno}"
                                          onclick="toggleBookmark( ${item.ub_ubno}, ${item.posting_pno})"></button></td>
                                    <td><button type="button" class="btn btn-warning">지원하기</button></td>
                                 </tr>
                              </c:forEach>

                              <%-- <c:forEach var="item" items="${ rec }" varStatus="loop">   
                    <tr>
                      <td>${item.com_name }</td>
                      <td>${item.matching_stack_count }</td>        
                      <td>${item.posting_hope_department }</td>        
                      <td>${item.posting_startdate }</td>
                      <td><button class="bookmark"  ub_ubno="${item.ub_ubno }" posting_pno="${ item.posting_pno}" onclick="toggleBookmark( ${item.ub_ubno}, ${item.posting_pno})"></button></td>
                      <td><button type="button" class="btn btn-warning">지원하기</button></td>
                    </tr>
                  </c:forEach> --%>
                           </tbody>
                        </table>
                     </li>
                  </ul>
                  <%@include file="/WEB-INF/include/paging.jsp"%>
               </div>
               <div class="tab-panel" id="book-id">
                  <h4>회원님이 북마크한 기업입니다.</h4>
                  <ul class="job-list">
                     <li>
                        <table>
                           <thead>
                              <tr>
                                 <th>기업명</th>
                                 <th>공고</th>
                                 <th>분야</th>
                                 <th>마감일</th>

                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach var="item" items="${ book }" varStatus="loop">
                                 <tr>
                                    <td>${item.com_name }</td>
                                    <td>${item.posting_title }</td>
                                    <td>${item.posting_career }</td>
                                    <td>${item.posting_startdate }</td>
                                 </tr>
                              </c:forEach>
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
   <%@include file="/WEB-INF/include/Footer.jsp"%>
   </div>

   <script>
   document.addEventListener('DOMContentLoaded', function() {
       displayBookmarks();
       var user_id = "${userVo.user_id}";
       var first_view = document.querySelector('#first-view');
       first_view.classList.add('active');
       
   });  
  document.addEventListener('DOMContentLoaded', function() {
       //로드시 북마크 부터 표시 
       
     
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
               
               displayBookmarks();
               
           });
           
          
           
       });
       
     
   });
  
  function displayBookmarks() {
       // 북마크를 가져오는 fetch 요청
      // console.log("Fetching bookmarks for user:", ${userVo.user_id}); // 추가된 부분: 요청 로그 출력
      // alert('Fetching bookmarks for user:", ${userVo.user_id}');
       fetch(`/Bookmarks/${userVo.user_id}`)
           .then(response => {
               // 응답을 확인하고 정상적으로 처리되지 않은 경우 오류 처리
               if (!response.ok) {
                   throw new Error('Failed to fetch bookmarks');
               }
               // JSON 형식으로 파싱하여 반환
               return response.json();
           })
           .then(bookmarks => {
               console.log("Received bookmarks:", bookmarks); // 추가된 부분: 응답 로그 출력
               // bookmarks가 배열인지 확인하고 forEach로 반복하여 처리
               if (Array.isArray(bookmarks)) {
                   bookmarks.forEach(bookmark => {
                      
                       let postingNum = bookmark.posting_pno;
                       console.log("postingNum" + postingNum); // 1117 ,1116 ,1115
                       
                      
                       
                        // postingNum을 이용하여 해당 공고를 화면에 표시
                         /* const buttonContainer = document.getElementById('bookmarkContainer${loop.index}');  */// 버튼을 추가할 요소의 ID를 사용합니다.
                        const buttonContainers = document.querySelector('#bookmark-container');
                        // console.log(buttonContainers);
                       
                      /*   const bookmarkButton = document.querySelector(`button[posting_pno="${postingNum}"]`); */
                      
                       const buttons = document.querySelectorAll(`button[posting_pno="\${postingNum}"]`);
                     //   console.log(buttons);
                        buttons.forEach(button => {
                            
                            if (button) {
                                button.classList.add('bookmarkOn');
                            }
                        });
                   });
               } else {
                   throw new Error('Invalid data format');
               }
           })
           .catch(error => console.error('Error fetching bookmarks:', error));
   }
  
  function toggleBookmark(ub_ubno ,posting_pno){
    
       var user_id = "${userVo.user_id}"; // 예시: userVo에서 user_id를 가져옴
       
          
       fetch(`/Bookmarks/add/\${user_id}/\${posting_pno}`, {
           method: 'POST',
           headers: {
               'Content-Type': 'application/json'
           },
           body: JSON.stringify({ user_id: user_id,ub_ubno: ub_ubno, posting_pno: posting_pno })
       })
       .then(response => {
           if (!response.ok) {
               throw new Error('Failed to toggle bookmark');
           }
           return response.json(); 
           
       })//.then(response
       .then(bookJson =>{
                // 여기
                  const button = document.querySelector(`button[posting_pno="\${posting_pno}"]`);
                  if (button) {
                      if (button.classList.contains('bookmarkOn')) {
                          button.classList.remove('bookmarkOn');
                          alert('테스트 클래스가 지워집니다.');
                      } else {
                          button.classList.add('bookmarkOn');
                          alert('테스트 클래스가 생성됩니다.');
                      }
                  }//if (button)
                  const tbody = document.querySelector('#book-id tbody');
             
                  if(tbody){
                     tbody.remove();
                  }
                  const newTbody = document.createElement('tbody');
                  bookJson.forEach(item => {
                      // 각각의 book 데이터로부터 <tr> 요소를 생성합니다.
                      const tr = document.createElement('tr');
                      
                      // 각 필드에 대한 데이터를 삽입하여 <td> 요소를 생성하고 <tr> 요소에 추가합니다.
                      const td1 = document.createElement('td');
                      td1.textContent = item.com_name;
                      tr.appendChild(td1);
                      
                      const td2 = document.createElement('td');
                      td2.textContent = item.posting_title;
                      tr.appendChild(td2);
                      
                      const td3 = document.createElement('td');
                      td3.textContent = item.posting_career;
                      tr.appendChild(td3);
                      
                      const td4 = document.createElement('td');
                      td4.textContent = item.posting_startdate;
                      tr.appendChild(td4);
                      
                      // 생성한 <tr> 요소를 tbody에 추가합니다.
                      newTbody.appendChild(tr);
                  });
                  document.querySelector('#book-id table').appendChild(newTbody);
                
             })
       .catch(error => console.error('Error toggling bookmark:', error));
   }
  </script>
   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"></script>

</body>
</html>


