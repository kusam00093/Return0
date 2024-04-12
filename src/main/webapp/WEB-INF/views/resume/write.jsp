<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 작성하기</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
   body {
      font-family: 'Nunito', sans-serif;
      background-color: #f8f9fa;
      color: #333;
   }

   .main-container {
      max-width: 800px;
      margin: 50px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
   }

   h2 {
      font-size: 28px;
      text-align: center;
      margin-bottom: 30px;
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
      <h2>이력서 작성하기</h2>

      <form action="/Resume/Write" method="POST" id="resumeForm">
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
				    <div class="col-sm-9" id="userStackList">
				       
				        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="Java" id="javaCheckbox"/>
					            <label class="form-check-label" for="javaCheckbox">Java</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="HTML" id="HTMLCheckbox"/>
					            <label class="form-check-label" for="HTMLCheckbox">HTML</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="JavaScript" id="JavaScriptCheckbox"/>
					            <label class="form-check-label" for="JavaScriptCheckbox">JavaScript</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="VueJS" id="VueJSCheckbox"/>
					            <label class="form-check-label" for="VueJSCheckbox">VueJS</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="CSS" id="CSSCheckbox"/>
					            <label class="form-check-label" for="CSSCheckbox">CSS</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="Node.js" id="Node.jsCheckbox"/>
					            <label class="form-check-label" for="Node.jsCheckbox">Node.js</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="React" id="ReactCheckbox"/>
					            <label class="form-check-label" for="ReactCheckbox">React</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="ReactJS" id="ReactJSCheckbox"/>
					            <label class="form-check-label" for="ReactJSCheckbox">ReactJS</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="Typescript" id="TypescriptCheckbox"/>
					            <label class="form-check-label" for="TypescriptCheckbox">Typescript</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="Zustand" id="ZustandCheckbox"/>
					            <label class="form-check-label" for="ZustandCheckbox">Zustand</label>
					        </div>
					        <div class="form-check">
					            <input type="checkbox" class="form-check-input" name="user_stack_name"  value="AWS" id="AWSCheckbox"/>
					            <label class="form-check-label" for="AWSCheckbox">AWS</label>
					        </div>
				        
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
              <button type="button" onclick="submitForm()">Submit</button>
            	 <input type="submit" value="추가" />
               <button type="button" class="btn btn-secondary btn-block" onclick="goToList()">목록</button>
            </div>
         </div>
         
         <!-- 선택된 스택을 전달하기 위한 hidden input 추가 -->
         <input type="hidden" name="selectedStacks" id="selectedStacks">
      </form>
   </div>
</div>

<script>
function goToList() {
   location.href = '/Resume/List?user_id=${user_id}';
}

function submitForm() {
    var form = document.getElementById("resumeForm");
    var checkboxes = form.querySelectorAll('input[type=checkbox]:checked');
    var selectedStacks = [];
    
    checkboxes.forEach(function(checkbox) {
        selectedStacks.push(checkbox.value);
    });
    
    // hidden input에 선택된 스택을 설정
    document.getElementById("selectedStacks").value = selectedStacks.join(',');
    
    // 폼 제출
    form.submit();
}
</script>

</body>
</html>
