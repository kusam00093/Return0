<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 공고 상세보기</title>
</head>
<body>
	  <h2>기업이름</h2>
	<form action="/Resume">
	  
	  <table id="table" >
	    <tr>
	    
	      <td>제목</td>
	      <td>기업명</td>
	      <td>기업형태</td>
	      <td>대표자이름</td>
	      <td>전화번호</td>
	      <td>이메일</td>
	      <td>경력</td>
	      <td>학력</td>
	      <td>희망부서</td>      
	      <td>내용</td>
	      <td>마감기한</td>
	    </tr>
	   
	    
	    <c:forEach  var="com"  items="${map}"  >
	    <tr>
	      <td>${ com.title }</td>
	      <td>${ com.name} </td>
	      <td>${ com.type }</td>
	      <td>${ com.ceo }</td>
	      <td>${ com.phone }</td>
	      <td>${ com.email }</td>
	      <td>${ com.career }</td>
	      <td>${ com.grade }</td>
	      <td>${ com.hopedept }</td>
	      <td>${ com.content }</td>
	      <td>${ com.date }</td>      	      
	    </tr>
	    </c:forEach>
	    
	   	<c:if test="${ sessionScope.user_id != null||user_id != ''}">
	<div><input type="submit" value="지원하기"></div>
	</c:if>
	   	<c:if test="${ sessionScope.com_id != null||com_id != ''}">
	<div><input type="submit" value="수정하기"></div>
	</c:if>
	    
	  </table>
	</form>     


</body>
</html>