<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="/WEB-INF/include/Header.jsp" %>
<title>기업 마이페이지</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
</head>
<body>
<div><a href="/Company/MyPage/People">내 회사 지원자 보기</a></div>
<div><a href="/Company/MyPage/Recommand">내 회사와 맞는 인재</a></div>
<div><a href="/Company/MyPage/Book">내가 북마크한 이력서</a></div>
<div><a href="/Company/PostingView">공고상세보기</a></div>
<div><a href="/Company/Posting/WriteForm">공고등록</a></div>
<div><a href="/Company/Comuser/WriteForm">기업 회원등록</a></div>
<div><a href="/Company/View">기업 회원 상세 보기</a></div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
</body>
<%@include file="/WEB-INF/include/Footer.jsp" %>
</html>