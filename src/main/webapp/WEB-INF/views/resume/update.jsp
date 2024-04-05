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
	<h2>이력서 수정하기</h2>
	<form action="/Resume/Update" method="POST">
	<input type="hidden" name="user_id" value="${mapResume.user_id}" >
	<input type="hidden" name="resume_rno" value="${mapResume.resume_rno}" >

	<table>
	 <tr>
	   <td>이름</td>
	   <td><input type="text" name="user_name" value="강재영" READONLY /></td>
	 </tr>
	 <tr>
	   <td>사진</td>
	   <td><input type="text" name="resume_profile" value="${mapResume.resume_profile}" /></td>
	   
	 </tr>
	 <tr>
	   <td>경력사항-회사</td>
	   <td><input type="text" name="resume_career_company" value="${mapResumeCareer.resume_career_company}" /></td>
	 </tr>
	 <tr>
	   <td>경력사항-부서</td>
	   <td><input type="text" name="resume_career_department"  value="${mapResumeCareer.resume_career_department}"/></td>
	 </tr>
	 <tr>
	   <td>경력기간-시작</td>
	   <td><input type="text" name="resume_career_startdate"  value="${mapResumeCareer.resume_career_startdate}"/></td>
	 </tr>
	 <tr>
	   <td>경력기간-종료</td>
	   <td><input type="text" name="resume_career_enddate" value="${mapResumeCareer.resume_career_enddate}" /></td>
	 </tr>
	 
	 <tr>
	   <td>최종학력</td>
	   <td><input type="text" name="resume_grade_universe" value="${mapResumeGrade.resume_grade_universe}" /></td> 
	 </tr>
	 <tr>
	 	 <td>졸업여부</td>
	   <td><input type="text" name="resume_grade_state" value="${mapResumeGrade.resume_grade_state}" /></td>
	 </tr>
	 <tr>
	 	 <td>학력내용</td>
	   <td><input type="text" name="resume_grade_content" value="${mapResumeGrade.resume_grade_content}" /></td>
	 </tr>
	 <tr>
	   <td>기술목록</td>
	   <td><input type="text" name="resume_license_content"  value="${mapResumeLicense.resume_license_content}"/></td>
	 </tr>
	 <tr>
	   <td>자기소개서</td>
	   <td><input type="text" name="resume_content_self"  value="${mapResume.resume_content_self}"/></td>
	 </tr>
	 <tr>
	   <td>지원동기</td>
	   <td><input type="text" name="resume_content_motivation"  value="${mapResume.resume_content_motivation}"/></td>
	 </tr>
	
	 
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="수정" />
	    <input type="button" value="목록" id="goList" />
	   </td>
	 </tr>
	
	</table>	
	</form>   
	
  </main>
  
  <script>
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/Resume/List?user_id=wodud6967';
  	})
  
  </script>
  
</body>
</html>





