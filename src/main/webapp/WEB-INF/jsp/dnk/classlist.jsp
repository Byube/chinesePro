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
<script src="${JsUrl}/classlist.js"></script>
<title>开始上课</title>
</head>
<body>

	<!-- PRE LOADER -->

	<jsp:include page="../include/head.jsp" flush="false" ></jsp:include>

	<!-- Blog Single Post Section -->
	<c:choose>

		<c:when test="${hList ne null}">
			<c:forEach items="${hList}" var="hl">
				<section id="blog-single-post">
					<div class="container">
						<div class="row">
							<form action="/modhw" method="post">
								<div class="col-md-offset-1 col-md-10 col-sm-12">
									<div class="blog-single-post-thumb">
										<div class="blog-post-image">
											<img src="${ImgUrl}/blog-image1.jpg" class="img-responsive"
												alt="Blog Image">
										</div>
										<div class="blog-post-title">
											<h2>${hl.homework_title}</h2>
										</div>

										<div class="blog-comment-form">
											<div class="blog-comment">
												<div class="media">
													<div class="media-body">
														<h1 class="media-heading">日记</h1>
													</div>
												</div>
											</div>
											<c:forTokens items="${hl.homework_diary_or}" delims="#"
												var="diary">
												<input type="text" class="form-control" name="diary"
													value="${diary }" readonly="readonly" style="font-family:'SimHei';font-size: 28px;" required>
												<br />
												<input type="text" class="form-control" name="mdiary"
													value="${diary }" style="font-family:'SimHei';font-size: 28px;" required>
												<br />
											</c:forTokens>

											<hr size="5" width="100%" color="black">
											<hr size="5" width="100%" color="black">
											<br /> 
											<input type="hidden" value="${hl.homework_seq }" name="hsq">
											<input type="hidden" value="${id }" name="id">
											<div class="blog-comment">
												<div class="media">
													<div class="media-body">
														<h1 class="media-heading">单词</h1>
													</div>
												</div>
											</div>
											<c:forTokens items="${hl.homework_detail_or}" delims="#"
												var="hdo">
												<input type="text" class="form-control" name="hw"
													value="${hdo }" readonly="readonly" style="font-family:'SimHei';font-size: 28px;" required>
												<br />
												<input type="text" class="form-control" name="mhw" style="font-family:'SimHei';font-size: 28px;"
													value="${hdo }" required>
												<br />
											</c:forTokens>
											<div class="col-md-3 col-sm-4">
												<input type="submit" class="form-control" value="修改保存">
											</div>

										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</section>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<section id="blog-single-post">
				<div class="container">
					<div class="row">
							<form action="/insertHw" method="post" onsubmit="return check()" id="insertHw">
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div class="blog-single-post-thumb">
									<div class="blog-post-image">
										<img src="${ImgUrl}/blog-image1.jpg" class="img-responsive"
											alt="Blog Image">
									</div>

									<div class="blog-post-title">
										<h2>${h_title}</h2>
									</div>

									<div class="blog-comment-form">
										<div class="blog-comment">
											<div class="media">
												<div class="media-body">
													<h3 class="media-heading" id="xiao">日记</h3>
												</div>
											</div>
										</div>
										<textarea class="form-control" style="font-family:'SimHei'; font-size: 38px;" name="diary" id="diary" rows="30"></textarea>
										<hr size="5" width="100%" color="black">
										<hr size="5" width="100%" color="black">
										<br />
										
										<input type="hidden" name="id" value="${id }">
										<input type="hidden" name="student_seq" value="${student_seq}">
										<div class="blog-comment">
											<div class="media">
												<div class="media-body">
													<h3 class="media-heading" id="xiao">单词</h3>
												</div>
											</div>
										</div>
										<textarea class="form-control" style="font-family:'SimHei';font-size: 38px;" name="hw" id="hw" rows="30"></textarea>
										<div class="col-md-3 col-sm-4">
											<input type="submit" class="form-control" id="sub" value="保存">
										</div>							
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</c:otherwise>
	</c:choose>

	<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>
</body>
</html>