<%@page import="restArea.model.userVO"%>
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

<style>
	html, body{
	    width: 100%;
	    height: 100%;
	    padding: 0;
	    margin: 0;
	}
	
	body.dimmed::before{
	    content: '';
	    position: fixed;
	    left: 0;
	    right: 0;
	    top: 0;
	    bottom: 0;
	    background-color: rgba(255,255,255, 0.75);
	    -webkit-backdrop-filter: blur(5px);
	    backdrop-filter: blur(5px);    
	}
	
	.container{
		 opacity: 0.5;
	}
	
	.popup {
	    z-index: 1;
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%,-50%);
	    min-width: 800px;
	    max-width: 800px;
	    background-color: #fff;
	    border-radius: 15px;
	    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);
	}
	
	.popup > .title{
	    border-radius: 15px 15px 0 0;
	    min-height: 40px;
	    color: #fff;
	    background-color: #4361ee;
	    padding: 10px 15px;
	    padding-top : 15px;
	    box-sizing: border-box;
	    font-weight: bold;
	    font-size : 20px;
	}
	
	.popup > .content {
	    padding: 20px;
	    padding-top : 50px;
	    box-sizing: border-box;
	    font-size : 20px;
	    text-align: center;
	}
	
	.popup > .cmd {
	    bottom: 0;
	    min-height: 40px;
	    padding: 15px 15px;
	    box-sizing: border-box;
	    border-radius: 0 0 15px 15px;
	    min-height: 40px;
	    text-align: right;
	}
	
	.popup > .cmd .button {
	    border-radius: 8px;
	    padding: 5px 10px;
	    border: 1px solid #aaa;
	}
	
	.popup > .cmd .button:hover {
	    color: #fff;
	    background-color: #000;
	    border-color: #000;
	}
    </style>
</head>
 
 <body class="dimmed">
 <form action="Main.jsp" method="post">
 	<div class="popup">
        <div class="title">신고 누적 안내</div>
        <div class="content">
            <p> (사유)로 신고당했습니다. </p>
            <p> 다음에 신고 당하면 3일 계정 정지당합니다. </p>
        </div>
        <div class="cmd">
            <input type="submit" name="btnclose" class="btn btn-primary" style="height:50px; font-size:20px;" value="닫기">
            <!-- <input type="submit" class="btn btn-primary" style="margin-left:400px;" value="가입 완료"> -->
        </div>
    </div>
  </form>
    
    <%
		userVO vo = (userVO)session.getAttribute("vo");
	%>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-2 col-xs-2">
					<h1 class="active">
						<a title="Home"><img src="./images/logo.png" width="80px" height="80px"></a>
					</h1>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<ul>
								<li><a title="Write">글 쓰기</a></li>
								<li><a title="Answer">답변하기</a></li>
								<li><a title="MyGarden">나의 화원</a></li>
								<li><a title="MyPage">나의 쉼터</a>
									<ul>
										<li><a title="Check">확인하기</a></li>
										<li><a title="Logout">로그아웃</a></li>
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
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"></div>
			</div>
		</div>
	</div>

	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 답변을 확인해주세요!</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 신고가 ~!</a>							
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># ?</a>
					</div>
				</div>	
				<%-- <% } %> --%>
			</div>

			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
					<div class="introduce">
						<h1>힘을 주세요!</h1>
						<br>
					</div>
					<!-- 소개글 -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="makegarden">
						<h1># 화원 가꾸기</h1>
					</div>
					<!-- 화원 -->
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawrecomm">
						<h1>힘이 되는 말!</h1>
					</div>
					<!-- 화원 -->
				</div>


				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="todaybook">
						<h1>오늘의 책</h1>
					</div>
					<!-- 화원 -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawgraph">
						<h1>그래프</h1>
					</div>
					<!-- 화원 -->
				</div>
			</div>
		</div>
		</div>
	
	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"></div>
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
