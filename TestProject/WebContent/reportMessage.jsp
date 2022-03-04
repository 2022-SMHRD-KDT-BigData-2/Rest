<%@page import="restArea.model.musicVO"%>
<%@page import="java.util.List"%>
<%@page import="restArea.model.bookVO"%>
<%@page import="restArea.model.recommVO"%>
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
	    font-size : 25px;
	}
	
	.popup > .content {
	    padding: 20px;
	    padding-top : 50px;
	    box-sizing: border-box;
	    font-size : 25px;
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
    <%
	    userVO vo = (userVO)session.getAttribute("vo");
		recommVO rvo = (recommVO)session.getAttribute("rvo"); 
		bookVO bvo = (bookVO)session.getAttribute("bvo");
		List<bookVO> list = (List<bookVO>)session.getAttribute("list");
		musicVO mvo = (musicVO)session.getAttribute("mvo");
    	userVO rrvo = (userVO)request.getAttribute("rvo");
    	int report = Integer.parseInt(vo.getRcount()); 
	%>
 <form action="goMain" method="post">
 	<div class="popup">
        <div class="title">신고 누적 안내</div>
        <div class="content">
        	<% if(report == 0){%>
        	<p> <%= rrvo.getRcount()%>번 신고당했습니다. </p>
            <p> 앞으로도 클린한 사용 부탁드립니다! </p>
            <% } else if(report == 1){ %>
            <p> <%= rrvo.getRcount()%>번 신고당했습니다. </p>
            <p> 다음에 신고 당하면 계정이 3일 정지됩니다. </p>
            <% } else if(report == 2){ %>
            <p> <%= rrvo.getRcount()%>번 신고당했습니다. </p>
            <p> 다음에 신고 당하면 계정이 정지됩니다. </p>
            <% } %>
        </div>
        <div class="cmd">
            <input type="submit" name="btnclose" class="btn btn-primary" style="height:50px; font-size:20px;" value="닫기">    
        </div>
    </div>
  </form>
    
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
								<li><a title="Check">확인하기</a></li>
								<li><a title="Logout">로그아웃</a></li>
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
						<a># 신고를 확인해주세요!</a>											
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tag">
						<a># 나의 화원</a>						
					</div>
				</div>	 
			</div>

			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="introduce">
						<h1 style="font-size:40px">쉼터 ; 고민을 들어줄게요! </h1><br>
						<p>자신을 모르는 사람과 ‘편지’로 소통하며</p>
						<p>솔직한 나의 이야기를 주고받으며 </p>
						<p> ♥ 힐링하세요 ♥ </p>
						<br>
					</div>
				</div>
			
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
					<div class="drawrecomm" style="overflow-y: scroll;">
						<h1># 오늘의 글</h1><br>		
							<div style="padding:20px; background-color:#d6eaff; border-radius: 30px; height:83%;">			
							<span style="font-size:30px;"> <%= rvo.getRcontecnt() %> </span>	
							</div>
					</div>
				</div>


				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
					<div class="todaybook">
						<h1># 오늘의 책</h1>	
						<a href="bookRecomm"><img src="<%= bvo.getBurl()%>" style="width:300px; height:380px;"></a><br>
					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
					<div class="todayMusic" style="padding: 20px;">
						<h1 style="margin-top:15px; padding-left:10px"># 오늘의 음악</h1>
						<div style="height:390px; padding:10px; padding-top:30px; padding-right:10px;">	
									
						<div style="background-color:#e1e5fa; border-radius: 30px; height:200px; margin-bottom:80px; padding-top:50px;">			
                  		<div style=" text-align: center; margin-top:20px;">
                        <span style="font-size:30px; border-bottom: 4px solid white;"><%= mvo.getMname() %> </span><br>   
						</div>
						
						<div style="margin-top:20px;  text-align:center">
                        <span style="font-size:25px; "><%= mvo.getSinger() %></span>  
                        </div> 
                        </div>
						
						<div style="margin-right : 10px;">
                        <audio autoplay loop controls>                          
                           </audio>
                        </div>   
                           
                        </div>                     
						</div>
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
