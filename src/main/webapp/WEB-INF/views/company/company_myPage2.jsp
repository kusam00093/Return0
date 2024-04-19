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
		  background-color: #f7faf9;
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
		.f-col{
			background-color: #f7faf9;
		}
		main h4{
		margin: 20px 0}
		main button{
			background-color : inherit;
			border:none; box-shadow:none; border-radius:0; padding:0; 
			
		}
		main button.bookmark{
			
			background: url("/img/bookmark-check.svg");
			background-size: cover;
			display: inline-block;
			width : 30px;
			height: 30px;
			margin-top: 2px
		}
		main button.bookmark:hover {
			background: url("/img/bookmark-check-fill.svg");
			background-size: cover;
		}
		
    </style>
  </head>
  <body>

    <div id="wrap">
		<%@include file="/WEB-INF/include/Header.jsp"%>
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
	       	<p>${ vo.com_name }</p>
	       	<p>${ vo.com_id }</p>
	       	<p>${ vo.com_email }</p>
	       	<p>${ vo.com_phone }</p>
	       	<p>${ vo.com_ceo }</p>
	       	<a href="/Company/Comuser/View?nowpage=${nowpage}&com_id=${com_id}">기업회원정보보기</a>
        </div>
      </div>
      <div class="right">
        <div class="tabs">
          <button class="tab" onclick="openTab0">내가 작성한공고</button>
          <button class="tab" onclick="openTab1">추천서비스</button>
          <button class="tab" onclick="openTab2">북마크</button>

        </div>
        <div class="tab-content">
          <div class="tab-panel">
          	<h4>내가 작성한 공고</h4>
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th>제목</th>
		                <th>모집부서</th>
		                <th>마감기한</th>
		                <th>수정</th>
		                <th>삭제</th>
		              </tr>
		            </thead>
		            <tbody>
		          
		              <c:forEach var="co" items="${postingList}"> 
		               <tr>
		                  <td>${co.row_number}</td>
		                  <td><a href="/Company/MyPosting?nowpage=${nowpage}&posting_pno=${co.posting_pno}&com_id=${vo.com_id}">
		                  ${co.posting_title}</a></td>
		                  <td>${co.posting_hope_department}</td>
		                  <td>${co.posting_enddate}</td>
		                  <td><a href="/Company/Posting/UpdateForm?nowpage=${nowpage}&posting_pno=${co.posting_pno}&com_id=${vo.com_id}" class="btn btn-ifno" id="goView">수정하기</a></td>
		                  <td><a href="/Company/MyPosting/Delete?nowpage=${nowpage}&posting_pno=${co.posting_pno}" class="btn btn-ifno" id="goDelete">삭제하기</a></td>
		                </tr>
		              </c:forEach>

		              <!-- 나머지 행들도 유사하게 추가 -->
		            </tbody>
		          </table>
		        </li>
		      </ul>
          </div>
          <div class="tab-panel">
           <h4>회원님의 기업과 어울리는 이력서들입니다 </h4>
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr class ="f-col">
		                <th>번호</th>
		                <th>이름</th>
		                <th>지원한 공고</th>
		                <th>일치하는 기술</th>
		                <th>북마크</th>
		                <th>비고</th>
		              </tr>
		            </thead>
 		          <tbody> 
						<c:forEach var="vo" items="${ recommendList }"
 							varStatus="loop"> 
							<tr> 
								<td>${vo.row_number }</td>
								<td>${vo.user_name }</td>
								<td>${vo.posting_title}</td>
								<td>${vo.user_stack_name }</td>
								<td><button id="toggleBookmarkButton" > 북마크</button></td>
								<td><button type="button" class="btn btn-warning">상세보기</button></td>
 							</tr>
						</c:forEach> 
		            </tbody>
		          </table>
		        </li>
		      </ul>
          </div>
          <div class="tab-panel">
          	<h4>회원님이 북마크한 이력서입니다.</h4>
          	<ul class="job-list">
		        <li>
		          <table>
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th>이름</th>
		                <th>지원한 공고</th>
		                <th>일치하는 기술</th>
		                
		              </tr>
		            </thead>
		            <tbody>
		              <tr>

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






<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>


<!--------------------------------------------footer---------------------------------------------------  -->
<%@include file="/WEB-INF/include/Footer.jsp"%>
  
  <script>
  document.addEventListener('DOMContentLoaded', function() {
      displayBookmarks();
      var com_id = "${resumeVo.com_id}";
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
      fetch(`/Bookmarks/${resumeVo.com_id}`)
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
 
 function toggleBookmark(cb_cbno ,posting_pno){
	 
	    var com_id = "${resumeVo.com_id}"; // 예시: userVo에서 user_id를 가져옴
	    
	       
	    fetch(`/Bookmarks/add/\${com_id}/\${posting_pno}`, {
	        method: 'POST',
	        headers: {
	            'Content-Type': 'application/json'
	        },
	        body: JSON.stringify({ com_id: com_id,cb_cbno: cb_cbno, posting_pno: posting_pno })
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
 <script>
 document.addEventListener('DOMContentLoaded', function() {
	    // '#toggleBookmarkButton' 요소를 찾아 변수에 할당
	    var toggleBookmarkButton = document.getElementById('toggleBookmarkButton');
	    
	    // '#toggleBookmarkButton' 요소에 클릭 이벤트 리스너 추가
	    toggleBookmarkButton.addEventListener('click', function() {
	        // fetch를 사용하여 AJAX 요청 보내기
	        fetch('toggleBookmark', {
	            method: 'POST'
	        })
	        .then(function(response) {
	            if (!response.ok) {
	                throw new Error('Network response was not ok');
	            }
	            return response.text();
	        })
	        .then(function(data) {
	            // 성공적으로 응답 받았을 때 실행되는 부분
	            if (data === "북마크가 추가되었습니다.") {
	                alert('추가되었습니다.');
	                var bookmarkIcon = document.getElementById('bookmarkIcon');
	                bookmarkIcon.setAttribute('src', 'bookmark-check.svg');
	            } else {
	                alert('삭제되었습니다.');
	                var bookmarkIcon = document.getElementById('bookmarkIcon');
	                bookmarkIcon.setAttribute('src', 'bookmark-check-fill.png');
	            }
	            alert(data); // 서버에서 반환한 응답을 알림으로 표시
	        })
	        .catch(function(error) {
	            // 에러 발생 시 실행되는 부분
	            console.error('There was a problem with the fetch operation:', error);
	            alert('오류가 발생했습니다.');
	        });
	    });
	});
</script>
 <script>
	const  goBookmarkEl  = document.getElementById('bookmarkbutton');
  	goBookmarkEl.addEventListener('click', function(e) {
	alert('테스트');
  	});
 
 </script>
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