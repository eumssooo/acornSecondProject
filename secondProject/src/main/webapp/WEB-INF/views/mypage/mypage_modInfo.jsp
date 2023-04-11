<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%
   request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath }/resources/css/mypage_style.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="mypageBody">
		<!-- 사이드바 -->
		<div class="mypageSidebar">
			<div class="profile" >
				<img class="profileImg" src="${contextPath }/resources/image/newjeans.png">
				${member.user_name } 님 
			</div>
			
			<div class="mypageMenu">
			
				<a href="#" class="mypageMenuHref">내 정보 관리</a>
				<a href="#" class="mypageMenuHref">내 상품</a>
				<a href="#" class="mypageMenuHref">1대1 채팅</a>
				<a href="#" class="mypageMenuHref">회원 탈퇴</a>
		
			</div>
		</div>
		<!-- 본문 -->
		<div class="mypageContent">
			<div class="menuTitle" >
				메뉴 이름
			</div>
			<div class="menuContent">
				<form method="post" action="${contextPath }/mypage/modInfo.do">
				<table>
					<tr>
					
						<td align="center"><h4>정보 수정</h4></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td>아이디</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="${member.user_id }" readonly="readonly"><input type="hidden" name="user_id" value="${member.user_id }"></td>
					</tr>
					<tr>
						<td>이름</td>
					</tr>
					<tr>
						<td><input type="text" value="${member.user_name }" name="user_name"></td>
					</tr>
					<tr>
						<td>비밀번호</td>	
					</tr>
					<tr>
						<td><input type="password" value="${member.user_pw }" name="user_pw"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>	
					</tr>
					<tr>
						<td><input type="password" name="pwcheck"></td>
					</tr>
					<tr>
						<td>이메일</td>
					</tr>
					<tr>
						<td><input type="email" value="${member.user_email }" name="user_email"></td>
					</tr>
					<tr>
						<td>주소</td>
					</tr>
					<tr>
						<td><input type="text" value="${member.user_address }" name="user_address"></td>
					</tr>
					<tr>
						<td><input type="submit" value="수정하기"><input type="button" value="돌아가기"></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>