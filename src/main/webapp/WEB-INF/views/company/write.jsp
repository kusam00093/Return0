<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 20px 0; /* 윗부분에 padding 추가 */
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    main {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    h2 {
        text-align: center;
        margin-bottom: 40px 0;
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
        padding: 10px;
        text-align: left;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"],
    input[type="button"] {
        width: calc(100% - 30px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px;
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
        width: calc(50% - 5px);
        margin-right: 5px;
    }

    #USER_SOCIAL_NUM1 {
        width: calc(30% - 5px);
        margin-right: 5px;
    }

    #USER_SOCIAL_NUM2 {
        width: calc(70% - 5px);
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
    <form action="/Company/Write" method="POST">
        <table>
            <tr>
                <td>
                    <input type="text" name="COM_ID" placeholder="아이디를 입력하세요" />
                    <input type="button" value="중복 확인" onclick="doubleCheck()">
                    <span id="doubleCheckMsg"></span>
                </td>
            </tr>
            <tr>
                <td><input type="password" name="com_passwd" placeholder="비밀번호를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="password" name="passwd" placeholder="비밀번호를 다시 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="com_name" placeholder="회사명을 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="com_ceo" placeholder="대표자명을 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="com_type" placeholder="기업형태를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="com_num" placeholder="사업자등록번호를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" id="com_phone" placeholder="인사담당자 전화번호를 입력하세요"  /></td>
            </tr>
            <tr>
                <td><input type="text" name="com_email" placeholder="이메일을 입력하세요" /></td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="com_zipcode" placeholder="우편번호" readonly="readonly"/>
                    <input type="button"  onclick="daumPost()" value="우편번호 찾기" />
                    <br><input type="text" id="com_address" placeholder="상세주소"></br>
                </td>
            </tr>
            <tr>
                <td><input type="text"  value="${ now }" readonly /></td>
            </tr>
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
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/';
  	})

   
  </script>
  
</body>
</html>


	


