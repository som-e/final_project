<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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
.star-rating {
	width: 205px;
}

.star-rating, .star-rating span {
	display: inline-block;
	height: 39px;
	overflow: hidden;
	background: url(star.png) no-repeat;
}

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>

</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a class="logo"><strong>점포명 : <% %></strong></a>
					<!-- 점표명 받아서 표시할 부분 -->
					<ul class="icons">
						<li><a href="https://www.yogiyo.co.kr/mobile/#/"><span
								class="label"><img src="images/yogiyo.png" width="40"
									height="40" alt="요기요"></span></a></li>
						<li><a href="#"><span class="label"><img
									src="images/bae.png" width="40" height="40" alt="배민"></span></a></li>
					</ul>
				</header>

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<table style="border-collapse: inherit;">
								<tr style="background-color: transparent; font-size: 20px; padding: 5em 0 1em 0;">
									<td>예상도착시간</td>
									<td>남은거리</td>
								</tr>
								<tr>
									<td>
										<% %>시간-m
									</td>
									<!-- 시간과 거리는 추후에 받아서 표시할 예정 -->
									<td>
										<% %>거리-m
									</td>
								</tr>
							</table>
						</header>
					</div>

					<div class="image object">

						<div id="map" style="width: 100%; height:25
						0px"> </div> 
		
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b069a55b436aecc3dc43b2467f6bfa2&libraries=services"></script>
<script>

//나의 위치 검색 -> 

navigator.geolocation.getCurrentPosition(function(pos) {
	
var mapContainer = document.getElementById('map'),  // 지도를 표시할 div 
mapOption = {
  center: new kakao.maps.LatLng(pos.coords.latitude, pos.coords.longitude), // 지도의 중심좌표
  level: 2 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();



//주소로 좌표를 검색합니다
geocoder.addressSearch('북구 설죽로 214번길 100-4', function(result, status) {
//여기에 input 값을 이용해서 DB를 통해 주소 얻어오기
// 정상적으로 검색이 완료됐으면 

if (status === kakao.maps.services.Status.OK) {
	 
    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
  /*    var start_coords = new kako.maps.LatLng(33.450705, 126.570677);
    */
    // 결과값으로 받은 위치를 마커로 표시합니다
   var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

   /*  var marker2 = new kakao.maps.Marker({
    	
    	map: map, // 마커를 표시할 지도
        position: start_coords, // 마커를 표시할 위치
        title : '출발', // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
     */
    
    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">here</div>'
    });
    infowindow.open(map, marker);
  
    /*   infowindow.open(map , marker2); 
   */  // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다

   map.setCenter(coords);

} 

                            
                            
 else {
	 
	 alert('fail');
	 
 }

});    


});


</script>

					</div>


				</section>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>
							<% %>기사님
						</h2>
						<!-- 기사님 성함을 받아와 표시할 곳 -->
					</header>
					<div class="post">
						<article>
							<%//if(profile==null){ %>
							<!-- DB에서 사진을 받아와 표시, null값 일경우 디폴트 프로필 표시 -->
							<span class="image"><img src="images/profile.png"
								width="100" height="120" alt="프로필"></span>
							<%//}else{%>
							<!--class="image"><img src=""width="100" height="120" alt="프로필"> 기사님사진 받을 곳 -->
							<%//}%>
							<h4>
								소속 :
								<% %><br>
								<br>
								<!-- 소속 받아서 표시 -->
								연락처 :
								<% %>
							</h4>
							<!-- 전화번호 밭아서 표시할 부분 -->
							<div class="wrap-star">
								<h4>평균점수</h4>
								<div class='star-rating'>
									<span style="width: 70%"></span>
									<!-- 추후 스크립틀릿으로 별점 정보 받아올 예정 "width:<% %>%"-->
								</div>
							</div>
						</article>
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
						<li><a href="index.html">메인</a></li>
						<li><a href="#">로그인</a></li>
						<!-- 로그인페이지 구현예정 -->
						<li><a href="#">회원가입</a></li>
						<!-- 회원가입페이지 구현예정-->
						<li><a href="#">이용내역</a></li>
						<!-- 이용내역 구현예정 -->
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