<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<spring:eval expression="@environment.getProperty('PATH_JS')" var="JsUrl"></spring:eval>

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta charset="UTF-8">
<title>HEAD</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">
<script src="${JsUrl}/head.js"></script>
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
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="javascript:;" onclick="goclassStart()" class="navbar-brand"><i class="fa fa-magnet"></i></a>
			</div>
			<div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="javascript:;" onclick="goclasslist('${id}')">课程</a></li>
               </ul>
          </div>
		</div>
	</div>
	

</body>
</html>