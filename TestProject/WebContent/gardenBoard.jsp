<%@page import="restArea.model.gardenVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"><meta http-equiv="X-UA-Compatible" content="IE=edge">
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
   div.img{
      width:100%;
      height:100%;
      box-sizing:border-box;
        padding-top:50px;
        padding-left:20%;
        padding-right:20%;
        padding-bottom:50px;
       
   }
   
   img.flower{ 
      border-radius: 15px;
      border-width: 5px;     
      color : #94eb32;
   }
      
   img { max-width: 100%;}
</style>
</head>

<body>
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
                  <li><a href="writeBoard.jsp" title="Write">글 쓰기</a></li>
                  <li><a href="category.jsp" title="Answer">답변하기</a></li>
                  <li><a href="garden" title="MyGarden">나의 화원</a></li>
                  <li><a title="MyPage">나의 쉼터</a>
                     <ul>
                        <li><a href="check" title="Check">확인하기</a></li>
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
   <div class="medium" style= "weight=100%; height=1000px;">
      <hr>
      <br>
         <div>
            <h1 align="center">현재 나의 화원 상태</h1>
         </div>
         <div class="img">                    
            <%
               gardenVO vo = (gardenVO)session.getAttribute("gcnt");
               
               int gnt=0;
               
               if(vo.getGcount()==null){
                  gnt=0;
               }else{
                  gnt=Integer.parseInt(vo.getGcount());
               }
            %>   
            
            <%if(gnt<=5){ %>
                <img class="flower" src="images/gimg/1.png" style="border: 5px solid">
            <%}else if(gnt>5&&gnt<=10){%>
                <img class="flower" src="images/gimg/2.png" style="border: 5px solid">
            <%}else if(gnt>10&&gnt<=15){%>
                <img class="flower" src="images/gimg/3.png" style="border: 5px solid">
            <%}else if(gnt>15&&gnt<=20){%>
                <img class="flower" src="images/gimg/4.png" style="border: 5px solid">
            <%}else if(gnt>20&&gnt<=25){%>
                <img class="flower" src="images/gimg/5.png" style="border: 5px solid">
            <%}else if(gnt>25&&gnt<=30){%>
                <img class="flower" src="images/gimg/6.png" style="border: 5px solid">
            <%}else if(gnt>30&&gnt<=35){%>
                <img class="flower" src="images/gimg/7.png" style="border: 5px solid">
            <%}else if(gnt>35&&gnt<=40){%>
                <img class="flower" src="images/gimg/8.png" style="border: 5px solid">
            <%}else if(gnt>40&&gnt<=45){%>
                <img class="flower" src="images/gimg/9.png" style="border: 5px solid">
            <%}%>
                   
         </div>
      <br>
      <hr>
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