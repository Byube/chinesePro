<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

<%--    <script src="resources/js/hello.js"></script>--%>
<%--    <link rel="stylesheet" type="text/css" href="resources/css/hello.css">--%>

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

    <!-- Main Script -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="resources/js/custom.js"></script>

    <title>学生登录</title>

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
        <!--  <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html">Projects</a></li>
                    <li><a href="about.html">Our Studio</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li class="active"><a href="contact.html">Contact</a></li>
               </ul>
          </div>
		  -->
    </div>
</div>


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

<footer>
    <div class="container">
        <div class="row">

            <div class="col-md-3 col-sm-3">
                <i class="fa fa-magnet"></i>
            </div>

            <div class="col-md-4 col-sm-4">
                <p>82, Seochangnamsunhwan-ro, Namdong-gu, Incheon, Republic of Korea</p>
            </div>

            <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3">
                <p><a href="mailto:youremail@gmail.com">kangjunne@naver.com</a></p>
                <p>(010) 40840619</p>
            </div>

            <div class="clearfix col-md-12 col-sm-12">
                <hr>
            </div>

            <div class="col-md-6 col-sm-6">
                <div class="footer-copyright">
                    <p>© 1991.01.17 | All Rights Reserved.</p>
                </div>
            </div>


        </div>
    </div>
</footer>

</body>
</html>