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
<!--�쇰� �ъ�⑹���� �댁�⑸�댁�� ���명���댁� ppt6p

*蹂����대��� ()���� ���댁��~

������ �곗�댄��: 濡�洹몄�명�� �ъ�⑹���� 二쇰Ц �댁��(��吏�(DATE),���쇱�대� �대�(D_NAME),媛�寃� ���몃�(B_NAME),二쇰Ц踰���(ORDER_NUM))
-->


<!--1.DB�� �곗�댄�� 媛��몄�ㅺ린-->
<%
	
	
	
	%> 
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<!-- Header -->
								<header id="header">
									<h2>�댁�⑸�댁��</h2>
								</header>
									<!-- Section -->
										<section>
											<div class="menu">
												
											<article>																		
											
                                      <!--2.for臾� �ъ�⑺���� �곗�댄�� 媛��몄�ㅺ린
                                              (二쇰Ц���대��� 濡�洹몄�명�� �ъ�⑹���� ���대���� ���� 媛��� 留��� for臾� ��湲�) 
                                      -->
													<form action="#" method="post">
														<ul class="actions">
															<li><%//=DATE%> </li>
														</ul>
														<ul class="actions">
															<li><%//=D_NAME%> 湲곗�щ��</li>
														</ul>
														<ul class="actions">
															<li><%//=B_NAME %>-<%//ORDER_NUM %> </li>
														</ul>
									
													</form>	
                        </article>
													<%// } %>
																							
												 </article>
												
													
															<ul class="actions">
														<!--3.href濡� 由щ럭���� ���댁�濡� �곌껐��湲�-->
															<li><a href="review.jsp" class="button">由щ럭����</a></li>
														</ul>	
														
											
												 
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
										<li><a href="index.jsp">硫���</a></li>
										<li><a href="login.jsp">濡�洹몄��</a></li>
										<li><a href="User_usageDetails.jsp">�댁�⑸�댁��</a></li>
										<li><a href="review_user.jsp">�닿� ���깊�� 由щ럭</a></li>
										<li><a href="#">��寃쎌�ㅼ��</a></li>
										<!-- ��寃쎌�ㅼ�� 援ы������ -->
									</ul>
								</nav>
								
							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>臾몄�� 諛����� �ㅼ�� �곕�쎌�濡� �곕�� 諛�������.</p>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">genie141930@gmail.com</a></li>
										<li class="icon solid fa-phone">(010) 5091-0984</li>
										<li class="icon solid fa-home">愿�二쇨����� 遺�援� �⑸��� 77<br />
										���⑤����援� ����愿� 9A��</li>
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