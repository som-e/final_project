<%@page import="com.DataAccessObject.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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

</head>

<body class="is-preload">

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<a id="navi" href="#" onclick="navi();">
클릭
</a>

<script type='text/javascript'>

//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('2b069a55b436aecc3dc43b2467f6bfa2');
// 카카오 로그인 버튼을 생성합니다.
function navi(){
    Kakao.Navi.start({
        name: "현대백화점 판교점",
        x: 127.11205203011632,
        y: 37.39279717586919,
        coordType: 'wgs84'
    });
}

//]]>
</script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>