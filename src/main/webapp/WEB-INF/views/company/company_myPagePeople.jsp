<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="/WEB-INF/include/Header.jsp" %>
<title>기업 마이페이지-지원자 현황</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
</head>
<body>
	  <h2>이력서 목록</h2>
	  <table id="table" >
	    <tr>
	      <td>번호</td>
	      <td>이름</td>
	    </tr>
	   
	    
	    <c:forEach  var="res"  items="${ resumeList }" >
	    <tr>
	      <td>${ res.rno   }</td>
	      <td>
	       <a href="/User/Resume/rno=${ boardVo.bno }">
	          ${ res.name }      
	       </a>
	      </td>	      	      
	    </tr>
	    </c:forEach>
	    
	    
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