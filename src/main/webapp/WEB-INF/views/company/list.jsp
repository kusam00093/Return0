<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 상세보기</title>
</head>
<body>
<p>기업리스트</p>
   <c:forEach  var="co" items="${postingList}">
      <tr>
	    <td><a href="/Company/PostingView">${co.posting_title}</a></td>	     
	    <td>${co.posting_com_profile}</td>	     
	    <td>${co.posting_enddate}</td>	     
	    <td>${co.posting_hope_department}</td>	     
      </tr>
      </c:forEach>


</body>
</html>