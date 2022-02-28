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
<title>����</title>
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
								<li><a href="join.jsp" title="SignUp">ȸ������</a></li>
								<li><a href="login.jsp" title="Login">�α���</a></li>
							</ul>
							<% }else{ %>
							<ul>
								<li><a href="writeBoard.jsp" title="Write">�� ����</a></li>
								<li><a href="answerBoard.jsp" title="Answer">�亯�ϱ�</a></li>
								<li><a href="gardenBoard.jsp" title="MyGarden">���� ȭ��</a></li>
								<li><a title="MyPage">���� ����</a>
									<ul>
										<li><a href="check" title="Check">Ȯ���ϱ�</a></li>
										<li><a href="logout" title="Logout">�α׾ƿ�</a></li>
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
						<a># ���ΰ� �ʿ��ؿ�</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># ���� �Ǿ��ּ���</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># ������ ���ּ���</a>
					</div>
				</div>	
				<% } else{ %> 
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a href="checkBoard.jsp"># �亯�� Ȯ�����ּ���!</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<% if(vo.getRcount() != null){ %>
							<a href="reportMessage.jsp" style="color:red;"># �Ű� ���Խ��ϴ�!</a>
						<% } else{ %>
							<a># �����ϰ� ������ּ���!</a>
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
						<h1 style="font-size:42px">���� ; ����� ����ٰԿ�! </h1><br><br>
						<p>�ڽ��� �𸣴� ����� ���������� �����ϸ�</p>
						<p>������ ���� �̾߱⸦ �ְ������ </p>
						<p> �� �����ϼ��� �� </p>
						<br>
					</div>
					<!-- �Ұ��� -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="makegarden">
					</div>
					<!-- ȭ�� -->
				</div>
			</div>

			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawrecomm">
						<h1># ������ ��</h1><br>					
							<span style="font-size:30px;"> <%= rvo.getRcontecnt() %> </span>	
					</div>
					<!-- ȭ�� -->
				</div>


				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="todaybook" style="padding:30px;">
						<h1 ># ������ å</h1>	
						<a href="bookRecomm"><img src="<%= bvo.getBurl()%>" style="width:100%; height:88%;"></a><br>
					</div>
					<!-- ȭ�� -->
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="drawgraph">
						<h1>�׷���</h1>
						<div style="">
							<canvas id="myChart"></canvas>
						</div>
					</div>
					<!-- ȭ�� -->
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
							<p>@2022 ��ȭ����</p>
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
	
	<!-- �׷��� -->
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
			// canvas : �׸��� div

			// javascript ��ü�� ���� ������ ����
			const myChart = new Chart(ctx, {
				type : 'bar', // ��Ʈ�� ����
				data : { // ��Ʈ�� �׸��� ����
					//labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange' ], // �÷� �̸�
					datasets : [ {
						label : '# of Votes', // ����
						data : json, // ������
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ], // �� bar ����� ����
						borderColor : [ 'rgba(255, 99, 132, 1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ], // �׵θ� ��
						borderWidth : 1
					// �׵θ� �β�
					} ]
				},
				options : {
					scales : {
						y : {
							beginAtZero : true
						}
					},

					// �츮�� �־��ִ� json �����Ϳ��� ������ ����ϰԲ� ����
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
