<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link href="/css/start.css" rel="stylesheet" />
<link href="/css/test.css" rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">

<style>
*{
  font-family: "Nanum Gothic", sans-serif;
  font-weight: 400;
  font-style: normal;
}



.nanum-gothic-extrabold {
  font-family: "Nanum Gothic", sans-serif;
  font-weight: 800;
  font-style: normal;
}
main {
   
}

.img-container {
   height: 500px;
   background-image: url('/img/intro.jpg');
   background-size: cover;
   background-position: center;
   display: flex;
   justify-content: center;
   align-items: center;
   /
}

.Announce {
   
}

.Announce .top-title {
   margin: 20px;
}

.flex-list {
   margin-bottom: 150px;
}

.flex-list .flex-contanier {
   display: flex;
   justify-content: space-between;
}

.flex-list .flex-contanier li {
   box-sizing: border-box;;
   width: 18%;
   padding: 0 20px;
}

.flex-list .flex-contanier li a {
   display: block;
   width: 100%;
   height: 200px;
   position: relative;
   border: 1px solid #c8cbd0;
   padding: 0 20px;
   font-size: 12px;
   letter-spacing: 0px;
   font-weight: normal;
   line-height: 20px;
   color: #333;
   background-color: #fff;
}

.flex-list .flex-contanier li a .logo {
   padding: 16px 0;
   display: block;
}

.flex-list .flex-contanier li a .tx {
   display: block;
   margin-top: 7px;
   height: 47px;
   overflow: hidden;
}

.flex-list .flex-contanier li a .daystart {
   display: inline-block;
   color: #3f98f7;
   font-weight: bold;
}

.flex-list .flex-contanier li a button.bookmark {
   background: url("/img/bookmark-check.svg");
   background-size: cover;
   display: inline-block;
   width: 20px;
   height: 20px;
   margin-top: 2px;
   position: absolute;
   right: 24px;
   bottom: 17px;
}

.recruitTitContainer {
   position: relative;
   height: 255px;
}

.recruitTitBox {
   position: relative;
   display: flex;
   align-items: flex-start; gap 24px;
   margin: 0 auto;
   padding-top: 56px
}
.recruitTitBox.fixed{
   position: fixed;
    top: 0;
    background-color: #fff;
    width: 1200px;
    margin: 0 auto;
    padding-top: 0;
    z-index: 555;
}
.recruitTitBox.fixed .container{
      min-width: 1200px;
      margin: 0 auto;
      display: flex;
      align-items: center;
      position: relative;
}
.recruitTitBox.fixed .box_top{
   position: relative;
    padding: 18px 0 24px;
    margin-right: 8px;
}
.recruitTitBox.fixed .box_top>button{
   padding: 12px 14px;
    border-radius: 8px;
    border: 1px solid #d2d2d2;
    align-items: center;
}
.recruitTitBox.fixed .box_top>button span{
    color: #6a6a6a;
    font-size: 16px;
    letter-spacing: 0;
    line-height: 22px;
}
.recruitTitBox.fixed .box_bottom{
   padding: 16px 0 22px;
    border: none;
    width: unset;
}
.recruitTitBox.fixed .box_bottom .btn_boxes{
   gap: 8px;
}
.recruitTitBox.fixed .box_top .bottom_tit{
   display: flex;
}
.recruitTitBox.fixed .box_top .recruitTit,
.recruitTitBox.fixed .box_top .top_tit{
   display: none;
}
.recruitTitBox.fixed .box_top>button i.arrow{
    width: 20px;
    height: 20px;
    background-image: url(img/arrownone.svg);
    background-repeat: no-repeat;
    background-position: 50%;
    -webkit-background-size: 100% 100%;
    background-size: 100%;
    margin-left: 4px;
}

.recruitTitBox.fixed .fiex_layout .filter_text.selected{
   position: absolute;
    left: 10px;
    top: 13px;
    z-index: 100;
    width: 151px;
    height: 18px;
    background-color: #fff;
    color: #003ecb;
    font-size: 27px;
}

