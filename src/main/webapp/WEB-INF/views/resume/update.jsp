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
   
   tr {
   	 border: 1px solid black;
   }
   
   td { 
      padding:10px;
      width: 1000px;
      text-align: center;
     border: 1px solid black;
   }
   
   td:nth-of-type(1) {
      width : 250px;
   }
   
   td:not([colspan]):first-child {
      background: white;
      color : black;
      font-weight: bold;
   }
   
 
		.licenseList {
			display: flex;
		}
		
		h2 {
         text-align: center;
      }
      
      form {
         margin: 0 auto;
      }   
      
		td {
         border-radius: 5px;
      }
      
      .first-td {
         background-color: black;
         color:white;
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
	   <td><input type="text" name="resume_profile"  value="1번째 사진"/></td>
	 </tr>
	 <tr class="experience-details">
	   <td rowspan="4">경력사항</br>
	                   1. 회사이름</br>
	                   2. 회사부서</br> 
	                   3. 회사입사</br>
	                   4. 회사퇴사</br>
	  </td>
	 </tr>
	 
		 <tr>
		   <td><input type="text" name="resume_career_company" value="1번째 회사" />
		   <input type="text" name="resume_career_department"  value="1번째 부서"/>
		   <input type="date" name="resume_career_startdate"  value="1999-12-30"/>
		   <input type="date" name="resume_career_enddate" value="2113-12-30" /></td>
		 </tr>
		 <tr>
		   <td><input type="text" name="resume_career_company" value="2번째 회사" />
		   <input type="text" name="resume_career_department"  value="2번째 부서"/>
		   <input type="date" name="resume_career_startdate"  value="1999-12-30"/>
		   <input type="date" name="resume_career_enddate" value="2113-12-30" /></td>
		 </tr>
		 <tr >
		   <td><input type="text" name="resume_career_company" value="3번째 회사" />
		   <input type="text" name="resume_career_department"  value="3번째 부서"/>
		   <input type="date" name="resume_career_startdate"  value="1999-12-30"/>
		   <input type="date" name="resume_career_enddate" value="2113-12-30" /></td>
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
	   <td class = "licenseList">
	   	  
	   			<input type="checkbox" name="resume_license_content"  value="Java"/>Java
	   			<input type="checkbox" name="resume_license_content"  value="HTML"/>HTML
	   			<input type="checkbox" name="resume_license_content"  value="JavaScript"/>JavaScript
	   			<input type="checkbox" name="resume_license_content"  value="VueJS"/>CSS
	   			<input type="checkbox" name="resume_license_content"  value="CSS"/>CSS
	   			<input type="checkbox" name="resume_license_content"  value="Node.js"/>Node.js
	   			<input type="checkbox" name="resume_license_content"  value="React"/>React
	   			<input type="checkbox" name="resume_license_content"  value="ReactJS"/>ReactJS
	   			<input type="checkbox" name="resume_license_content"  value="Typescript"/>Typescript
	   			<input type="checkbox" name="resume_license_content"  value="Zustand"/>Zustand
	   			<input type="checkbox" name="resume_license_content"  value="AWS"/>AWS
	   		
	   </td>
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
	    <button onclick="resumeWrite()">수정</button>
<!-- 	    <input type="submit" value="수정" /> -->
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
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script type="text/javascript">
      function resumeWrite(){
        window.open("/Resume/UpdateForm?user_id=wodud6967", "write", "width=1200, height=800");
      }
    </script>
</body>
</html>





