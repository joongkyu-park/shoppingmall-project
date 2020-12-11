<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="user.UserDAO"%>
<%@ page import="user.User"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty  name="user" property="*" />

<html>

<head>
<meta charset="UTF-8" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/shop.css">

<title>아메카지 브랜드 MOAA(모아) 공식몰 입니다.</title>

</head>

<body>

	<header>
		<div id="logo">
			<a href="index.jsp"> <img src="images/moaa.png" width="170px"
				height="30px">
			</a>
		</div>

		<div class="menubar">
			<div class="menu">
				<a href="http://www.facebook.com" target="_blank"> <i
					class="fab fa-facebook"></i>
				</a> <a href="http://www.instagram.com" target="_blank"> <i
					class="fab fa-instagram"></i>
				</a> <a href="https://section.blog.naver.com/" target="_blank"> <i
					class="fab fa-blogger-b"></i>
				</a>
			</div>
			<div class="menu" id="menu">
				<div>
					<a href="about.jsp" style="color: dimgray">ABOUT </a>
				</div>
				<div>
					<a href="shop.jsp" style="color: dimgray">SHOP</a>
				</div>
				<div>
					<a href="lookbook.jsp" style="color: dimgray">LOOKBOOK</a>
				</div>
				<div>
					<a href="community.jsp" style="color: dimgray">COMMUNITY</a>
				</div>
			</div>
			<div class="menu">
				<i class="fas fa-search"></i> <i class="fas fa-user"></i> <i
					class="fas fa-shopping-cart"></i>
			</div>
		</div>
	</header>

	<%
		String userID =(String)session.getAttribute("userID");
		System.out.println(userID);
		UserDAO userDAO = new UserDAO();
		User userInfo = userDAO.getUserInfo(userID);
	%>
	
	<main>
	<div id="wrap">
		<br> <br> <b><font size="5" color="gray">회원가입 정보를
				확인하세요.</font></b> <br> <br> <font color="blue"><%=userInfo.getUserID() %></font>님의
		회원정보 <br> <br>

		<%-- 자바빈에서 입력된 값을 추출한다. --%>
		<table border=1>
			<tr>
				<td >아이디</td>
				<td><%=userInfo.getUserID() %></td>
			</tr>

			<tr>
				<td >비밀번호</td>
				<td><%=userInfo.getUserPassword() %></td>
			</tr>

			<tr>
				<td >이름</td>
				<td><%=userInfo.getUserName() %></td>
			</tr>

			<tr>
				<td >성별</td>
				<td><%=userInfo.getUserGender()%></td>
			</tr>

			<tr>
				<td >이메일</td>
				<td><%=userInfo.getUserEmail() %></td>
			</tr>

		</table>

		<br> <input type="button" value="확인" onclick="location.href='index.jsp'">
	</div>
	

	<input type="button" onclick="location.href='logoutAction.jsp'"
		value="로그아웃">

	</main>

	<footer>
		<div class="menu">
			<a href="http://www.facebook.com" target="_blank"> <i
				class="fab fa-facebook"></i>
			</a> <a href="http://www.instagram.com" target="_blank"> <i
				class="fab fa-instagram"></i>
			</a> <a href="https://section.blog.naver.com/" target="_blank"> <i
				class="fab fa-blogger-b"></i>
			</a>
		</div>
		<br> <br> 이용약관 개인정보처리방침 사업자정보확인<br> <br> 상호: MOAA
		| 대표: 박중규 | 개인정보관리책임자: 박중규 | 전화: 010-1234-5678 | 이메일: xxxx@xxxx.com<br>
		<br> 이 웹사이트는 개인 프로젝트를 위한 웹사이트입니다. 상업적 영리적 용도가 아닙니다. 이 웹사이트는 개인
		프로젝트를 위한 웹사이트입니다. 상업적 영리적 용도가 아닙니다.<br> <br> <br>

		<div>
			<img
				src="https://pbs.twimg.com/profile_images/1210194702/_____400x400.gif"
				width="20px" height="20px"
				onclick="location.href=' https://www.inha.ac.kr/kr/index.do'"
				style="cursor: pointer;"><span id="school">인하대학교 컴퓨터공학과</span>
		</div>
	</footer>
</html>