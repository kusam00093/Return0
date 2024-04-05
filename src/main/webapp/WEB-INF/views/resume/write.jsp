<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<style>
   input:not(input[type=submit]) { width:100%; }
   input[type=submit] { width : 100px; }
   #goList  { width : 80px; }
   
   td { 
      padding:10px;
      width: 700px;
      text-align: center;
   }
   td:nth-of-type(1) {
      width : 200px;
   }
   
   td:not([colspan]):first-child {
      background: black;
      color : white;
      font-weight: bold;
   }

</style>
</head>
<body>
  <main>
	<h2>이력서 등록</h2>
	<form action="/Resume/Write" method="POST">
	<input type="hidden" name="user_id" value="${user_id}" >

	<table>
	 <tr>
	   <td>이름</td>
	   <td><input type="text" name="user_name" value="강재영" READONLY /></td>
	 </tr>
	 <tr>
	   <td>사진</td>
	   <td><input type="text" name="resume_profile"  value="1번째 사진"/></td>
	 </tr>
	 <tr>
	   <td>경력사항-회사</td>
	   <td><input type="text" name="resume_career_company" value="1번째 회사" /></td>
	 </tr>
	 <tr>
	   <td>경력사항-부서</td>
	   <td><input type="text" name="resume_career_department"  value="1번째 부서"/></td>
	 </tr>
	 <tr>
	   <td>경력기간-시작</td>
	   <td><input type="text" name="resume_career_startdate"  value="1999-12-30"/></td>
	 </tr>
	 <tr>
	   <td>경력기간-종료</td>
	   <td><input type="text" name="resume_career_enddate" value="2113-12-30" /></td>
	 </tr>
	 
	 <tr>
	   <td>최종학력</td>
	   <td><input type="text" name="resume_grade_universe" value="1번째 최종학력" /></td> 
	 </tr>
	 <tr>
	 	 <td>졸업여부</td>
	   <td><input type="text" name="resume_grade_state" value="1번째 졸업여부" /></td>
	 </tr>
	 <tr>
	 	 <td>학력내용</td>
	   <td><input type="text" name="resume_grade_content" value="1번째 학력내용" /></td>
	 </tr>
	 <tr>
	   <td>기술목록</td>
	   <td><input type="text" name="resume_license_content"  value="1번째 기술목록"/></td>
	 </tr>
	 <tr>
	   <td>자기소개서</td>
	   <td><input type="text" name="resume_content_self"  value="1번째 자기소개서"/></td>
	 </tr>
	 <tr>
	   <td>지원동기</td>
	   <td><input type="text" name="resume_content_motivation"  value="1번째 지원동기"/></td>
	 </tr>
	
	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="추가" />
	    <input type="button" value="목록" id="goList" />
	   </td>
	 </tr>
	
	</table>	
	</form>   
	
  </main>
  
  <script>
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/Resume/List';
  	})
  
  </script>
  
</body>
</html>





