<%@page import="restArea.model.recommVO"%>
<%@page import="restArea.model.bookVO"%>
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
</head>

<body>
	<%
		userVO vo = (userVO)session.getAttribute("vo");
		recommVO rvo = (recommVO)request.getAttribute("rvo"); 
		bookVO bvo = (bookVO)request.getAttribute("bvo");
	%>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-2 col-xs-2">
					<h1 class="active">
						<a href="goMain" title="Home"><img src="./images/logo.png" width="80px" height="80px"></a>
					</h1>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<% if(vo == null){ %>
							<ul>
								<li><a href="join.jsp" title="SignUp">회원가입</a></li>
								<li><a href="login.jsp" title="Login">로그인</a></li>
							</ul>
							<% }else{ %>
							<ul>
								<li><a href="writeBoard.jsp" title="Write">글 쓰기</a></li>
								<li><a href="answerBoard.jsp" title="Answer">답변하기</a></li>
								<li><a href="gardenBoard.jsp" title="MyGarden">나의 화원</a></li>
								<li><a title="MyPage">나의 쉼터</a>
									<ul>
										<li><a href="check" title="Check">확인하기</a></li>
										<li><a href="logout" title="Logout">로그아웃</a></li>
									</ul></li>
							</ul>
							<% } %>
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
		 		<% if(vo == null){ %>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 위로가 필요해요</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 힘이 되어주세요</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 편지를 써주세요</a>
					</div>
				</div>	
				<% } else{ %> 
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a href="checkBoard.jsp"># 답변을 확인해주세요!</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<% if(vo.getRcount() != null){ %>
							<a href="reportMessage.jsp" style="color:red;"># 신고가 들어왔습니다!</a>
						<% } else{ %>
							<a># 따뜻하게 사용해주세요!</a>
						<% } %>						
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># ?</a>
						
					</div>
				</div>	
				<% } %> 
			</div>

			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
					<div class="introduce">
						<h1 style="font-size:42px">쉼터 ; 고민을 들어줄게요! </h1><br><br>
						<p>자신을 모르는 사람과 ‘편지’로 소통하며</p>
						<p>솔직한 나의 이야기를 주고받으며 </p>
						<p> ♥ 힐링하세요 ♥ </p>
						<br>
					</div>
					<!-- 소개글 -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="makegarden">
					</div>
					<!-- 화원 -->
				</div>
			</div>

			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawrecomm">
						<h1># 오늘의 글</h1><br>					
							<span style="font-size:30px;"> <%= rvo.getRcontecnt() %> </span>	
					</div>
					<!-- 화원 -->
				</div>


				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="todaybook" style="padding:30px;">
						<h1 ># 오늘의 책</h1>	
						<a href="bookRecomm"><img src="<%= bvo.getBurl()%>" style="width:100%; height:88%;"></a><br>
					</div>
					<!-- 화원 -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawgraph">
						<h1>그래프</h1>
						<div style="">
							<canvas id="myChart"></canvas>
						</div>
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
	
	<!-- 그래프 -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
		function load() {
			$.ajax({
				url : 'EX02_json',
				type : 'post',
				dataType : 'json',
				success : function(res) {
					drawChart(res);
				},
				error : function() {
					alert("error")
				}
			});
		}

		function drawChart(json) {
			const ctx = document.getElementById('myChart').getContext('2d');
			// canvas : 그림판 div

			// javascript 객체로 세부 설정을 정의
			const myChart = new Chart(ctx, {
				type : 'bar', // 차트의 종류
				data : { // 차트를 그리는 설정
					//labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange' ], // 컬럼 이름
					datasets : [ {
						label : '# of Votes', // 제목
						data : json, // 데이터
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ], // 각 bar 기둥의 색깔
						borderColor : [ 'rgba(255, 99, 132, 1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ], // 테두리 색
						borderWidth : 1
					// 테두리 두께
					} ]
				},
				options : {
					scales : {
						y : {
							beginAtZero : true
						}
					},

					// 우리가 넣어주는 json 데이터에서 꺼내서 사용하게끔 지정
					parsing : {
						xAxisKey : 'name',
						yAxisKey : 'score'
					}
				}
			});
		}
	</script>
</body>
</html>