.recruitTitBox.fixed .box_bottom .search-box{
   width: 210px;
    position: absolute;
    right: 0;
    top: 16px;
}

.recruitTitBox.tag_box.fixed{
   position: fixed;
    top: 90px;
    margin-top: 0;
    padding-bottom: 16px;
    border-bottom: 1px solid #f4f4f4;
    z-index: 444;
    box-shadow: 2px 2px 10px 0 rgba(0,0,0,.05);
}
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */



.container {
   min-width: 1200px;
}

.box_top {
   display: flex;
   align-items: center;
   border-bottom: none;
}

.box_top .recruitTit {
   font-size: 28px;
   letter-spacing: -5px;
   display: flex;
   align-items: center;
}

.box_top .recruitTit:after {
   content: "";
   width: 1px;
   height: 20px;
   background-color: #e8e8e8;
   margin: 0 16px;
}
/* ----------------- .box_top 전체 css------------ */
.recruitTitBox .box_top>button {
   font-size: 24px;
   letter-spacing: -2px;
   line-height: 36px;
   display: flex;
   align-items: center;
   color: #b8b8b8;
}

button {
   background: none;
   cursor: pointer;
}

.recruitTitBox .box_bottom {
   justify-content: space-between;
   width: 100%;
   padding: 24px 0;
   border-bottom: 1px solid #e8e8e8;
}

input {
   border: 0;
}

button, lable {
   vertical-align: middle;
}

/* ----------------- .box_top 전체 css------------ */
.recruitTitBox .box_bottom {
   display: flex;
   align-items: center;
}

.recruitTitBox .box_bottom .btn_boxes {
   display: flex;
   align-items: center;
   gap: 12px;
}
.box_bottom .btn_boxes .btn_box .btn_reset{
   display: flex;
   align-items: center;
}
.btn_boxes .btn_box .btn_reset span {
    font-size: 16px;
    letter-spacing: 0;
    color: #9e9e9e;
    line-height: 20px;
}
.box_bottom .btn_boxes .btn_box .btn_reset i{
   display: block;
   width: 20px;
   height: 20px;
   background: url(img/reset-icon.svg);
   background-repeat: no-repeat;
   background-size: 100%;
   margin-right: 4px;
   
   
}

.recruitTitBox .btn_filter_box {
   padding: 12px 24px;
   border-radius: 8px;
   border: 1px solid #d2d2d2;
   display: flex;
   align-items: center;
}
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
.btn_filter_box span{
   font-size: 16px;
   letter-spacing: 0;
   line-height: 22px;
}
.btn_filter_box span.filter_text.selected{
   display: inline-block;
}
.btn_filter_box span.filter_text{
   font-weight: 700;
   color: #003ecb;
   margin-left: 12px;
   display: none;
}


/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
.dev_wrap-department .btn_filter{
   position: relative;
}
.dev_wrap-department .btn_filter .filter_text.selected{
   position: absolute;
   left: 0;
   top: 0;
   z-index: 100;
   width: 200px;
   height: 36px;
   background-color: #fff;
   color: #003ecb;
   font-size: 28px;
}
.department-box{
   width: 466px;
   top: 108px;
   
}

/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */
/*  */






/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */
/*------------------------------------  */




.recruitTitBox .btn_filter_box i.arrow {
   width: 20px;
   height: 20px;
   background-image: url(img/arrownone.svg);
   background-repeat: no-repeat;
   background-position: 50%;
   background-size: 100%;
   margin-left: 12px
}

.recruitTitBox .box_bottom .search-box {
   width: 300px;
   height: 48px;
   border: 1px solid #d2d2d2;
   position: relative;
   border-radius: 8px;
}

.recruitTitBox .box_bottom .search-box input {
   display: block;
   padding: 0 58px 0 10px;
   height: 100%;
   width: 100%;
   box-sizing: border-box;
   color: #333;
   margin-left: 0;
   border-radius: 8px;
   font-size: 15px;
   letter-spacing: 0;
}

.recruitTitBox .box_bottom .search-box .searh-button {
   height: 48px;
   background: url(img/icon_search.png) no-repeat 50%;
   position: absolute;
   top: 0;
   right: 5px;
   display: block;
   width: 28px;
}

