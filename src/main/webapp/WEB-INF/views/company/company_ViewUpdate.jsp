<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    main {
        background-color: #fff;
        padding: 60px;
        border-radius: 20px; 
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); 
        width: 500px; 
    }

    h2 {
        text-align: center;
        margin-bottom: 40px; 
        color: #3f98f7;
    }

    form {
        text-align: center;
    }

    table {
        margin: 0 auto;
        width: 100%;
    }

    table td {
        padding: 15px; 
        text-align: left;
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

    #doubleCheckMsg {
        margin-left: 10px; 
        color: #ff0000; 
    }

    .half-input {
        width: calc(50% - 10px); 
        margin-right: 10px; 
    }
</style>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function daumPost() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옴
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일 경우 조합형 주소 조합
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형 주소가 있을 경우 마지막에 붙여줌
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합형 주소를 최종 주소에 추가
                    fullAddr += extraAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 입력
                document.getElementsByName('com_zipcode')[0].value = data.zonecode; // 우편번호
                document.getElementsByName('com_address')[0].value = fullAddr; // 주소

                // 커서를 상세주소 필드로 이동
                document.getElementsByName('com_address')[0].focus();
            }
        }).open();
    }

</script>
</head>
<body>
  <main>
    <h2>회원가입</h2>
    <form action="/Company/View/Update" method="POST">

  <input type="hidden" name="user_id" value="${user_id}">
  <input type="hidden" name="nowpage" value="${nowpage}">
        <table>
            <tr>
 		        <td>기업아이디</td>
            
                <td>
                    <input type="text" name="com_id" placeholder="아이디를 입력하세요" value="${co.com_id}" />
                    <input type="button" value="중복 확인" onclick="doubleCheck()">
                    <span id="doubleCheckMsg"></span>
                </td>
            </tr>
            <tr>
            	  <td>기업비밀번호</td>
                <td><input type="password" name="com_passwd" placeholder="비밀번호를 입력하세요" name="${co.com_passwd }"/></td>
            </tr>
            <tr>
            	  <td>기업이름</td>
                <td><input type="text" name="com_name" placeholder="회사명을 입력하세요" value="${co.com_name }"/></td>
            </tr>
            <tr>
            <td>기업 대표명</td>
                <td><input type="text" name="com_ceo" placeholder="대표자명을 입력하세요" value="${co.com_ceo }"/></td>
            </tr>
            <tr>
            <td>기업 형태</td>
                <td><input type="text" name="com_type" placeholder="기업형태를 입력하세요" value="${co.com_type}"/></td>
            </tr>
            <tr>
            <td>사업자 등록번호</td>
                <td><input type="text" name="com_num" placeholder="사업자등록번호를 입력하세요" value="${co.com_num }"/></td>
            </tr>
            <tr>
            <td>전화번호</td>
                <td><input type="text" name="com_phone" placeholder="인사담당자 전화번호를 입력하세요" value="${co.com_phone}" /></td>
            </tr>
            <tr>
            	<td>이메일</td>
                <td><input type="text" name="com_email" placeholder="이메일을 입력하세요" value="${co.com_email }"/></td>
            </tr>
            <tr>
            	<td>회사우편번호</td>
                <td>
               <input type="text"  placeholder="우편번호" readonly="readonly"/>
                    <input type="button"  onclick="daumPost()" value="우편번호 찾기" />

                </td>
            </tr>
            <tr>
            	<td>회사주소</td>
                <td><input type="text" name="com_address" placeholder="이메일을 입력하세요" value="${co.com_address }"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="수정하기" />
                    <input type="button" value="회원탈퇴" id="goDelete" />
                </td>
            </tr>
        </table>
    </form>
</main>
      
  
  <script>
     const  goDeleteEl  = document.getElementById('goDelete');
     goDeleteEl.addEventListener('click', function(e) {
    	alert('회원 탈퇴 처리 되었습니다'); 
        location.href = '/Company/View/Delete?nowpage=${nowpage}';
     });
     

   
  </script>
  
</body>
</html>


   


