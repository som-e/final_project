<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>DeliverySystem</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<style>
table, tr, th, td{vertical-align: bottom;}
.star-rating {
	width: 205px;
}
.star-rating, .star-rating span {
	display: inline-block;
	height: 39px;
	overflow: hidden;
	background: url(images/star.png) no-repeat;
}
.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>

</head>

<body class="is-preload" onload='recall()'>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a class="logo"><strong><% %> 업체명 표시 예정</strong></a><!-- 업체명표시 -->
				</header>

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<div style="border: 2px solid #f56a6a; background-color:transparent; padding:5px; border-radius: 0.375em;">
							<b style="font-size:40px;">별점&nbsp&nbsp</b>
						<div class='star-rating'>
							<span style="width: 70%"></span>
							<!-- 추후 스크립틀릿으로 별점 정보 받아올 예정 "width:<% %>%"-->
						</div>										
						</div>
					</div>
				</section>
			</div>
		</div>
		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search 검색기능 일단 무시하기로 합니다-->

				<!-- <section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section> -->
				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>

						<li><a href="index.jsp">메인</a></li>
						<li><a href="login.jsp">로그인</a></li><!-- 추후 로그인이 되어있을 경우 제거 혹은 로그아웃으로 변경 -->
						<li><a href="User_usageDetails.jsp">이용내역</a></li>
						<li><a href="review_user.jsp">내가 작성한 리뷰</a></li>
						<li><a href="#">환경설정</a></li>
						<!-- 환경설정 구현예정 -->

						<!-- <li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>

											</ul> 참고용으로 남겨둠-->

					</ul>
				</nav>
				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>

					<p>문제 발생시 다음 연락처로 연락 바랍니다.</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">genie141930@gmail.com</a></li>
						<li class="icon solid fa-phone">(010) 5091-0984</li>
						<li class="icon solid fa-home">광주광역시 북구 용봉동 77<br /> 전남대학교
							생활관 9A동

						</li>
					</ul>
				</section>
				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>