<%@page import="com.DataObject.enterpriseDO"%>
<%@page import="com.DataObject.driverDO"%>
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
		</style>
		
	</head>
<body class="is-preload">
<!--��ü�� ����̹��� ����(�������Ʈ ����� ���� �����ϱ�)�ϱ� ���� ������  ppt 21p

*�����̸��� ()�ȿ� �־��~

�ʿ��� ������: ��ü�� �ִ� ����̹�(����̹� �̸�(D_NAME),����̹� ����(PHOTO))

-->


<!--1.DB�� ������ ��������-->
<%
	driverDO d_do = (driverDO)session.getAttribute("d_do");
	enterpriseDO e_do = (enterpriseDO)session.getAttribute("e_do"); 
	%> 
<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
			<div id="main">
				<div class="inner">
					<!-- Header -->
						<header id="header">
							<h2>��� ���� �� ����</h2>
						</header>
							<!-- Section -->
								<section>
									<div class="menu">
										<article>																		
											
		                                      <!--2.for�� ����Ͽ� ������ ��������
		                                              (��ü���̺��� ��� �ʵ� ���� ��ŭ for�� �ϱ�) 
		                                      -->
		                                   	<form action="#" method="post">
		                                      	<table style="border-collapse: inherit;">
													<tr style="background-color: transparent; ">
														<td rowspan="2" width="100" height="120"><!-- �����ϸ� ������ ũ��� �����ϰ� ����-->
															<%//if(profile==null){ %>
															<!-- DB���� ������ �޾ƿ� ǥ��, null�� �ϰ�� ����Ʈ ������ ǥ�� -->
																<span class="image"><img src="images/profile.png" width="100" height="120" alt="������"></span>
															<%//}else{%>
																<!--class="image"><img src=""width="100" height="120" alt="������"> ���Ի��� ���� �� -->
															<%//}%>
														</td>
														<td><% %>����</td><!-- ���� ������ �޾ƿ� ǥ���� �� -->
													</tr>
													<tr>
														<td>
															<ul class="actions">
																<li><input type="submit" value="����" class="button fit"></li>
																<li><a href="#" class="button">����</a></li>
															</ul>
														</td>
													</tr>									
												</table>
											</form>								
										</article>
									</div>
								</section>
	
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