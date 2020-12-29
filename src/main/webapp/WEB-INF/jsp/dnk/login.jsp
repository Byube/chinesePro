<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

<%--    <script src="resources/js/hello.js"></script>--%>
<%--    <link rel="stylesheet" type="text/css" href="resources/css/hello.css">--%>

	<spring:eval expression="@environment.getProperty('PATH_JS')" var="JsUrl"></spring:eval>
	<spring:eval expression="@environment.getProperty('PATH_CSS')" var="CssUrl"></spring:eval>

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

    <title>学生登录</title>

</head>
<body>
	<jsp:include page="../include/head.jsp" flush="false"></jsp:include>

<!-- Contact Section -->

<section id="contact">
    <div class="container">
        <div class="row">

            <div class="col-md-offset-1 col-md-10 col-sm-12">
                <div class="section-title">
                    <h3>中文课程</h3>
                </div>


                <form action="/startlean" method="post">
                    <div class="form-group">
                        <label for="inputName">姓名</label> <input type="text" class="form-control" name="id" id="id" placeholder="请把姓名填写上">
                    </div>
                    <br>
                    <br>

                    <!--  <div class="col-md-6 col-sm-6">
                           <select class="form-control">
                                <option>Budget Select</option>
                                <option>$1200 to $1600</option>
                                <option>$2200 to $2400</option>
                                <option>$2500 to $3800</option>
                           </select>
                      </div>  -->

                    <div class="col-md-3 col-sm-4">
                        <input type="submit" class="form-control" value="上课">
                    </div>
                </form>
            </div>

        </div>
    </div>
</section>

<!-- Footer Section -->

<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>

</body>
</html>