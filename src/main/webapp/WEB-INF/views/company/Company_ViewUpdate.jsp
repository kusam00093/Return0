<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 정보 수정</title>
</head>
<body>
	<form action="/Company/PostingUpdate" method="post">
	  <table id="table" >
	    <tr>
	    
	      <td>제목</td>
	      <td>내용</td>
	      <td>필요경력</td>
	      <td>필요학력</td>
	      <td>희망부서</td>
	      <td>프로필</td>
	    </tr>
	   
	    

	    <tr>
	      <td></td>
	      <td> <input type="text" name ="posting_title"> </td>
	      <td><textarea name="posting_content"></textarea></td>
	      <td><input type="text" name ="posting_career"></td>
	      <td><input type="text" name ="posting_grade"></td>
	      <td><input type="text" name ="posting_hope_department"></td>
	      <td><input type="text" name ="posting_com_profile"></td>
    	      
	    </tr>

	    
	  </table>
	</form>
</body>
</html>