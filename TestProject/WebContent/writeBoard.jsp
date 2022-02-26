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
<title>쉼터</title>
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
</head>

<body>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-2 col-xs-2">
					<h1 class="active">
						<a href="index.html" title="Home"><img src="./images/logo.png"
							width="80px" height="80px"></a>
					</h1>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<ul>
								<li><a href="writeBoard.jsp" title="Write">글 쓰기</a></li>
								<li><a href="answerBoard.jsp" title="Answer">답변하기</a></li>
								<li><a href="gardenBoard.jsp" title="MyGarden">나의 화원</a></li>
								<li><a title="MyPage">나의 쉼터</a>
									<ul>
										<li><a href="checkBoard.jsp" title="Check">확인하기</a></li>
										<li><a href="logout" title="Logout">로그아웃</a></li>
									</ul></li>
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

	<!-- 여기서부터 작성 -->

	<div class="write-medium">
		<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
			<div class="row">
						<form action="write" method="post">
							<h1 class="joinTitle">당신의 이야기를 보내주세요</h1>

							<span class="sendwrite"> <select name="wbox"
								style="width: 100px; height: 40px; font-size: 20px; margin-top: 5px;">
									<option value="우울" selected>우울</option>
									<option value="진로">진로</option>
									<option value="관계">관계</option>
									<option value="자유">자유</option>
							</select> &nbsp; &nbsp; 
							<input type="text" class="form-control" style="font-size: 25px; color: black;" placeholder="글 제목" name="title" maxlength="50px";>
							</span>

							<textarea class="form-control" placeholder="글 내용" name="wcontent" style="height: 350px; font-size: 25px; color: black; margin-bottom : 20px;"></textarea>

							<input type="submit" class="btn btn-primary" style="margin-left: 400px" value="전송">
						</form>

					</div>
				</div>
			</div>
		</div>
		<!-- 여기까지 작성 -->

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
							<img src="./images/instagram.png" width="60px" height="60px" alt="" hspace=10> 
							<img src="./images/facebook.png" width="60px" height="60px" alt="" hspace=10> 
							<img src="./images/twitter.png" width="60px" height="60px" alt="" hspace=10>
						</div>
						<br>
						<div class="widget-title">
							<p>Info Support Marketing</p>
							<p>Terms of Use Privacy Policy</p>
							<p>@2022 대화해조</p>
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