<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function backToLogin(obj){
		obj.action = "${contextPath}/member/loginForm.do";
		obj.submit();
	}
</script>
<link rel="stylesheet" href="${contextPath }/resources/css/member/findForm_style.css">
</head>
<body>
	<div class="findTitle">
		비밀번호 찾기
	</div>
	<div class="findResult">
		<span>회원님의 비밀번호는 <span class="result">${requestScope.user_pw }</span> 입니다.</span>
		<form>
			<div class="buttons" >
				<input type="button" class="button" value="로그인" onclick="backToLogin(this.form)">
			</div>
		</form>
	</div>
</body>
</html>