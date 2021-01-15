<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

<!-- Main Script -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${JsUrl}/custom.js"></script>
<script src="${JsUrl}/insertClass.js"></script>
<title>添加课文</title>
</head>
<body>

	<!-- PRE LOADER -->

	<jsp:include page="../include/head.jsp" flush="false" ></jsp:include>

	<!-- Blog Single Post Section -->
	
			<section id="blog-single-post">
				<div class="container">
					<div class="row">
							<form action=/insertClass method="post" onsubmit="return check()" id="insertHw">
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div class="blog-single-post-thumb">
									<div class="blog-post-image">
										<img src="${ImgUrl}/blog-image1.jpg" class="img-responsive"
											alt="Blog Image">
									</div>

									<div class="blog-post-title">
										<h2>添加课文</h2>
									</div>

									<div class="blog-comment-form">
										<div class="blog-comment">
											<div class="media">
												<div class="media-body">
													<h3 class="media-heading" id="xiao">课文详细内容</h3>
												</div>
											</div>
										</div>
										<input type="text" class="form-control" name="class_title" style="font-family:'SimHei';font-size: 28px;" required>
										<input type="text" class="form-control" name="class_title_sub" style="font-family:'SimHei';font-size: 28px;" required>
										<textarea class="form-control" style="font-family:'SimHei'; font-size: 28px;" name="classdetail" id="classdetail" rows="30"></textarea>
										<hr size="5" width="100%" color="black">
										<br />
										<div class="col-md-3 col-sm-4">
											<input type="submit" class="form-control" id="sub" value="保存">
										</div>							
									</div>
								</div>
							</div>
							<input type="hidden" value="${id }" name="id">
							<input type="hidden" name="check" value="ok">
						</form>
					</div>
				</div>
			</section>
	

	<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>
</body>
</html>