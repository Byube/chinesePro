<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <spring:eval expression="@environment.getProperty('PATH_JS')" var="JsUrl"></spring:eval>
	<spring:eval expression="@environment.getProperty('PATH_CSS')" var="CssUrl"></spring:eval>
	<spring:eval expression="@environment.getProperty('PATH_IMAGE')" var="ImgUrl"></spring:eval>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="${CssUrl}/bootstrap.min.css">
    <link rel="stylesheet" href="${CssUrl}/font-awesome.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="${CssUrl}/style.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

    <!-- Main Script -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${JsUrl}/custom.js"></script>
    <script src="${JsUrl}/lean.js"></script>
    <title>开始上课</title>
</head>
<body>
	<!-- PRE LOADER -->

<div class="preloader">
     <div class="sk-spinner sk-spinner-wordpress">
          <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
     <div class="container">

          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="#" class="navbar-brand"><i class="fa fa-magnet"></i></a>
          </div>
         <!-- <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.html">Projects</a></li>
                    <li><a href="about.html">Our Studio</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>
               </ul>
          </div> -->

  </div>
</div>

<!-- Home Section -->

<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>${name }</h2>
                    <hr>
               </div>

          </div>
     </div>
</section>

<!-- Portfolio Section -->

<section id="portfolio">
     <div class="container">
          <div class="row">
          <div class="col-md-4 col-sm-6">
                    <a href="javascript:;" onclick="getnewClass()">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img2.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>New</h3>
                                             <small>NewDay</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
            </div>
            <form action="/goNewClass" method="post" id="getNew">            
            <input type="hidden" id="sq" name="sq" value="${student_seq }">
            <input type="hidden" id="ht" name="ht">
            </form>
          <c:forEach items="${homelist }" var="home" varStatus="cnt">
               <div class="col-md-4 col-sm-6">
                   <a href="javascript:;" onclick="getOldClass(${home.homework_title})">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img1.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>${home.homework_title}</h3>
                                             <small>Brand Identity</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>
			</c:forEach>
            
 <%--
               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img3.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Mobile App</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img4.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Logo Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img5.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Social marketing</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.html">
                         <div class="portfolio-thumb">
                              <img src="${ImgUrl}/portfolio-img6.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Fyler Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>
 --%>
               <div class="col-md-12 col-sm-12 text-center">
                    <h3>${student_brith }</h3>
               </div>

          </div>
     </div>
</section>

<!-- Footer Section -->

<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>
	
</body>
</html>