.recruitTitBox.tag_box {
   margin-top: 24px;
   padding-top: 0;
   border-top: none;
}

.recruitTitBox.tag_box ul {
   display: flex;
   align-items: center;
   justify-content: center;
   width: 100%;
   gap: 8px;
}

.recruitTitBox.tag_box ul li button {
   padding: 7px 11px 8px;
   display: block;
   border: 1px solid #d2d2d2;
   border-radius: 99px;
}

.recruitTitBox.tag_box ul li button span {
   font-size: 14px;
   letter-spacing: 0;
   font-weight: 500;
   color: #444;
}

.recruitJobFilterWrap {
   margin: 24px 0 0;
}

.recruitFilter-section {
   border-radius: 15px;
   background: #fff;
}

.recruitFilter-section .sort-select-box {
   position: relative;
   z-index: 4;
   margin: 40px auto 32px;
   width: 1200px;
   border-bottom: 1px solid #e8e8e8;
   padding-bottom: 15px;
}

.recruitFilter-section .sort-select-box {
   float: left;
}

.recruitFilter-section .sort-select-box::after {
   content: "";
   display: block;
   clear: both;
}
.recruitFilter-section .sort-select-box .sort-select-all{
   float: left;
}
.recruitFilter-section .sort-select-box .sort-select-all span {
   font-size: 16px;
   letter-spacing: 0;
   line-height: 38px;
   color: #6a6a6a;
}

.recruitFilter-section .sort-select-box .sort-select-all span em {
   margin: 0 3px;
   display: inline-block;
}

.sort-select-box .drop-down-box {
   margin: 0;
   float: right;
}

.sort-select-box .drop-down-box:after {
   content: "";
   display: block;
   clear: both;
}

.sort-select-box .drop-down-box .button-box {
   position: relative;
   float: left;
}

.sort-select-box .drop-down-box .button-box .sort-button {
   display: block;
   padding-right: 20px;
   line-height: 38px;
   font-size: 16px;
   letter-spacing: 0;
   position: relative;
   color: #6a6a6a;
}

