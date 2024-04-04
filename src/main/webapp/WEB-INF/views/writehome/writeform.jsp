<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원가입 유형 선택</title>
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

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #3f98f7; /* #3f98f7을 메인 컬러로 지정 */
        }

        div {
            text-align: center;
        }

        div a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #3f98f7; /* #3f98f7을 메인 컬러로 지정 */
            color: #fff;
            text-decoration: none;
            border-radius: 25px;
            margin-bottom: 20px;
            transition: background-color 0.3s;
        }

        div a:hover {
            background-color: #1e7fd7;
        }
    </style>
</head>

<body>
    <h2>회원가입 유형 선택</h2>
    <div><a href="/User/Write">개인회원</a></div>
    <div><a href="/Company/Write">기업회원</a></div>
</body>

</html>