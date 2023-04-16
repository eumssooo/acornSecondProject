<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath }/resources/css/common/header_style.css">
<script>
	function fn_needLogin(){
		alert("로그인이 필요합니다.");
		location.href='${contextPath }/member/loginForm.do';
	}

</script>
<script type="text/javascript">
/* 	var left = {
		pageSubmitFn : function(menu){
			 if(menu === "home"){
				$("#frm").attr("action", "/"); //form 의 action 값을 /로 변경
				$("#pageName").val("home");
			}else if(menu==="profile"){
				$("#frm").attr("action", "home2"); //form 의 action 값을 home2로 변경
				$("#pageName").val("profile");
			}
			$("#frm").submit();
		}
	}
 */
/* 	$(function(){
		$(".nav-item").removeClass("active");
		var category_name = "<c:out value='${param.category_name}' />";	
		$("#"+category_name).addClass("active"); 	
		$(".nav-item").click(function(){
			var menu = $(this).attr("id");		
			left.pageSubmitFn(menu);
		})
	}) */
</script>
<style type="text/css">
.active {
	background-color: red;
}
</style>
</head>
<body>
	<nav class="nav_bar">
		<%-- 로고 --%>
		<div class="logo">
			<a href="${contextPath }/main.do">
			<img src="${contextPath }/resources/image/secondor_logo.png" height="100px">
			</a>
 		</div>
		<div class="bar">
			<%-- 검색 --%>
			<div class="navbar_top">
				<div class="container-fluid">
					<form action="<c:url value="/main.do" />"   class="d-flex translate-middle" role="search" style="width: 100%">
		       			 <input class="form-control me-2 " name="keyword" type="text" placeholder="상품명을 검색해주세요" value="${ph.sc.keyword}" aria-label="Search" >
		       			 <button class="searchBtn" type="submit">검색</button>
		        	</form>
				</div>
			</div>
			<%-- 카테고리 --%>
			<div class="navbar_bottom">
				<ul class="nav_category">
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=living">거실</a></li>
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=dining">주방</a></li>
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=bedroom">침실</a></li>
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=bathroom">화장실</a></li>
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=study">서재</a></li>
					<li class="category_item"><a class="nav-link" id="categoryLink"
						href="${contextPath }/viewList.do?category_name=etc">기타</a></li>
				</ul>
			</div>
		</div>
		<c:choose>
		<%-- 로그인 상태 버튼 --%>
		<c:when test="${isLogOn == true && member != null }">
			<div class="nav_right">
				<div class="nav_welcomeUser_id">
					환영합니다. <a href="${contextPath }/member/logout.do">${member.user_name } </a>님!(로그아웃) 
				</div>
				<div class="nav_buttons">
						<div class="nav_login" onclick="location.href='${contextPath}/mypage/mypageMain.do';">
							마이페이지
						</div>
						<div class="nav_writeProduct" onclick="location.href='${contextPath }/write/writeForm.do';">
							상품 등록
						</div>
				</div>
			</div>
		</c:when>
		<%-- 로그아웃 상태 버튼 --%>
		<c:otherwise>
			<div class="nav_right">
				<div class="nav_welcomeUser_id" >
					<a href="${contextPath }/member/loginForm.do">로그인</a>이 필요합니다.
				</div>
				<div class="nav_buttons">
					<div class="nav_login" onclick="location.href='${contextPath }/member/loginForm.do';">
						로그인
					</div>
					<div class="nav_writeProduct" onclick="fn_needLogin();">
						상품 등록
					</div>
				</div>
			</div>
		</c:otherwise>
		</c:choose>
	</nav>
</body>