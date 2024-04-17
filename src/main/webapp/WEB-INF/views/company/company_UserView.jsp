<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 상세보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 20px 0; 
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
    
    .td1{
		font-weight: bolder;
}
</style>

</head>
<body>
  <main>


    <h2>기업회원정보 상세보기</h2>

        <table>

            <tr>
                <td class="td1">기업 아이디 </td>
                <td> ${ co.com_id }</td>
            </tr>
            <tr>
                <td class="td1">비밀번호 </td>
                <td> ${co.com_passwd}</td>
            </tr>
            <tr>
            	<td class="td1">기업 이름 </td>
                <td>${co.com_name }</td>
            </tr>
            <tr>
            	<td class="td1">기업 형태 </td>
                <td>${co.com_type }</td>
            </tr>
            <tr>
            	<td class="td1">사업자 등록번호</td>
                <td>${co.com_num }</td>
            </tr>
            <tr>
            	<td class="td1">기업주소</td>
                <td>${co.com_address }</td>
            </tr>
            <tr>
                <td class="td1">상세주소</td>
                <td>상세주소</td>
            </tr>
            <tr>
            	<td class="td1">대표자 이름</td>
                <td>${co.com_ceo }</td>
            </tr>
            <tr>
            	<td class="td1">전화번호</td>
                <td>${co.com_phone }</td>
            </tr>
            <tr>
            	<td class="td1">이메일</td>
                <td>${co.com_email }</td>
            </tr>
            <tr>
                <td colspan='2'><input type="button"  value="수정하기" id="goUpdate"/></td>
            </tr>

        </table>

</main>
      
  
  <script>
     const  goUpdateEl  = document.getElementById('goUpdate');
     goUpdateEl.addEventListener('click', function(e) {
        location.href = '/Company/Comuser/ViewUpdateForm?nowpage=${nowpage}';
     });
     

   
  </script>
  
</body>
</html>


   


 