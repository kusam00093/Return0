<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
   body {
      font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 40px; 
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
   }

   .main-container {
      max-width: 700px;
      margin: 50px auto;
      padding: 60px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      border-radius: 20px;
   }

   h2 {
        text-align: center;
        margin-bottom: 40px; 
        color: #3f98f7;
        font-weight: bold;
    }
    form {
        text-align: center;
    }

   .form-group {
      margin-bottom: 20px;
   }

   .form-group label {
      font-weight: bold;
   }

   .form-control {
      width: 100%;
   }

   .btn {
      width: 100px;
   }
   
   .btn-center {
      text-align: center;
   }
   
   input[type="text"],
    input[type="password"],
    input[type="submit"],
    input[type="button"] {
        width: calc(100% - 30px);
        padding: 15px; 
        margin-bottom: 30px; 
        border: 1px solid #ddd;
        border-radius: 8px; 
        box-sizing: border-box;
        font-size: 18px; 
    }

    input[type="submit"],
    input[type="button"] {
        background-color: #3f98f7;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
        background-color: #1e7fd7;
    }
    
       input[type="date"] {
    width: calc(100% - 30px);
    padding: 15px;
    margin-bottom: 30px;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-sizing: border-box;
    font-size: 18px;
}
    
 
#userStackList {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); /* 열의 크기를 자동 조절하고 최소 150px로 설정 */
    gap: 10px; /* 열과 행 사이의 간격 */
}

.form-check {
    display: flex;
    align-items: center; /* 체크박스를 세로 중앙으로 정렬 */
}

.form-check-input {
    margin-right: 5px; /* 체크박스와 레이블 사이의 간격 조절 */
}

.form-check-label {
    margin-bottom: 0; /* 레이블 아래쪽 여백 제거 */
}
</style>
</head>
<body>

<div class="container">
   <div class="main-container">
      <h2>이력서 수정하기</h2>

      <form action="/Resume/Update" method="POST">
         <input type="hidden" name="user_id" value="${user_id}">
         <input type="hidden" name="resume_rno" value="${mapResume.resume_rno}">
         

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">이름</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="user_name" value="${user_name}" readonly>
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">사진</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_profile" value="${mapResume.resume_profile}">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">회사이름</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_career_company" value="${mapResumeCareer.resume_career_company}">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">회사부서</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_career_department" value="${mapResumeCareer.resume_career_department}">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">회사입사</label>
            <div class="col-sm-9">
               <input type="date" class="form-control" name="resume_career_startdate" value="${mapResumeCareer.resume_career_startdate}">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-3 col-form-label">회사퇴사</label>
            <div class="col-sm-9">
               <input type="date" class="form-control" name="resume_career_enddate" value="${mapResumeCareer.resume_career_enddate}">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">최종학력</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_grade_universe" value="${mapResumeGrade.resume_grade_universe}">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">졸업여부</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_grade_state" value="${mapResumeGrade.resume_grade_state}">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">학력내용</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_grade_content" value="${mapResumeGrade.resume_grade_content}">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">자격증</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_license_content" value="${mapResumeLicense.resume_license_content}">
            </div>
         </div>
         
        <div class="form-group row">
                <label class="col-sm-3 col-form-label">기술목록</label>
                <div class="col-sm-9">
               <input type="text" class="form-control" name="user_stack_name"  value="${mapUserStack.user_stack_name}" /> 
            </div>
         </div>    

         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">자기소개서</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_content_self" value="${mapResume.resume_content_self}">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">지원동기</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="resume_content_motivation" value="${mapResume.resume_content_motivation}">
            </div>
         </div>


         <div class="form-group row">
            <div class="col-sm-12 btn-center">
                <input type="submit" value="수정" id="goUpdate"/>
               <input type="button" value="목록" onclick="goToList()"/>
            </div>
         </div>
      </form>
   </div>
</div>

<script>
function goToList() {
   location.href = '/Resume/List?user_id=${user_id}';
}

</script>
<script>
    const goUpdateEl = document.getElementById('goUpdate');
    goWriteEl.addEventListener('click', function (e) {
	alert('수정되었습니다');
    })
</script>
</body>
</html>