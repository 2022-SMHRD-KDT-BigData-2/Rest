<%@page import="restArea.model.writeVO"%>
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
</head>

<body>
	<%
		/* writeVO avo = (writeVO)request.getAttribute("avo"); */
		writeVO avo = (writeVO)session.getAttribute("avo");
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

   <!-- ???⼭???? ?ۼ? -->
 	<div class="space-medium">
		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
					<div class="row">	
						<h1 class="joinTitle" style="padding-left:15px;">?????? ?̾߱⸦ ?????ּ???</h1>
						
						<div class="atitle">				
						<span><%= avo.getTitle() %></span>
						</div>
						
						<div class="acontent" style="overflow-y: scroll;">
						<span> <%= avo.getWcontent() %></span>
						</div>
						
						<form action="wreportMessage.jsp" method="post">
						<% if(avo.getWreport() == null){ %>										
							<input type="hidden" name="write_seq" value="<%= avo.getWrite_seq()%>">											
							<input type="submit" class="btn btn-primary" style="margin-left: 870px; margin-bottom:25px;" value="?Ű?">
						<% } else{ %>
							<input type="hidden" class="btn btn-primary" style="margin-left: 870px; margin-bottom:25px;" value="?Ű?">
						<% } %>
						
						</form>
									
						<form action="answer" method="post">
							<input type="hidden" name="write_seq" value="<%= avo.getWrite_seq()%>">						
							<textarea class="form-control" placeholder="?? ????" name="acontent" style="height: 350px; font-size: 25px; color: black; margin-bottom : 20px;"></textarea>
							<input type="submit" class="btn btn-primary" style="margin-left: 440px" value="????">
						</form>

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