.sort-select-box .drop-down-box .button-box .sort-button:after {
   content: "";
   display: block;
   position: absolute;
   right: -2px;
   top: 9px;
   width: 18px;
   height: 20px;
   background-image: url(/img/arrownone.svg);
   background-position: 100%;
   background-size: 19px 20px;
   background-repeat: no-repeat;
   color: #000;
}
   .recruitWrap{
      position: relative;
   }
   /* 전체 a  */
   .recruitWrap a{
      display: block;
   }
   .recruitWrap .secContents{
      width: 1200px;
      margin: 0 auto;
      padding: 0;
      position: relative;
      z-index: 1;
   }
   .recruitWrap .recruitList ul{
      display: flex;
      flex-wrap: wrap;
      gap:20px 4%;
      margin: 0;
      padding: 0;
      list-style: none;
       width: 100%; /* 원하는 너비 설정 */
         height: auto;
        
   }          
   .recruitWrap .recruitList ul>li{
   
    margin-bottom: 32px;
      width: 22%;
      
      
   }
   
   .recruitWrap .recruitList ul li .listCell{
      cursor: pointer;
      border: 1px solid #e8e8e8;
      box-sizing: border-box;
      box-shadow: 2px 2px 10px rgba(0,0,0,.05);
      border-radius: 8px;
      width: 100%;
      height: 330px;
      position: relative;
      transition: .3s;
      color:  #333;
      
      
   }

   .recruitWrap .recruitList ul>li:nth-child(4n) {
      margin-right: 0;
   }
   .recruitWrap .recruitList ul .listCell .pLogo{
      position: relative;
      height: 130px;
      overflow: hidden;
      border-radius: 8px 8px 0 0;
      z-index: -1;
   }
   .recruitWrap .recruitList ul .listCell .pLogo img{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 100%;
      display: block;
      border: 0;
      vertical-align: top;
      padding: 0;
      margin: 0
   }
   .recruitWrap .recruitList ul .listCell .listCont{
      padding: 25px 24px 16px;
      margin: -1px;
      border-top: 1px solid rgba(0, 0, 0, .05);
      
   }
   /* posNm */
   
   .recruitWrap .recruitList ul .listCell .listCont .pCor{
      display: flex;
      align-items: center;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pCor .posNm{
      max-width: calc(100% - 23px);
      font-weight: 700;
      font-size: 15px;
      letter-spacing: 0;
      line-height: 22px;
      color: #171717;
      display: inline-block;
      margin: 0 7px 0 0;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
   }
   .recruitWrap .recruitList ul .listCell .listCont pTit{
      margin: 12px 0 0;
      font-size: 16px;
      letter-spacing: 0;
      color: #171717;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pInfo{
      margin: 4px 0 0;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pInfo span{
      color:#6a6a6a;
      font-size: 13px;
      letter-spacing: 0;
      line-height: 22px;
      padding: 0 8px 0 0;
      position: relative;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pInfo .pPart:after {
      content: "";
      display: inline-block;
      width: 1px;
      height: 10px;
      background-color: #d2d2d2;
      position: absolute;
      right: 0;
      top: 50%;
      transform: translateY(-50%);
   }
   .recruitWrap .recruitList ul .listCell .listCont .pInfo .pAddress{
      padding: 0 0 0 8px;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pStackBox{
      margin: 12px 0 0;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      height: 16px;
      overflow: hidden;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pStackBox span{
      color: #9e9e9e;
      font-size: 12px;
      letter-spacing: 0;
      line-height: 16px;
      position: relative;
      display: inline-block;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pStackBox pStack{
      max-width: 236px;
      display: inline-block;
      font-size: 0;
   }
   .recruitWrap .recruitList ul .listCell .listCont .pStackBox .pStack tag{
      max-width: 100%;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
   }
   .recruitWrap .recruitList ul .listCell .listFoot{
      padding: 16px 0 24px;
      margin: 0 24px;
      border-top: 1px solid #e8e8e8;
   }
   .recruitWrap .recruitList ul .listCell .listFoot .pAssist{
      font-size: 14px;
      letter-spacing: 0;
      line-height: 22px;
      color: #171717;
      position: relative;
      display: flex;
      justify-content: space-between;
      align-items: center;
   }
   
   
   /* 서치 하는 버튼  */
   .filter-box.district-box{
      width: 466px;
      
   }
   
   .btn_box .filter-box{
      top: 180px;
      left: unset;
   }
   .filter-box.open{
   
   display: block;
   }
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  *//*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  *//*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   
   
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  *//*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  *//*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   /*--------------------------  */
   
   
   .filter-box{
      position: absolute;
      border: 1px solid #d2d2d2;
      background-color: #fff;
      height: fit-content;
      border-radius: 8px;
      z-index: 99;
      box-sizing: border-box;
      box-shadow: 2px 2px 10px 0 rgba(0,0,0,.05);
      display: none;
   }
   
   .filter-box ul{
      width: 100%;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 8px;
      padding: 32px 24px 32px 32px;
   }
   .filter-box ul li{
      width: 94px;
   }
   .filter-box ul li button{
      padding: 13px 0;
      border: 1px solid #e8e8e8;
      font-size: 14px;
      letter-spacing: 0;
      line-height: 22px;
      color: #6a6a6a;
      background: #f8f8f8;
      border-radius: 4px;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 100%;
   }
   .filter-box ul li button.active{
      border: 1px solid #171717;
      color: #171717;
      background-color: #fff;
   }
   .filter-box .button-box{
      display: flex;
      justify-content: center;
      padding: 32px 0;
      border-radius: 0 0 8px 8px;
      border-top: 1px solid #e8e8e8;
      background-color: #fff;
      gap:8px;
   }
   .filter-box .button-box .search-reset{
      line-height: 34px;
      border: 1px solid #d2d2d2;
      width: 90px;
      height: 42px;
      padding-top: 2px;
      font-weight: 500;
      font-size: 16px;
      letter-spacing: 0;
      color: #171717;
      border-radius: 8px;
      display: flex;
      justify-content: center;
      align-items: center;
      vertical-align: middle;
   }
   .filter-box .button-box .search-button{
      line-height: 34px;
      font-weight: 500;
      font-size: 16px;
      letter-spacing: 0;
      padding-top: 2px;
      color: #fff;
      border-radius: 8px;
      background-color: #003ecb;
      align-items: center;
      width: 120px;
      height: 42px;
      display: flex;
      justify-content: center;
   }
   
   
</style>
</head>

<body>
   <%@include file="/WEB-INF/include/Header.jsp"%>


   <main>
      <section class="img-container"></section>
      <div class="main-wrap inner">
         <div class="recruitTitContainer">
            <div class="recruitTitBox">
               <div class="container">
                  <div class="box_top dev_wrap-department">
                     <p class="recruitTit dev-title">직무 전체</p>
                     <button class="btn_filter fiex_layout">
                        <span>직무를 선택해주세요</span>
                        <span class ="filter_text dev-select-text"></span>
                        <i class ="arrow"></i>
                     </button>
                     <div class="filter-box department-box">
                        <ul>
                           <li>
                              <button class ="dev-button-all">전체</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">백엔드</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">프론트엔드</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">물류</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">금융</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">의료</button>
                           </li>
                           <li>
                              <button class ="dev-button-item">영업</button>
                           </li>
                        </ul>
                        <div class ="button-box">
                           <button class ="search-reset">초기화</button>
                           <button class = "search-button">적용하기</button>
                        </div>
                     </div>
                  </div>
                  <div class="box_bottom">
                     <div class="btn_boxes">
                        <div class="btn_box dev_wrap-local">
                           <button class="btn_filter btn_filter_box">
                              <span>지역</span> 
                              <span class ="filter_text dev-select-text">서울</span>
                              <i class="arrow"></i>
                           </button>
                           <div class="filter-box district-box">
                              <ul>
                                 <li>
                                    <button class ="dev-button-all active">전체</button>
                                 </li>
                                 <li>
                                    <button class ="dev-button-item ">서울</button>
                                 </li>
                                 <li>
                                    <button class ="dev-button-item">경기</button>
                                 </li>
                                 <li>
                                    <button class ="dev-button-item">인천</button>
                                 </li>
                                 <li>
                                    <button class ="dev-button-item">부산</button>
                                 </li>
                              </ul>
                              <div class ="button-box">
                                 <button class="search-reset">초기화</button>
                                 <button class="search-button">적용하기</button>
                              </div>
                           </div> 
                        </div>
                        <div class="btn_box dev_wrap-career">
                           <button class="btn_filter btn_filter_box">
                              <span>경력</span> 
                              <span class ="filter_text dev-select-text">신입</span>
                              <i class="arrow"></i>
                           
                           </button>
                           <div class="filter-box carreer-box" >
                              <ul>
                                 <li>
                                    <button class="dev-button-item">경력무관</button>
                                 </li>
                                 <li>
                                    <button class="dev-button-item">신입</button>
                                 </li>
                                 <li>
                                    <button class="dev-button-item">경력</button>
                                 </li>
                              </ul>
                              <div class="button-box">
                                 <button class="search-reset">초기화</button>
                                 <button class="search-button">적용하기</button>
                              </div>
                           </div>
                        </div>
                        <div class ="btn_box">
                           <button class ="btn_reset" id ="resetCondition">
                              <i></i>
                              <span>초기화</span>
                           </button>
                        </div>
                        
                     </div>
                     <!-- btn_boxes -->
                     <form id="searchForm">
                        <!-- onsubmit ="retrun false" -->
                        <div class="search-box">
                           <input type="text" name="Keyword" maxlength="30"
                              placeholder="기업명 공고명 검색">
                           <button type="button" class="searh-button"></button>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
            <!-- recruitTitBox -->
            <div class="recruitTitBox tag_box">
               <div class="container">
                  <ul>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>💵 절적한 보상</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>⏰ 유연한그문제</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>🔥 인기많은 공고</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>🌎 외국계 기업</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>💎 탄탄한 기업</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>📈 스톡옵션 제공</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>💸 통큰 연공</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>💰 축하금 많이 드려요</span>
                        </button>
                     </li>
                     <li>
                        <button class="tag dev-button-item" data-code="3">
                           <span>🚩 오늘 등록</span>
                        </button>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         <!-- recruitTitContainer -->
         <div class="recruitJobFilterWrap">
            <div class="recruitFilter-section">
               <div class="sort-select-box">
                  <div class="sort-select-all">
                     <span> 총 <em id="totalCount">${count }</em> 건
                     </span>
                  </div>
                  <div class="drop-down-box">
                     <div class="button-box">
                        <button class="sort-button">합격축하금 높은 순</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div id ="recruitWrap" class ="recruitWrap">
            <div class ="secContents">
               <div id ="searchLog"></div>
               <div id ="searchList" class ="recruitList">
                  <ul data-totalcount = "4" data-pageno ="1">
                  <c:forEach var="item" items="${ homeSearchVo }" varStatus="loop">
                  
                     <li>
                        <a href ="/Company/PostingView?posting_pno=${item.posting_pno }&nowpage=1" class ="listCell">
                           <div class="pLogo"><img src ="/img/${item.posting_com_profile}.jpg"></div>
                           <div class="listCont">
                              <div class="pCor">
                                 <span class ="posNm">${item.com_name }</span>
                              </div>
                              <div class ="pTit">${item.posting_title }</div>
                              <div class ="pInfo">
                                 <span class ="pPart">
                                    ${item.posting_hope_department }
                                 </span>
                                 <span class ="pAddress">
                                   ${item.com_address }
                                 </span>
                              </div>
                              <div class ="pStackBox">
                                 <span class ="tag tag-tack">${item.posting_stack }</span>
                                 <!-- <span class ="tag tag-tack">java</span>
                                 <span class ="tag tag-tack">html</span> -->
                              </div>
                           </div><!-- listCount -->
                           <div class="listFoot">
                              <div class ="pAssist">
                                 <span>🏆 합격축하금 100만원</span>
                                 <span class ="pPeriod">${item.posting_enddate }</span>
                              </div>
                           </div>
                           <button class="bookmark"></button>
                        </a>
                     </li>
                     
                  </c:forEach>
                  </ul>
               </div>
            </div>
         </div><!-- recruitWrap -->
      </div>
   </main>
   
   <%@include file="/WEB-INF/include/Footer.jsp"%>
   <script>
   const content = document.querySelector('.recruitTitBox .container');
   // 컨텐츠 영역부터 브라우저 최상단까지의 길이 구하기
   const contentTop = content.getBoundingClientRect().top + window.scrollY;
   const recruitTitBox = document.querySelector('.recruitTitBox');
   const tagBox =  document.querySelector('.recruitTitBox.tag_box');
   
   console.log(contentTop);
   window.addEventListener('scroll', function(){
      console.log(window.scrollY );
     if(window.scrollY >= contentTop){
        recruitTitBox.classList.add('fixed');
        tagBox.classList.add('fixed');
     }else{
        recruitTitBox.classList.remove('fixed');
        tagBox.classList.remove('fixed');
     }
   });
   
   
   
   document.addEventListener("DOMContentLoaded", function() {
       
      
      
      

      var searchLikeVo ={
            department: "전체",
            local: "전체",
            career: "경력무관",
            searchIcon:"전체"
            
      }
      var searchLikeIndex = 0; 
      
      function changeLikeIndex(index, value){
         switch (index){
         case 0:
            searchLikeVo.department = value;
            break;
         case 1:
            searchLikeVo.local = value;
            break;
         case 2:
            searchLikeVo.career =value;
            break;
         case 3:
            searchLikeVo.searchIcon = value;
            break;
         default:
            console.log("서치버튼클릭중 인데슥에서 오류남");
            break;
         }   
      }
      function fetchData(){
         fetch("/Home/Search", {
               method:'POST',
               headers:{
                   'Content-Type': 'application/json'
               },
               body:JSON.stringify(searchLikeVo)
               
            })
            .then(response =>{
               if(!response.ok){
                  throw new Error('리스폰 객체를 못가지고 옴')
               }
               return response.json();
               
            })
            .then(responseData =>{
               const data = JSON.parse(responseData.homeSearchString); // responseData의 homeSearchString을 JavaScript 객체로 변환
                console.log('서버에서 데이터 가지고 옴', data);
                 var oldUlEl = document.querySelector('#searchList ul');
                 oldUlEl.remove();

                 const newUlEl = document.createElement('ul');

                 data.forEach(item => {
                     const liEL = document.createElement('li');
                     const aEl = document.createElement('a');
                     aEl.href = "/Company/PostingView?posting_pno="+item.posting_pno+"&nowpage=1";
                     aEl.classList.add("listCell");
                     liEL.appendChild(aEl);

                     const pLogoEl = document.createElement('div');
                     pLogoEl.classList.add("pLogo");
                     aEl.appendChild(pLogoEl);

                     const pLogoImgEl = document.createElement('img');
                     pLogoImgEl.src = "/img/" + item.posting_com_profile + ".jpg";
                     pLogoEl.appendChild(pLogoImgEl);

                     const listContEl = document.createElement('div');
                     listContEl.classList.add("listCont");
                     aEl.appendChild(listContEl);

                     const pCorEl = document.createElement('div');
                     pCorEl.classList.add("pCor");
                     listContEl.appendChild(pCorEl);

                     const posNmSpan = document.createElement('span');
                     posNmSpan.classList.add("posNm");
                     posNmSpan.textContent = item.com_name;
                     pCorEl.appendChild(posNmSpan);

                     const pTitEl = document.createElement('div');
                     pTitEl.classList.add("pTit");
                     pTitEl.textContent = item.posting_title;
                     listContEl.appendChild(pTitEl);

                     const pInfoEl = document.createElement('div');
                     pInfoEl.classList.add("pInfo");
                     listContEl.appendChild(pInfoEl);

                     const pPartSpan = document.createElement('span');
                     pPartSpan.classList.add("pPart");
                     pPartSpan.textContent = item.posting_hope_department;
                     pInfoEl.appendChild(pPartSpan);

                     const pAddressSpan = document.createElement('span');
                     pAddressSpan.classList.add("pAddress");
                     pAddressSpan.textContent = item.com_address;
                     pInfoEl.appendChild(pAddressSpan);

                     const pStackBoxEl = document.createElement('div');
                     pStackBoxEl.classList.add("pStackBox");
                     listContEl.appendChild(pStackBoxEl);

                     const tagSpan = document.createElement('span');
                     tagSpan.classList.add("tag", "tag-tack");
                     tagSpan.textContent = item.posting_stack;
                     pStackBoxEl.appendChild(tagSpan);

                     const listFootEl = document.createElement('div');
                     listFootEl.classList.add("listFoot");
                     aEl.appendChild(listFootEl);

                     const pAssistEl = document.createElement('div');
                     pAssistEl.classList.add("pAssist");
                     listFootEl.appendChild(pAssistEl);

                     const congratSpan = document.createElement('span');
                     congratSpan.textContent = "🏆 합격축하금 100만원";
                     pAssistEl.appendChild(congratSpan);

                     const pPeriodSpan = document.createElement('span');
                     pPeriodSpan.classList.add("pPeriod");
                     pPeriodSpan.textContent = item.posting_enddate;
                     pAssistEl.appendChild(pPeriodSpan);

                     const buttonEl = document.createElement('button');
                     buttonEl.classList.add("bookmark");
                     aEl.appendChild(buttonEl);

                     newUlEl.appendChild(liEL);
                 });

                 document.querySelector('.secContents #searchList').appendChild(newUlEl);
                 document.querySelector( '.sort-select-all em').innerText = responseData.count;
             })
             .catch(error => {
                 console.error('fetch에서 뭔가 문제가 생김', error);
             });
         
      }
       // 모든 버튼 요소를 선택합니다.
       var btnBoxes = document.querySelectorAll('.btn_filter');

       // 각 버튼 요소에 대해 클릭 이벤트를 추가합니다.
       btnBoxes.forEach(function(btnBox) {
           btnBox.addEventListener('click', function() {
              // 현재 클릭된 버튼의 부모 요소에서 모든 버튼을 찾습니다.
               var parentClass = btnBox.parentElement.classList;
           
               // 클릭된 버튼 요소의 클래스를 확인하여 이벤트를 처리합니다.
               var btnClass = parentClass.contains('dev_wrap-department') ? 'department' :
                              parentClass.contains('dev_wrap-local') ? 'local' :
                              parentClass.contains('dev_wrap-career') ? 'career' : '';
               var filterBox = btnBox.nextElementSibling;

               var siblingFilterBoxes = document.querySelectorAll('.filter-box');
               siblingFilterBoxes.forEach(function(siblingFilterBox) {
                   if (siblingFilterBox !== filterBox) {
                       siblingFilterBox.classList.remove('open');
                   }
               });
               
               // 각 버튼에 대한 처리
               switch (btnClass) {
                   case 'department':
                      filterBox.classList.toggle('open');
                      searchLikeIndex = 0;
                      break;
                   case 'local':
                      filterBox.classList.toggle('open');
                      searchLikeIndex = 1;
                       break;
                   case 'career':
                       filterBox.classList.toggle('open');
                       searchLikeIndex = 2;
                       break;
                   default:
                       break;
               }

               
               var buttons = filterBox.querySelectorAll('ul li button');
               
               // 각 버튼에 대해 클릭 이벤트를 추가합니다.
               buttons.forEach(function(button) {
                   button.addEventListener('click', function() {
                       // 현재 클릭된 버튼을 제외한 다른 버튼들의 active 클래스를 제거합니다.
                       buttons.forEach(function(otherButton) {
                           if (otherButton !== button) {
                               otherButton.classList.remove('active');
                           }
                       });
                       // 현재 클릭된 버튼에 active 클래스를 추가합니다.
                       button.classList.add('active');
                       
                   });
               });//buttons.forEach
               var applybtn = filterBox.querySelector('.button-box .search-button');
               applybtn.addEventListener('click', function() {//적용하기 클릭
                   
                  //var activeButtons = document.querySelector('.dev-button-item.active');
                  var activeButton = filterBox.querySelector('.active');
                  if(activeButton){
                     var chooseBtnText = activeButton.innerText;
                     
                     changeLikeIndex(searchLikeIndex, chooseBtnText);
                     
                     
                     console.log(searchLikeVo);
                     console.log(searchLikeVo);
                     console.log(searchLikeVo);
                     var choosetxt = btnBox.querySelector('.dev-select-text');
                     
                     choosetxt.classList.add('selected');
                     choosetxt.innerText = chooseBtnText;
                     
                  }
              /*------------------------------------------  */
              fetchData();
                
                 
                 /*-------------------------  */
                  
                  filterBox.classList.remove('open');
                  
                  //siblingFilterBoxes.style.display = 'none';
                });
               //.btn_filter_box span.filter_text selected
           });
       });// btnBoxes.forEach
       
          let searchIcon = document.querySelector('#searchForm .search-box button');
          console.log(searchIcon);
          
          
          
           searchIcon.addEventListener('click', function(){
               let iconText = this.parentElement.querySelector('input').value;
               changeLikeIndex(3, iconText);
               console.log(iconText);
               console.log(searchLikeVo);
                 // input 태그의 값 출력
                 
                 fetchData();
                 
                 
           
              
           });
          let resetBtn = document.querySelector('.btn_boxes .btn_box .btn_reset');
          console.log(resetBtn);
        
          resetBtn.addEventListener('click', function(){
             changeLikeIndex(0,"전체")
             changeLikeIndex(1,"전체")
             changeLikeIndex(2,"경력무관")
             changeLikeIndex(3,"전체")
             let button_texts = document.querySelectorAll('.btn_filter .filter_text.selected');
             button_texts.forEach(function(button){
                button.innerText = "전체";
                
                
                });
             
             fetchData();
            
               
              
             
          });
   });
   
   
   </script>

</body>

</html>






