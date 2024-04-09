<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 40px; 
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    main {
        background-color: #fff;
        padding: 60px;
        border-radius: 20px; 
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); 
        width: 500px; 
    }

    h2 {
        text-align: center;
        margin-bottom: 40px; 
        color: #3f98f7;
    }

    form {
        text-align: center;
    }

    table {
        margin: 0 auto;
        width: 100%;
    }

    table td {
        padding: 15px; 
        text-align: left;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"],
    input[type="button"] {
        width: calc(100% - 30px);
        padding: 15px; 
        margin-bottom: 30px; 
        border: 1px solid #ddd;
        border-radius: 8px; 
        box-sizing: border-box;
        font-size: 18px; 
    }

    input[type="submit"],
    input[type="button"] {
        background-color: #3f98f7;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
        background-color: #1e7fd7;
    }

    #doubleCheckMsg {
        margin-left: 10px; 
        color: #ff0000; 
    }

    .half-input {
        width: calc(50% - 10px); 
        margin-right: 10px; 
    }
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>
<body>
  <main>
    <input type="hidden" name="nowpage" value="${nowpage}">
  <input type="hidden" name="com_id" value="${com_id}">
  <input type="hidden" name="nowpage" value="${user_id}">
    <h2>공고 등록</h2>
    <form action="/Company/Posting/Write?nowpage=${nowpage}" method="POST">
        <table>
            <tr>
            
            	<td>아이디</td>
                <td>
                    <input type="text" name="com_id" value="${com_id}" readonly />
                </td>
            </tr>
            <tr>
            	<td>공고 제목</td>
                <td>
                    <input type="text" name="posting_title" placeholder="제목을 입력하세요" value="${vo.posting_title }" />
                </td>
            </tr>
            <tr>
            	<td>필요경력</td>
                <td><input type="text" name="posting_career" placeholder="필요경력" value="${vo.posting_career }"/></td>
            </tr>
            <tr>
            	<td>필요 학력</td>
                <td><input type="text" name="posting_grade" placeholder="필요학력" value="${vo.posting_grade }"/></td>
            </tr>
            <tr>
            	<td>모집부서</td>
                <td><input type="text" name="posting_hope_department" placeholder="모집부서를 적으세요" value="${vo.posting_hope_department }"/></td>
            </tr>
            <tr>
            	<td>사진</td>
                <td><input type="text" name="posting_com_profile" placeholder="사진" value="${vo.posting_com_profile }"/></td>
            </tr>
            <tr>
            	<td>마감기한</td>
                <td><input type="date" name="posting_enddate" placeholder="날짜를 선택하세요" value="${vo.posting_enddate }"/></td>
            </tr>
            <tr>
            	<td>채용 공고 내용</td>
                <td><textarea name="posting_content" placeholder="공고 내용을 입력하세요">${vo.posting_content }</textarea></td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록하기" />
                </td>
            </tr>
        </table>
    </form>
</main>
      

  
</body>
</html>


   


