<%@page import="java.util.List"%>
<%@page import="restArea.model.answerVO"%>
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
		writeVO vo =  (writeVO)session.getAttribute("wvo");
		answerVO avo =  (answerVO)request.getAttribute("vo");
		List<answerVO> list = (List<answerVO>)session.getAttribute("list");	
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
                        <li><a href="writeBoard.jsp" title="Write">�� ����</a></li>
                        <li><a href="category.jsp" title="Answer">�亯�ϱ�</a></li>                      
                        <li><a href="check" title="Check">Ȯ���ϱ�</a></li>
                        <li><a href="logout" title="Logout">�α׾ƿ�</a></li>
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

   <!-- ���⼭���� �ۼ� -->
   <div class="space-medium" style="padding-bottom: 0px;">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
               <div class="mystory"  style="height: 800px;">
                  <h1><%= vo.getWcontent() %></h1>
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
               <div class="mchanswer" style="height: 800px;">
                <%for (answerVO uvo : list) { %>
                  <div class="yourstory" style="height:300px;">
                     <h1><%=uvo.getAcontent() %></h1>
                     <div style="padding-bottom:30px;">
                     <span class="chreport" style="display: flex;">
                        <form action="areportMessage.jsp" method="post">  
                        <% if(uvo.getAreport() == null){ %>
                           <input type="submit" name="btnclose" class="btn btn-primary"
                              style="height:40px; font-size:16px; margin-left:290px; margin-bottom: 30px; margin-top: 65px; padding-right: 20px; padding-left: 20px; padding-top: 12px;"
                              value="�Ű�" onclick=<% session.setAttribute("ruser", uvo.getAcontent());
                              						session.setAttribute("ruid", uvo.getId());%>>
                              						
                        <%} else{ %>
                       		<span style="padding-right:355px;"></span>
                        	<input type="hidden" name="btnclose" class="btn btn-primary"
                              style="height: 40px; font-size: 16px;  margin-bottom: 30px; padding-right: 20px; padding-left: 20px; padding-top: 12px;"
                              value="�Ű�" >                        
                        <% } %>            
                        </form>
                        
                        <form action="symMessage.jsp" method="post">
                         <% if(uvo.getSym() == null){ %>
                           <input type="submit" name="btnclose" class="btn btn-primary"
                              style="height:40px; font-size:16px; margin-left:15px;  margin-top: 65px; padding-right: 20px; padding-left: 20px; padding-top: 12px;"
                              value="����" onclick=<% session.setAttribute("user", uvo.getAcontent());
                              						session.setAttribute("uid", uvo.getId());%>>
                         <%} else{ %>  
                        	 <span style="padding-right:355px;"></span>                     	 
                         	 <input type="hidden" name="btnclose" class="btn btn-primary"
                              style="height: 40px; font-size: 16px; margin-bottom: 30px; padding-right: 20px; padding-left: 20px; padding-top: 12px;"
                              value="����">
                         <% } %>  
                        </form>
                     </span>
                     </div>
                  </div>
                    <%} %>
               </div>
            </div>
         </div>

         <div class="checkgarden" style="width: 500px;">
            <img src="./images/flower.png">
         </div>
      </div>
   </div>
   <!-- ������� �ۼ� -->


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
</body>
</html>