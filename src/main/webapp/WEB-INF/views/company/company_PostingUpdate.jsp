<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 모집공고 정보 수정</title>
</head>
<body>
	<form action="/Company/Posting/Update" method="post">
	  <table id="table" >
	    <tr>
	    
	      <td>제목</td>
	      <td>필요경력</td>
	      <td>내용</td>
	      <td>필요학력</td>
	      <td>희망부서</td>
	      <td>프로필</td>
	    </tr>
	   
	    

	    <tr>
	      <td> <input type="text" name ="posting_title" value="${vo.posting_title}"> </td>
	      <td><input type="text" name ="posting_career" value="${vo.posting_career}"></td>
	      <td><textarea name="posting_content" value="${vo.posting_content} " ></textarea></td>
	      <td><input type="text" name ="posting_grade" value="${vo.posting_grade }"></td>
	      <td><input type="text" name ="posting_hope_department" value="${vo.posting_hope_department }"></td>
	      <td><input type="text" name ="posting_com_profile" value="${vo.posting_com_profile }"></td>
    	      
	    </tr>

	    <tr>
	    <td><input type ="submit" value="수정"></td>
	    </tr>
	  </table>
	</form>
	   <input type ="submit" value="삭제" id="goDelete">
	    
	  
		<script>
	  const goDeleteEl = document.getElementById('goDelete');
	  goDeleteEl.addEventListener('click',function(e){
		  location.href = '/Company/Posting/Delete';
	  })
	</script>
	
</body>
</html>