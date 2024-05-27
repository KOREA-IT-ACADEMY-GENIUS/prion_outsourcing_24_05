<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Main"></c:set>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap"
	rel="stylesheet">


<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background:
		url('https://images.unsplash.com/photo-1516409590654-e8d51fc2d25c?q=80&w=2026&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
		no-repeat center center fixed; /* 배경 이미지 설정 */
	background-size: cover; /* 이미지가 화면을 꽉 채우도록 설정 */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	color: #fff; /* 기본 글자색 흰색으로 설정 */
}

.waviy {
	position: relative;
	-webkit-box-reflect: below -20px
		linear-gradient(transparent, rgba(0, 0, 0, .2));
}

.waviy span {
	position: relative;
	display: inline-block;
	font-size: 80px;
	font-family: "Playfair Display", serif;
	font-weight: 600;
	color: #fff;
	letter-spacing: -3px;
}

.about-btn {
	margin-top: 80px;
}

.button {
	display: inline-block;
	text-decoration: none;
	letter-spacing: 1px;
	color: #fff;
	padding: 10px 20px;
	border-radius: 10px;
	font-family: "Urbanist";
	background: linear-gradient(10deg, rgba(0, 0, 0, 0.2) 60%,
		rgba(255, 255, 255, 0.1) 100%);
}
</style>



<div class="waviy">
	<span style="--i: 1">P</span> <span style="--i: 2">r</span> <span
		style="--i: 3">i</span> <span style="--i: 4">o</span> <span
		style="--i: 5">n</span>
</div>
<div class="about-btn">
	<a href="/usr/home/about" class="button">More about Prion</a>
</div>

