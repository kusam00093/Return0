<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
 <header>
        <div class="inner">
          <div id="gnb">
            <h1 id="logo">
              <a href="#"><img src="/img/logo03.png" /></a>
            </h1>
            <ul class="navbar">
              <li><a href="/Company/List?nowpage=1">채용목록</a></li>
              <li><a href="/Resume/List">이력서</a></li>
              <li><a href="/User/View?user_id=ssong&nowpage=1">개인마이페이지</a></li>
              <li><a href="/Board">커뮤니티</a></li>
            </ul>
            <ul>
            <ul class="navbar">
              
              <li><a href="/Company/List?nowpage=1">채용목록</a></li>
              <li><a href="/Company/MyPage?nowpage=1">기업마이페이지</a></li>
              <li><a href="/Board">커뮤니티</a></li>
            </ul>
          </div>
          <div class = "login-link">
				<a href="/Login">로그인</a>
				<a href="#">로그아웃</a>
			</div>
        </div>
      </header>
