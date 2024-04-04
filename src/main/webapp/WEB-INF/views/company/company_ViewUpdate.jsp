<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원정보 수정하기</title>
</head>
<body>

	<form action="/Company/View/Update" method="post">

	  <table id="table" >
	    <tr>
		  		    
	      <td>기업아이디</td>
	      <td>기업이름</td>
	      <td>기업비밀번호</td>
	      <td>기업형태</td>
	      <td>사업자등록번호</td>
	    </tr>  
	    <tr>
	      <td> <input type="text" name ="com_id"> </td>
	      <td> <input type="text" name ="com_name"> </td>
	      <td> <input type="text" name ="com_passwd"> </td>
	      <td> <input type="text" name ="com_type"> </td>
	      <td> <input type="text" name ="com_num"> </td>
	    </tr>
	    <tr>  
	      <td>회사주소</td>
	      <td>대표자이름</td>
	      <td>대표자 전화번호</td>
	      <td>이메일</td>

	    <tr>  
	      <td> <input type="text" name ="com_address"> </td>
	      <td> <input type="text" name ="com_ceo"> </td>
	      <td> <input type="text" name ="com_phone"> </td>
	      <td> <input type="text" name ="com_email"> </td>

    	      
	    </tr>
    	     
    	<input type="submit" value="수정하기">     
	  </table>
	</form>
    	<input type="submit" value="삭제하기" id="goDelete">     

   	<script>
	  const goDeleteEl = document.getElementById('goDelete');
	  goDeleteEl.addEventListener('click',function(e){
		  location.href = '/Company/View/Delete';
	  })
	</script>
	    
</body>
</html>