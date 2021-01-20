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
<script src="${JsUrl}/classlist2.js"></script>
<title>课文内容</title>
</head>
<body>

	<!-- PRE LOADER -->

	<jsp:include page="../include/head.jsp" flush="false" ></jsp:include>

	<!-- Blog Single Post Section -->
	
			<section id="blog-single-post">
				<div class="container">
					<div class="row">
							<form action="/modclass" method="post" id="modclass">
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div class="blog-single-post-thumb">
									<div class="blog-post-image">
										<img src="${ImgUrl}/blog-image2.jpg" class="img-responsive"
											alt="Blog Image">
									</div>
									<c:forEach items="${classlist }" var="cl">
									<div class="blog-post-title">
										<h2>${cl.class_title}</h2>
									</div>
									<input type="hidden" name="class_title" value="${cl.class_title}">
									<input type="hidden" name="class_title_sub" value="${cl.class_title_sub}">
									<input type="hidden" name="student_seq" value="${student_seq }">
									<input type="hidden" name="id" id="idis" value="${id }">
									<input type="hidden" name="class_seq" id="class_seq" value="${cl.class_seq }">
									<div class="blog-comment-form">
										<div class="blog-comment">
											<div class="media">
												<div class="media-body">
													<h3 class="media-heading" style="font-family: 'SimHei';">${cl.class_title_sub }</h3>
												</div>
											</div>
										</div>
										<textarea class="form-control" style="font-family:'Chinese Pinyin'; font-size: 38px;" name="class_detail_af" id="class_detail_af" rows="30">${cl.class_detail_or }</textarea>
										<hr size="5" width="100%" color="black">
										<hr size="5" width="100%" color="black">
										<!-- <input type="text" style="font-family:'Chinese Pinyin'; font-size: 38px;"> -->
										<br />
										<div class="col-md-3 col-sm-4">
											<input type="submit" class="form-control" id="sub" value="修改">
										</div>	
										<div class="col-md-3 col-sm-4">						
										<input type="button" class="form-control" id="goback" value="取消">
										</div>	
									</div>
									</c:forEach>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
	

	<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>
</body>
</html>