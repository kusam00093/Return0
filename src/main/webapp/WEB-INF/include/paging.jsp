<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set  var="userid"            value="${ userid           }" /> 
  <c:set  var="startnum"           value="${ searchVo.pagination.startPage         }" /> 
  <c:set  var="endnum"             value="${ searchVo.pagination.endPage           }" /> 
  <c:set  var="totalpagecount"     value="${ searchVo.pagination.totalPageCount  }" /> 
  <c:set  var = "prevPage"         value ="${searchVo.pagination.prevPage} "/>
  <c:set  var = "nextPage"         value ="${searchVo.pagination.nextPage} "/>

  
   <ul class="pagination">
	    
	       <li class ="page-item"><a class ="page-link" href="/User/View?nowpage=1">처음</a> </li>
	       <li class ="page-item"><a class ="page-link" href="/User/View?nowpage=${ prevPage }">이전</a> </li>
	   		
			  
			 <!--  <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item active"><a class="page-link" href="#">2</a></li>
			  <li class="page-item"><a class="page-link" href="#">3</a></li> -->
			   <c:forEach  var="pagenum"  begin="${startnum}"  end="${endnum}"  step="1">
		        <li class="page-item"><a class="page-link" href="/User/View?nowpage=${ pagenum }">
		        ${ pagenum } </a>  </li>
		          
		     </c:forEach>
		   <li class ="page-item"><a class ="page-link" href="/User/View?nowpage=${ nextPage}">다음</a> </li>
	       <li class ="page-item"><a class ="page-link" href="/User/View?nowpage=${ totalpagecount }">마지막</a> </li>
	</ul>
 
  
  
  
  
<%--   <nav aria-label="Page navigation example" class="d-flex justify-content-end">
  <ul class="pagination">
     <c:if test="${page.prev }">                    
       <li class="page-item"><a href="${contextPath }/board/list?page=${page.pageParam.page-1}" class="page-link">이전</a></li>
   </c:if>

   <c:forEach var="pageNum" begin="${page.startPage }" end="${page.endPage }" step="1">
       <li class="page-item ${pageNum == page.pageParam.page? "active" : "" }"><a class="page-link" href="?page=${pageNum }">${pageNum }</a></li>
   </c:forEach>

     <c:if test="${page.next }">                    
       <li class="page-item"><a href="${contextPath }/board/list?page=${page.endPage+1}" class="page-link">다음</a></li>
   </c:if>                       
    </ul> --%>
</nav>
  