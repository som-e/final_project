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
table, tr, th, td{vertical-align: bottom;}
/* ul.actions {width: 300px;
margin-left: auto;
margin-right: auto;}
 */
.star-rating {
	width:100px;
}
.star-rating, .star-rating span {
	display: inline-block;
	height: 19px;
	overflow: hidden;
	background: url(images/star.png) no-repeat;
	background-size:100px;
}
.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>
		
	</head>
<body class="is-preload">
<!--업체가 드라이버를 관리(사원리스트 보기와 수정 삭제하기)하기 위한 페이지  ppt 21p

*변수이름은 ()안에 있어요~

필요한 데이터: 업체에 있는 드라이버(드라이버 이름(D_NAME),드라이버 사진(PHOTO))

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
							<h2>내가 작성한 리뷰</h2>
						</header>
							<!-- Section -->
								<section>
									<div class="menu">
										<article>																												
		                                      <!--2.for문 사용- 내가 작성한 리뷰 받아와야함-->
		                                   	<form action="#" method="post">
		                                      	<table style="border-collapse: inherit;">
													<tr style="background-color: transparent; ">
														<td rowspan="2" width="100" height="120"><!-- 가능하면 사진의 크기와 동일하게 설정-->
															<%//if(profile==null){ %>
															<!-- DB에서 사진을 받아와 표시, null값 일경우 디폴트 프로필 표시 -->
																<span class="image"><img src="images/profile.png" width="100" height="120" alt="프로필"></span>
															<%//}else{%>
																<!--class="image"><img src=""width="100" height="120" alt="프로필"> 기사님사진 받을 곳 -->
															<%//}%>
														</td>
														<td><% %>기사님</td><!-- 기사님 성함을 받아와 표시할 곳 -->
														<td>
															<ul class="actions" style="float: right;">
																<li><a href="#" class="button">수정</a></li>
																<li><a href="#" class="button">삭제</a></li>
															</ul>
														</td>
													</tr>
													<tr>
														<td>날짜 <% %></td>
														<td>
															<div class='star-rating'>
																<span style="width: 70%"></span>
																<!-- 추후 스크립틀릿으로 별점 정보 받아올 예정 "width:<% %>%"-->
															</div>
														</td>
													</tr>								
												</table>
												<div style="border: 2px solid #f56a6a; background-color:transparent; padding:20px; border-radius: 0.375em; text-align:center">
													<% %>리뷰 받아서 표시 예정
												</div>												
											</form>								
										</article>
									</div>
								</section>
	
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
										<li><a href="User_main.jsp">메인</a></li>
										<li><a href="User_usageDetails.jsp">이용내역</a></li>
										<li><a href="review_user.jsp">내가 작성한 리뷰</a></li>
										<!-- 환경설정 구현예정 -->
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