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
			<div class="col-md-4 col-sm-6">
				<h3>课文</h3>
				<ul>
				
				<c:forEach items="${classlist }" var="cd" varStatus="cnt">
					<li><a href="javascript:;" onclick="goclassDetail()" style="font-size: 26px;">${cd.class_title }</a></li>
					</c:forEach>
				</ul>
			</div>
			
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
					<input type="hidden" id="hsq" name="hsq"> <input
						type="hidden" name="id" value="${id}"> <input
						type="hidden" name="student_seq" value="${student_seq}">
				</form>
				<c:forEach items="${homelist }" var="home" varStatus="cnt">
					<div class="col-md-4 col-sm-6">
						<a href="javascript:;" onclick="getClass(${home.homework_seq})">
							<div class="portfolio-thumb">
								<img src="${ImgUrl}/portfolio-img4.jpg" class="img-responsive"
									alt="Portfolio">
								<div class="portfolio-overlay">
									<div class="portfolio-item">
										<h3>${home.homework_title}</h3>
										<small>作业</small>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>


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
