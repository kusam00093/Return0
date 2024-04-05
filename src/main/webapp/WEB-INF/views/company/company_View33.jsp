<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="/WEB-INF/include/Header.jsp" %>
<title>기업 회원 상세보기</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
</head>
<body>
	  <table id="table" >
	    <tr>
	    
	      <td>기업이름</td>
	      <td>기업비밀번호</td>
	      <td>기업형태</td>
	      <td>사업자등록번호</td>
	      <td>회사주소</td>
	      <td>대표자이름</td>
	      <td>대표자 전화번호</td>
	      <td>이메일</td>

	    </tr>
	   
	    
	    <tr>
	      <td>${ vo.com_name }</td>
	      <td>${ vo.com_passwd} </td>
	      <td>${ vo.com_type }</td>
	      <td>${ vo.com_num }</td>
	      <td>${ vo.com_address }</td>
	      <td>${ vo.com_ceo }</td>
	      <td>${ vo.com_phone }</td>
	      <td>${ vo.com_email }</td>
    	      
	    </tr>
	    <a href="/Company/View/UpdateForm"> 기업 정보 수정하기</a>
	    
	  </table>	
	  	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
</body>
<%@include file="/WEB-INF/include/Footer.jsp" %>
</html>