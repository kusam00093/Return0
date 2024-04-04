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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function daumPost(){
	    new daum.Postcode({
	        oncomplete: function(data) {     
	            if (data.userSelectedType === 'R') { 
	                addr = data.roadAddress;
	            } else { 
	                addr = data.jibunAddress;
	            }
	            document.getElementById('postcode').value = data.zonecode
	            document.getElementById('address').value = addr
	            document.getElementById('detailAddress').focus()
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
                <td><input type="password" name="COM_PASSWD" placeholder="비밀번호를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="password" name="passwd" placeholder="비밀번호를 다시 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="COM_NAME" placeholder="회사명을 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="COM_CEO" placeholder="대표자명을 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="COM_TYPE" placeholder="기업형태를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" name="COM_NUM" placeholder="사업자등록번호를 입력하세요" /></td>
            </tr>
            <tr>
                <td><input type="text" id="COM_PHONE" placeholder="인사담당자 전화번호를 입력하세요"  /></td>
            </tr>
            <tr>
                <td><input type="text" name="COM_EMAIL" placeholder="이메일을 입력하세요" /></td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="COM_ADDRESS1" placeholder="우편번호" readonly="readonly"/>
                    <input type="button"  onclick="daumPost()" value="우편번호 찾기" />
                    <br><input type="text" id="COM_ADDRESS2" placeholder="상세주소"></br>
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


	


