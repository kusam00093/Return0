<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>기업 공고 상세보기</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" />
    <link href="/css/start.css" rel="stylesheet" />
    <link href="/css/test.css" rel="stylesheet" />

    <style>
    	body{
    		width : 80%;
    		margin : 0 auto;
    	}
    	
    	
		.title{
			font-weight: bolder;
			font-size: 30px;
			text-align : center;
		}
		
		form{
		}
		
		.ac{
			display : grid;
			grid-template-columns: 1fr 1fr ;
			border : 1px solid black;
			padding : 30px;
			border-radius: 10px;
		}
		
		.person{
			display : grid;
			grid-template-columns: 1fr 1fr 1fr;
			grid-template-rows: 1fr 1fr 1fr;
						border : 1px solid black;
			padding : 30px;
			border-radius: 10px;
		}
		
		.sub_title1{
			font-weight: bold;
		}
		
		.sub_title2{
			font-size: 20px;
			font-weight: bold;
			text-align: center;
		}
		
		.content{
			border : 1px solid black;
			border-radius: 5px;
			padding : 30px;
		}
		
		#inside_title{
			color: #3f98f7;
		
		}
        #goUpdate {
            display: block;
            width: 120px;
            margin: 20px auto;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        #goUpdate:hover {
            background-color: #0056b3;
        }
        
    main{
		margin: 0 auto;
		width : 1200px;
		text-align: center;
	}
	
	.sub_title{
		font-weight : border;
		text-align : center;
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		font-size : 20px;
		font-weight: border;
		padding : 10px;
		margin-left: 10px;
		
	.td1{
		width : 50px;
	}
	
	.td2{
		width : 650px;
		margin-right: 50px;
	}
	
	.td3{
		width : 150px;
		padding-right: 100px;
	}
	
	.td4{
		margin-right : 50px;
		padding-right: 50px;
		width : 200px;
		
	}
	

	}
	button{
		margin-right: 50px;
	}
	
	.content1{
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		border : 1px solid  #3f98f7;
		padding : 10px;
		border-radius: 5px;
		margin : 10px;}
		
		
		
    .td1{
		width : 50px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
		text_align : center;
	}
	
	.td2{
		width : 650px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
			text_align : center;
	}
	
	.td3{
		width : 150px;
		border-right : 1px solid rgba(63, 98, 247, 0.5);
			text_align : center;
	}
	
	.td4{
		width : 200px;
			text_align : center;
	}
	
	.td5{
		width : 150px;
			text_align : center;
	}
		
	}
	
	.ac, .person, .content1 {
    margin-bottom: 20px;
}

.sub_title1, .sub_title2 {
    margin-bottom: 15px;
}

.sub_title {
    display: flex;
    justify-content: space-between;
    padding: 10px;
    margin-bottom: 20px;
    font-weight: bold;
    background-color: #f0f0f0;
}

.content1 {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 10px;
}
.btn-detail {
	    display: inline-block;
	    padding: 8px 16px;
	    background-color: #007bff;
	    color: #fff;
	    border-radius: 3px;
	    text-decoration: none;
	    transition: background-color 0.3s ease;
	    
		}

.btn-detail:hover {
    background-color: #0056b3;
    color: white;
}
#detail{
	padding:20px;
	text-align: center;
	width: 200px;

}


.title-link {
    color: #007bff;
    text-decoration: none;
}

.apply-link {
    color: #28a745;
    text-decoration: none;
}
.ac, .person, .content  {
    margin-bottom: 50px; /* 이 값을 조정하여 디브들 사이의 간격을 조절할 수 있습니다. */
}
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/include/Header.jsp" %>
	 <div>&nbsp;</div>
	 <div>&nbsp;</div>
	 <div>&nbsp;</div>
	 <div>&nbsp;</div>
    <form action="/Resume">
        <div class="title">${map.posting_title}</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div class="ac">
            <div class="apply">
                <div class="sub_title1">지원요건</div>
                <div>경력</div>
                <div id="inside_title">${map.posting_career}</div>
                <div>지원부서</div>
                <div id="inside_title">${map.posting_hope_department}</div>
                <div>학력</div>
                <div id="inside_title">${map.posting_grade}</div>
                <div>스킬</div>
                <div id="inside_title">${vo.posting_stack}</div>
            </div>
            <div class="company">
                <div class="sub_title1">기업 정보</div>
                <div>기업명</div>
                <div id="inside_title">${map.com_name}</div>
                <div>기업형태</div>
                <div id="inside_title">${map.com_type}</div>
                <div>마감기한</div>
                <div id="inside_title">${map.posting_enddate}</div>
                <div>회사주소</div>
                <div id="inside_title">${map.com_address}</div>
            </div>
        </div>
        <div class="sub_title2">당담자 정보</div>
        <div class="person">
            <div>
                <div>대표자</div>
                <div id="inside_title">${map.com_ceo}</div>
            </div>
            <div>
                <div>전화번호</div>
                <div id="inside_title">${map.com_phone}</div>
            </div>
            <div>
                <div>이메일</div>
                <div id="inside_title">${map.com_email}</div>
            </div>
        </div>
        <div class="sub_title2">채용 정보</div>
        <div class="content">
            <div>${map.posting_content}</div>
        </div>

    </form>
    <div>
        <c:choose>
            <c:when test="${sessionScope.userLogin != null }">
               			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
          <a href="/Resume/ResumeApplyList?nowpage=${nowpage }&posting_pno=${postingVo.posting_pno}" class="btn-detail" id="detail">지원하기</a>
            </c:when>
        </c:choose>
    </div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>

    <div class="sub_title">
        <div class="td1" style="width:150px">번호</div>
        <div class="td2" style="width:530px">제목</div>
        <div class="td3" style="width:200px">부서</div>
          <div class="td4" style="width:200px">
                            <c:choose>
                    <c:when test="${sessionScope.companyLogin != null }">
            마감기한
                    </c:when>
                </c:choose>
            </div>
            <div class="td5" style="width:200px">
                <c:choose>
                    <c:when test="${sessionScope.userLogin != null }">
                       즉시지원
                    </c:when>
                </c:choose>
            </div>
    </div>  
    <c:forEach  var="co" items="${postingList}">
        <div class="content1">
            <div class="td1" style="width:150px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${co.row_number}</div>
            <div class="td2" style="width:500px" ><a href="/Company/PostingView?nowpage=${nowpage}&posting_pno=${co.posting_pno}">${co.posting_title}</a></div>
            <div class="td3" style="width:220px">${co.posting_hope_department}</div>
            
            <div class="td4" style="width:200px">
                            <c:choose>
                    <c:when test="${sessionScope.companyLogin != null }">
            ${co.posting_enddate}
                    </c:when>
                </c:choose>
            </div>
            <div class="td5" style="width:200px">
                <c:choose>
                    <c:when test="${sessionScope.userLogin != null }">
                        <a href="/Resume/ResumeApplyList?nowpage=${nowpage }&posting_pno=${postingVo.posting_pno}" class="btn-detail">즉시지원</a>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </c:forEach>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    

    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>

    <%@ include file="/WEB-INF/include/Footer.jsp" %>
</body>
</html>