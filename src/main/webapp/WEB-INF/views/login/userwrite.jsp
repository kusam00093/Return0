<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
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

    .half-input {
        width: calc(50% - 10px); 
        margin-right: 10px; 
    }

    #USER_SOCIAL_NUM1 {
        width: calc(30% - 10px); 
        margin-right: 10px; 
    }

    #USER_SOCIAL_NUM2 {
        width: calc(70% - 10px); 
    }
    /* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
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
                document.getElementsByName('user_zipcode')[0].value = data.zonecode; // 우편번호
                document.getElementsByName('user_address')[0].value = fullAddr; // 주소

                // 커서를 상세주소 필드로 이동
                document.getElementsByName('user_address')[0].focus();
            }
        }).open();
    }
</script>

</head>
<body>
<main>
    <h2>회원가입</h2>
    <form id="signupForm" action="/userwrite" method="POST" onsubmit="return validateForm()">
            
 
 
        <table>
       <tr>
        <td><input type="text" id="userid" name="user_id" maxlength="15" placeholder="아이디를 입력하세요" required />
                    <input type="button" value="중복확인" id="btnIdCheck"  style="background-color: #3f98f7; color: white; border: none; 
            cursor: pointer; padding: 10px; border-radius: 5px;"/>   
                        	<div id="output"></div>
                    </td>
            <tr>
                <td><input type="password" name="user_passwd" id=pw1 placeholder="비밀번호를 입력하세요" oninput="pwCheck()" />
           
            </tr>
            <tr>
                <td><input type="password" name="passwd"  id= pw2  placeholder="비밀번호를 다시 입력하세요" oninput="pwCheck()"/>
          		</td></tr><td><span id="pwConfirm">  </span></td>
                
               
           
            <tr>
                <td><input type="text" name="user_name" placeholder="이름을 입력하세요" /></td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="user_social_num" id= socialnum placeholder="주민등록번호를 입력하세요" maxlength="13" oninput="encryptAndDisplay(this)"/
                    > 
                 
                </td>
            </tr>
            <tr>
                <td><input type="text" name="user_phone" placeholder="전화번호를 입력하세요"  /></td>
            </tr>
            <tr>
                <td><input type="text" name="user_email" placeholder="이메일을 입력하세요" maxlength="20" /></td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="user_zipcode" placeholder="우편번호" readonly="readonly"/>
                    <input type="button"  onclick="daumPost()" value="우편번호 찾기" />
                    <br><input type="text" name="user_address" placeholder="상세주소"></br>
                </td>
            </tr>
            <tr>
        <td><input type="text" id="joinDate" readonly /></td> 
            <tr>
                <td colspan="2">
                    <input type="submit" value="회원가입" />
                    <input type="button" value="취소" id="goList" />
                </td>
            </tr>
        </table>
        
    </form>
</main>
<script>
  function pwCheck() {
            var pw1 = document.getElementById("pw1").value;
            var pw2 = document.getElementById("pw2").value;
            var pwConfirm = document.getElementById("pwConfirm");

            if (pw1 != pw2) {
                pwConfirm.innerHTML = "비밀번호가 일치하지 않습니다.";
            } else {
                pwConfirm.innerHTML = "비밀번호가 일치합니다.";
            }};
            </script>
           

<script>
    const goListEl = document.getElementById('goList');
    goListEl.addEventListener('click', function(e) {
        location.href = '/';
    });

    }
   
</script>
 <script>
        function encryptAndDisplay(input) {
     
            const encryptedPart = input.value.slice(6).replace(/./g, '*');
           
            input.value = input.value.slice(0, 6) + encryptedPart;
        }
    </script>
<script>

const  btnIdCheckEl = document.querySelector('#btnIdCheck');
btnIdCheckEl.onclick = function(e) {     
	// alert('중복확인체크');
	 const  outputEl = document.querySelector('#output');
	 	  	 
    let    intext    = document.querySelector('[name=user_id]');
    // 서버 Controller에 있는 /IdDupCheck 주소를 실행 
    fetch('/IdDupCheck?user_id=' + intext.value)
      .then(response => response.text())  // 서버 data 가 html
      .then((data) => {   // data <- response.text()
     	  console.log(data);
		  outputEl.innerHTML = data;    	 
      });        	 
}

</script>

</body>
</html>


	


