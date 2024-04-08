<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="/WEB-INF/include/Header.jsp" %>
<title>기업 모집공고 작성 폼</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
</head>
<body>
 	<form action="/Company/Posting/Write" method="post">
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
	    <td><input type ="submit" value="등록"></td>
	    </tr>
	    
	  </table>
	  
	</form>
		<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
</body>
<%@include file="/WEB-INF/include/Footer.jsp" %>
</html>