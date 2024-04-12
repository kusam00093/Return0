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
        <p>${ vo.com_email }</p>
        <p>${ vo.com_phone }</p>
        <p>${ vo.com_ceo }</p>
        <a href="/Company/Comuser/View?nowpage=${nowpage}&com_id=${vo.com_id}">기업회원정보보기</a>
    </div>
  </div>
  <div class="right">
    <h4>내가 작성한 공고에 지원자 현황</h4>
    <ul class="job-list">
        <li>
          <table>
            <thead>
              <tr>
                <th>번호</th>
                <th>이름</th>
                <th>이메일</th>
                <th>전화번호</th>
                <th>상세보기</th>
                <th>비고</th>
              </tr>
            </thead>
            <tbody>
          
              <c:forEach var="vo" items="${ResumeList}"> 
               <tr>
                  <td>${vo.row_number}</td>
                  <td>${vo.user_name}</a></td>
                  <td>${vo.user_email}</td>
                  <td>${vo.user_phone}</td>
                  <td><a href="/Resume/View?nowpage=${nowpage}" class="btn btn-ifno" id="goView">상세보기</a></td>
                  <td>											    
                                         			<c:choose>
                                             			 <c:when test="${item.applicant_recode_result == 1}">
                                                  			<button type="button" class="btn btn-info">대기</button>
                                              			</c:when>
                                             		    <c:when test="${item.applicant_recode_result == 0}">
                                                 		    <button type="button" class="btn btn-danger">불합격</button> 
                                                 	   </c:when>
                                        		    </c:choose>
                                                 </td>
                </tr>
              </c:forEach>
             </tbody>
             </table>
             </li>
             </ul>
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
</div>
  
<script>
function displayBookmarks() {
    // 북마크를 가져오는 fetch 요청
    fetch(`/Bookmarks/${userId}`)
        .then(response => {
            // 응답을 확인하고 정상적으로 처리되지 않은 경우 오류 처리
            if (!response.ok) {
                throw new Error('Failed to fetch bookmarks');
            }
            // JSON 형식으로 파싱하여 반환
            return response.json();
        })
        .then(bookmarks => {
            // bookmarks가 배열인지 확인하고 forEach로 반복하여 처리
            if (Array.isArray(bookmarks)) {
                bookmarks.forEach(bookmark => {
                    const postingNum = bookmark.posting_pno;
                    // postingNum을 이용하여 해당 공고를 화면에 표시
                    const bookmarkButton = document.getElementById(`bookmark-${postingNum}`);
                    if (bookmarkButton) {
                        // 북마크 표시
                        bookmarkButton.classList.add('bookmarked');
                    }
                });
            } else {
                throw new Error('Invalid data format');
            }
        })
        .catch(error => console.error('Error fetching bookmarks:', error));
}

const  goDeleteEl  = document.getElementById('goDelete');
goDeleteEl.addEventListener('click', function(e) {
	alert('삭제되었습니다');
})
</script> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  
</body>
</html>