<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    main {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    
    main h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #3f98f7;
    }
    
    form {
        text-align: center;
    }
    
    table {
        margin: 0 auto;
    }
    
    table td {
        padding: 20px 0;
    }
    
    input[type="text"],
    input[type="password"],
    input[type="submit"],
    input[type="button"] {
        width: calc(100% - 24px);
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-sizing: border-box;
        font-size: 16px;
        transition: box-shadow 0.3s;
    }
    
    input[type="text"]:focus,
    input[type="password"]:focus {
        outline: none;
        box-shadow: 0 0 5px #3f98f7;
    }
    
    input[type="submit"] {
        background-color: #3f98f7;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    
    input[type="submit"]:hover {
        background-color: #1e7fd7;
    }
    
    input[type="button"] {
        background-color: #ccc;
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    
    input[type="button"]:hover {
        background-color: #999;
    }
    
    .icon {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: 10px;
        color: #aaa;
    }
</style>
</head>
<body>
  <main>
	<h2>개인회원 로그인</h2>
	<form action="/login" method="POST">
	<table>
	 <tr>
	   <td>아이디</td>
	   <td><input type="text" name="user_id"  /></td>
	 </tr>
	 <tr>
	   <td>비밀번호</td>
	   <td><input type="password" name="user_passwd" /></td>
	 </tr>	
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="로그인" />
	    <input type="button" value="목록" id="goList" />
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





