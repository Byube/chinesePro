<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<spring:eval expression="@environment.getProperty('PATH_JS')"
	var="JsUrl"></spring:eval>
<spring:eval expression="@environment.getProperty('PATH_CSS')"
	var="CssUrl"></spring:eval>
<spring:eval expression="@environment.getProperty('PATH_IMAGE')"
	var="ImgUrl"></spring:eval>

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" href="${CssUrl}/bootstrap.min.css">
<link rel="stylesheet" href="${CssUrl}/font-awesome.min.css">
<!-- Main css -->
<link rel="stylesheet" href="${CssUrl}/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">

<!-- Main Script -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${JsUrl}/custom.js"></script>
<script src="${JsUrl}/lean.js"></script>
<title>开始上课</title>
</head>
<body>
	<jsp:include page="../include/head.jsp" flush="false"></jsp:include>

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
					<a href="javascript:;" onclick="getClass(0)">
						<div class="portfolio-thumb">
							<img src="${ImgUrl}/portfolio-img2.jpg" class="img-responsive"
								alt="Portfolio">
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
					<input type="hidden" id="hsq" name="hsq">
				</form>
				<c:forEach items="${homelist }" var="home" varStatus="cnt">
					<div class="col-md-4 col-sm-6">
						<a href="javascript:;" onclick="getClass(${home.homework_seq})">
							<div class="portfolio-thumb">
								<img src="${ImgUrl}/portfolio-img1.jpg" class="img-responsive"
									alt="Portfolio">
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
