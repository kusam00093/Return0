<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Hello, world!</title>
    <link href="/css/start.css" rel="stylesheet" />
    <link href="/css/test.css" rel="stylesheet" />
    
    
    <style>
       .main {
        display: flex;
        justify-content: center;
      }
      
      .content {
        display: flex;
        margin-bottom: 150px;
      }
      
      .content .left {
        flex: 1;
        padding: 20px;
      }
      .content .left h2{
      
      }
      .content .left .person_date{
          border: 1px solid black;
          text-align: center;
           display: flex;
           flex-direction: column;
           align-items: center;
           padding: 80px;
					margin: 10px
      }
      .content .left .person_date > a{
         display: inline-block;
         border: 1px solid #3f98f7;
         border-radius: 5px; 
         padding: 2px 4px;
         color: #3f98f7;
         margin: 4px 0;
      }
      .content .left .profile_pic{
         width: 50%
      }
      
      
      .content .right {
        flex: 3;
        padding: 20px;
      }
      
      .content .tabs {
        display: flex;
        margin-top: 50px;
      }
      
      .content .tab {
        background-color: #f2f2f2;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
      }
      
      .content .tab:hover {
        background-color: #ccc;
        font-weight: bold;
      }
      .content .tab.active{
      font-weight: bold;
      }
      
      .content .tab-panel {
        display: none;
      }
      
      .content .tab-panel.active {
        display: block;
        font-weight: bold;
      }
      table {
        border-collapse: collapse;
        width: 100%;
      }
      
      th, td {
        padding: 10px;
        border: 1px solid #ddd; /* 셀 테두리 스타일 지정 */
        text-align: center;
      }
      td{
      font-weight: normal;
   }
   
   
    </style>
  </head>
  <body>
  
   <%@include file="/WEB-INF/include/header.jsp" %>
    
       
    <section class="content inner">
       
      <div class="left">
        <h2>이력서 리스트</h2>
        <div class ="person_date">
           <div class ="profile_pic">
               
           </div>
            <a href="/Resume/WriteForm?user_id=wodud6967">이력서 등록</a>   
        </div>
      </div>
      <div class="right">
        <div class="tabs">
          <table>
	    <tr>
	      <td>이력서 번호</td>
	      <td>이력서 내용</td>
<!-- 	      <td>이력서 등록일</td> -->
	      <td>삭제</td>
	      <td>수정</td>
	    </tr>

	    <c:forEach  var="resumeVo"  items="${ resumeList }" >
	    <tr>
	      <td>${ resumeVo.resume_rno    }</td>
	      <td><a href="/Resume/View?resume_rno=${ resumeVo.resume_rno}&user_id=wodud6967">${ resumeVo.resume_content_self  }</a></td>
	     
<%-- 	      <td>${ resumeVo.menu_seq   }</td>	       --%>
	      <td><a href="/Resume/Delete?resume_rno=${ resumeVo.resume_rno }">삭제</a></td>	      
	      <td><a href="/Resume/UpdateForm?resume_rno=${ resumeVo.resume_rno }&user_id=wodud6967">수정</a></td>
	    </tr>
	    </c:forEach>
	    
	   
	  </table>
        
    </section>
  








<!--------------------------------------------footer---------------------------------------------------  -->
      <%@include file="/WEB-INF/include/footer.jsp" %>
    
  
  <script>
  document.addEventListener('DOMContentLoaded', function() {
       const tabs = document.querySelectorAll('.tab');
       const tabPanels = document.querySelectorAll('.tab-panel');

       tabs.forEach((tab, index) => {
           tab.addEventListener('click', () => {
               // Remove 'active' class from all tabs and tab panels
               tabs.forEach(tab => tab.classList.remove('active'));
               tabPanels.forEach(panel => panel.classList.remove('active'));

               // Add 'active' class to the clicked tab and corresponding tab panel
               tab.classList.add('active');
               tabPanels[index].classList.add('active');
           });
       });
   });
  </script> 
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  
  </body>
</html>