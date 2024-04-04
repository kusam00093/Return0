<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 마이페이지-북마크</title>
</head>
<body>
	  <h2>북마크 목록</h2>
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
	
	
</body>
</html>