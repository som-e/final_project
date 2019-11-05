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
		.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
		/* ul.actions {width: 300px;
        margin-left: auto;
        margin-right: auto;}
		 */
		</style>
		
	</head>
<body class="is-preload">
<!--일반 사용자의 이용내역 확인페이지 ppt6p

*변수이름은 ()안에 있어요~

필요한 데이터: 로그인한 사용자의 주문 내역(날짜(DATE),드라이버 이름(D_NAME),가게 상호명(B_NAME),주문번호(ORDER_NUM))
-->


<!--1.DB에 데이터 가져오기-->
<%
	
	
	
	%> 
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<!-- Header -->
								<header id="header">
									<h2>이용내역</h2>
								</header>
									<!-- Section -->
										<section>
											<div class="menu">
												<article>																		
											
                                      <!--2.for문 사용하여 데이터 가져오기
                                              (주문테이블에 로그인한 사용자의 아이디의 필드 갯수 만큼 for문 하기) 
                                      -->
											<% for() {%>
													<form action="#" method="post">
														<ul class="actions">
															<li><%=DATE%> </li>
														</ul>
														<ul class="actions">
															<li><%=D_NAME%> 기사님</li>
														</ul>
														<ul class="actions">
															<li><%=B_NAME %>-<%ORDER_NUM %> </li>
														</ul>
									
													</form>	
													<% } %>
															<ul class="actions">
														<!--3.href로 리뷰작성 페이지로 연결하기-->
															<li><a href="#"><input type="button" value="리뷰작성"></a> </li>
														</ul>	
														
																					
												 </article>
											</div>
										</section>
								
										<section>
											
									
						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
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