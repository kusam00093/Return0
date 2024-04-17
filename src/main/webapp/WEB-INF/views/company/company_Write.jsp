<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="/WEB-INF/include/Header.jsp" %>
<title>기업 회원가입 폼</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
</head>
<body>
 	<form action="/Company/Comuser/Write" method="post">
	  <table id="table" >
	    <tr>
	    
	      <td>아이디</td>
	      <td>비밀번호</td>
	      <td>기업형태</td>
	      <td>사업자등록번호</td>
	      </tr>
	   
	    

	    <tr>
	      <td> <input type="text" name ="com_id" value="${vo.com_id}"> </td> <br>
	      
	      <td> <input type="password" name ="com_passwd" value="${vo.com_passwd}"> </td>
	      <td> <input type="text" name ="com_type" value="${vo.com_type}"> </td>
	      <td> <input type="text" name ="com_num" value="${vo.com_num}"> </td>
	    </tr>
	      <tr>
	      <td>기업명</td>
	      <td>회사주소</td>
	      <td>대표자</td>
	      <td>전화번호</td>
	      <td>이메일</td>
	    </tr>
	    <tr>  
	      <td> <input type="text" name ="com_name" value="${vo.com_name}"> </td>
	      <td> <input type="text" name ="com_address" value="${vo.com_address}"> </td>
	      <td> <input type="text" name ="com_ceo" value="${vo.com_ceo}"> </td>
	      <td> <input type="text" name ="com_phone" value="${vo.com_phone}"> </td>
	      <td> <input type="text" name ="com_email" value="${vo.com_email}"> </td>
	     
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