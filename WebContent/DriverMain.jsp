<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title> DeliverySystem</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<style>
		.star-rating { width:205px; }
		.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(star.png)no-repeat; }
		.star-rating span{ text-align: center; }
		img{
		border: 3px solid red:
		width:100px:
		height:100px:
		display:block:
		margin-left:auto:
		margin-right:auto:
		}
		</style>
		
	</head>
<body class="is-preload">
<!--드라이버 화면으로 드라이버 이름(D_NAME)이랑 드라이버사진(PHOTO)을 보여주기 위한 페이지 ppt 15p

*변수이름은 ()안에 있어요~

필요한 데이터: 화면에 보여주기 위해 로그인한 드라이버 사용자의  드라이버 이름(D_NAME)이랑  업체 번호(D_NAME) 드라이버사진(PHOTO)가 필요

-->
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a class="logo"><strong> <%=D_NAME%>업체 소속 <%=D_NAME%> 님 환영합니다. </strong></a> <!-- 점표명 받아서 표시할 부분 -->
					
								</header>

							<!-- Banner -->
								<section id="banner">
								
								<!--여기에 드라이버 사진을  넣어야 하는데 못했습니다.-->
									<span class="image object">
									<img src="images/pic10.jpg" alt="" /> +
									</span>
								<!--여기에 드라이버 사진을  넣어야 하는데 못했습니다.-->
								
								</section>

                                 <form action="#" method="post">

														<ul class="actions">
														<!--href로 매출페이지와 리뷰페이지를 연결-->
															<li><a href="#"><input type="button" value="매출"></a> </li><!--매출 페이지 -->
															<li><a href="#"><input type="button" value="리뷰"></a> </li><!--리뷰 페이지 -->
														</ul>	
										
														</form>		









							<!-- Section -->
								
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
										<li><a href="index.html">메인</a></li>
										<li><a href="#">로그인</a></li><!-- 로그인페이지 구현예정 -->
										<li><a href="#">회원가입</a></li><!-- 회원가입페이지 구현예정-->
										<li><a href="#">이용내역</a></li><!-- 이용내역 구현예정 -->
										<!-- <li>
											
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
										<li class="icon solid fa-home">광주광역시 북구 용봉동 77<br />
										전남대학교 생활관 9A동</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
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