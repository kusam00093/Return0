<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        display: flex;
        padding: 20px 0; 
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
    
    .td1{
		font-weight: bolder;
}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


</head>
<body>
  <main>
  <input type="hidden" name="nowpage" value="${nowpage}">
  <input type="hidden" name="com_id" value="${com_id}">
  <input type="hidden" name="nowpage" value="${user_id}">
    <h2>기업정보 상세보기</h2>
 <form action="/User/View/Update?nowpage=${nowpage}&user_id=${userVo.user_id}" method="post">
        <table>

            <tr>
                <td class="td1">유저 아이디 </td>
                <td>${ vo.user_id }</td>
            </tr>
            <tr>
                <td class="td1">비밀번호 </td>
                <td><input type="password" name="user_passwd"value="${vo.user_passwd}"></td>
            </tr>
            <tr>
            	<td class="td1">이름</td>
                <td><input type="text" name="user_name" value="${vo.user_name}"></td>
            </tr>
            <tr>
            	<td class="td1">이메일 </td>
                <td><input type="text" name="user_email" value="${vo.user_email}"></td>
            </tr>
            <tr>
            	<td>우편번호</td>
                <td>
               <input type="text"  name="user_zipcode" placeholder="우편번호" readonly="readonly"/>
                    <input type="button"  onclick="daumPost()" value="우편번호 찾기" />

                </td>
            </tr>
            <tr>
            	<td>주소</td>
                <td><input type="text" name="user_address"  value="${vo.user_address }"/></td>
            </tr>
            <tr>
            	<td class="td1">전화번호</td>
                <td><input type="text" name="user_phone" value="${vo.user_phone }"></td>
            </tr>
            <tr>
            	<td class="td1">주민등록번호</td>
                <td><input type="text" name="user_social_num" value="${vo.user_social_num }"></td>
            </tr>
 
          
         

        </table>


            <table>
            <tr>
               <td> <input type="submit"  value="수정하기" id="goUpdate" /></td>
                <td><input type="button"  value="회원탈퇴" id="goDelete"/></td>
            </tr>
            </table>
 </form>
            
              
</main>
      
  
  <script>
	  const  goUpdateEl  = document.getElementById('goUpdate');
	  goUpdateEl.addEventListener('click', function(e) {
		  alert('수정되었습니다');
	     location.href = '/User/View/Update?nowpage=${nowpage}&user_id=${userVo.user_id}';
	  });
     
     const  goDeleteEl  = document.getElementById('goDelete');
     goDeleteEl.addEventListener('click', function(e) {
    	 alert('탈퇴되었습니다');

        location.href = '/User/View/Delete?nowpage=${nowpage}&user_id=${userVo.user_id}';
     });
     

   
  </script>
  
</body>
</html>


   


 