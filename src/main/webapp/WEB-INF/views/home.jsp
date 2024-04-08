<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />

<style>
   
</style>
</head>
 <%@include file="/WEB-INF/include/Header.jsp" %>
<body>
  <main>
  <input type="hidden" name="nowpage" value="${nowpage}">
  <input type="hidden" name="com_id" value="${com_id}">
  <input type="hidden" name="nowpage" value="${user_id}">
	<h2>Home</h2>
	<div><a href="/Company/MyPage?nowpage=1">기업마이페이지</a></div>
	<div><a href="/Company/List?nowpage=1">채용목록</a></div>
	<div><a href="/User">마이페이지</a></div>	
	<div><a href="/Board">커뮤니티</a></div>	
	<div><a href="/Login">로그인</a></div>	
	<div>검색창</div>	
	
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	

	</div>	
  </main>	
</body>
 <%@include file="/WEB-INF/include/Footer.jsp" %>
</html>






