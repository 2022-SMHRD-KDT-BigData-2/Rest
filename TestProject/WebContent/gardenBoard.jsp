<%@page import="restArea.model.gardenVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description"
	content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
<meta name="keywords"
	content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
<title>????</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Style -->
<link href="css/style.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js "></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js "></script>
<![endif]-->
<style>
.flower{
 	object-fit:cover;
 	width:100%;
    height:100%;    
}
</style>
</head>

<body>
	<%
		gardenVO vo = (gardenVO) session.getAttribute("gcnt");

		int gnt = 0;

		if (vo.getGcount() == null) {
			gnt = 0;
		} else {
			gnt = Integer.parseInt(vo.getGcount());
		}
	%>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-2 col-xs-2">
					<h1 class="active">
						<a href="goMain" title="Home"><img src="./images/logo.png"
							width="80px" height="80px"></a>
					</h1>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<ul>
								<li><a href="writeBoard.jsp" title="Write">?? ????</a></li>
								<li><a href="category.jsp" title="Answer">?亯?ϱ?</a></li>							
								<li><a href="check" title="Check">Ȯ???ϱ?</a></li>
								<li><a href="logout" title="Logout">?α׾ƿ?</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">

				</div>
			</div>
		</div>
	</div>

	<!-- ???⼭???? ?ۼ? -->
	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12  col-sm-12  col-xs-12 ">
					<div style="background-color: #f7a399; border-radius: 20px; height: 50px; margin-bottom:25px; padding-top:7px;">
						<h1 style="text-align: center;">???? ȭ??</h1>
					</div>

					<div class="row">
						<div class="col-lg-12 col-md-12  col-sm-12  col-xs-12 ">
							<div style="border:4px solid #fbc3bc; border-radius: 20px; height:650px;">
								<% if (gnt <= 5) { %>
								<img class="flower" src="images/gimg/1.png">
								<%
									} else if (gnt > 5 && gnt <= 10) {
								%>
								<img class="flower" src="images/gimg/2.png">
								<%
									} else if (gnt > 10 && gnt <= 15) {
								%>
								<img class="flower" src="images/gimg/3.png">
								<%
									} else if (gnt > 15 && gnt <= 20) {
								%>
								<img class="flower" src="images/gimg/4.png">
								<%
									} else if (gnt > 20 && gnt <= 25) {
								%>
								<img class="flower" src="images/gimg/5.png">
								<%
									} else if (gnt > 25 && gnt <= 30) {
								%>
								<img class="flower" src="images/gimg/6.png">
								<%
									} else if (gnt > 30 && gnt <= 35) {
								%>
								<img class="flower" src="images/gimg/7.png">
								<%
									} else if (gnt > 35 && gnt <= 40) {
								%>
								<img class="flower" src="images/gimg/8.png">
								<%
									} else if (gnt > 40 && gnt <= 45) {
								%>
								<img class="flower" src="images/gimg/9.png">
								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ???????? ?ۼ? -->

	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">

				</div>
			</div>
		</div>
	</div>

	<!-- footer-->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="footer-widget">
						<img src="./images/instagram.png" width="60px" height="60px"
							alt="" hspace=10> <img src="./images/facebook.png"
							width="60px" height="60px" alt="" hspace=10> <img
							src="./images/twitter.png" width="60px" height="60px" alt=""
							hspace=10>
					</div>
					<br>
					<div class="widget-title">
						<p>Info Support Marketing</p>
						<p>Terms of Use Privacy Policy</p>
						<p>@2022 ??ȭ????</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/menumaker.js"></script>
	<script src="js/navigation.js" type="text/javascript"></script>
</body>
</html>