<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 내용 조회</title>
<link rel="icon" type="image/png" href="/img/logo02.png" />
<link rel="stylesheet"  href="/css/main.css" />
<link rel="stylesheet"  href="/css/stat.css" />
<link rel="stylesheet"  href="/css/test.css" />
<style>

#table {
    border-collapse: separate; /* 바깥 테두리를 제거하기 위해 separate로 변경 */
    border-spacing: 0; /* 셀 사이의 간격을 없애기 위해 0으로 설정 */
    width: 50%;
    color: #333;
    font-family: Arial, sans-serif;
    font-size: 14px;
    text-align: left;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    margin: auto;
    margin-top: 50px;
    margin-bottom: 50px;
}

#table td {
    text-align: center;
    padding: 10px;
    border: none; /* 바깥 테두리를 제거 */
}

#table td:nth-of-type(1),
#table td:nth-of-type(3) {
    width: 150px;
    background-color: #3f98f7;
    color: white;
    border: 1px solid #fff; /* 안쪽 테두리를 흰색으로 설정 */
}

#table td:nth-of-type(2),
#table td:nth-of-type(4) {
    width: 250px;
    border: 1px solid #fff; /* 안쪽 테두리를 흰색으로 설정 */
}

#table tr:nth-of-type(3) td:nth-of-type(2) {
    text-align: left;
}

#table tr:nth-of-type(4) td[colspan] {
    height: 250px;
    width: 600px;
    text-align: left;
    vertical-align: baseline;
}

#table tr:last-child td {
    background-color: white;
    color: black;
}

footer {
    text-align: center;
    margin-top: 400px;
    padding: 10px;
    background-color: #f2f2f2;
    border-top: 1px solid #ddd;
}

h2 {
    text-align: center;
    margin-top: 50px;
    margin-bottom: 30px;
}

main {
    display: flex;
    justify-content: center;
}
.btn-custom {
    height: 35px; /* 원하는 높이값(px)으로 조절하세요 */
    line-height: 35px; /* 높이값보다 작은 값으로 설정하세요 */
}
</style>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>

    <%@include file="/WEB-INF/include/Header.jsp" %>
</head>
<body>
    <h2>게시글 내용 조회</h2>
  <main>
    
  
    <table id="table">
     <tr>
       <td>글번호</td>
       <td>${ vo.board_bno }</td>
       <td>조회수</td>
       <td>${ vo.board_hit }</td>     
     </tr>
     <tr>
       <td>작성자</td>
       <td>${ vo.user_id }</td>
       <td>작성일</td>
       <td>${ vo.board_indate }</td>
     </tr>
     <tr>
       <td>제목</td>
       <td colspan="3">${ vo.board_title }</td>  
     </tr>
     <tr>
       <td>내용</td>
       <td colspan="3">${ vo.board_conent }</td>
     </tr>  
     <tr>
    <tr>
    <td colspan="4">
        <input class="btn btn-primary btn-sm btn-custom" type="button" value="새 글쓰기" onclick="location.href='/BoardPaging/WriteForm?user_id=${vo.user_id}&nowpage=${nowpage}'" />
        <input class="btn btn-warning btn-sm btn-custom" type="button" value="수정" onclick="location.href='/BoardPaging/UpdateForm?board_bno=${vo.board_bno}&user_id=${vo.user_id}&nowpage=${nowpage}'" />
        <input class="btn btn-danger btn-sm btn-custom" type="button" value="삭제" onclick="location.href='/BoardPaging/Delete?board_bno=${vo.board_bno}&user_id=${vo.user_id}&nowpage=${nowpage}'" />
        <input class="btn btn-secondary btn-sm btn-custom" type="button" value="목록으로" onclick="location.href='/BoardPaging/List?user_id=${vo.user_id}&nowpage=${nowpage}'" />
        <input class="btn btn-info btn-sm btn-custom" type="button" value="이전으로" onclick="history.back()" />
        <input class="btn btn-success btn-sm btn-custom" type="button" value="Home" onclick="location.href='/'" />
    </td>
</tr>


    
    </table>  

    
  </main>
  
  <script>
    const  goListEl  = document.getElementById('goList');
    goListEl.addEventListener('click', function(e) {
        location.href = '/BoardPaging/List?user_id=${user_id}&nowpage=${nowpage}';
    })
  
  </script>
  <%@include file="/WEB-INF/include/Footer.jsp" %>
</body>
</html>
