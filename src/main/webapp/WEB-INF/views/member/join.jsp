<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
         <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원가입</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
        <c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
    
       
    </head>
    <body>
    	 <header class="masthead"  style="background-image: url('resources/assets/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Notice Board</h1>
                            <span class="subheading"></span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
 
         <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user">
                                <div class="form-group">
                                        <input type="text" class="form-control form-control-user "
                                            id="id" placeholder="id" style="border-radius: 20px">
                                </div>
                                <br>
                                <div class="form-group">
                                        <input type="password" class="form-control form-control-user "
                                            id="password" placeholder="Password" style="border-radius: 20px">
                                </div>
                                <br>
                                <div class="form-group">
                                        <input type="text" class="form-control form-control-user "
                                            id="repeatPassword" placeholder="Repeat Password" style="border-radius: 20px">
                                </div>
                                <br>
                                <div class="form-group">
                                        <input type="text" class="form-control form-control-user "
                                            id="name" placeholder="name" style="border-radius: 20px">
                                </div>
                                <br>
                                <div class="form-group">
                                        <input type="email" class="form-control form-control-user "
                                            id="email" placeholder="@email" style="border-radius: 20px">
                                </div>
                                <br> 
                                <div class="form-group">
                                        <input type="tel" class="form-control form-control-user "
                                            id="phone" placeholder="phoneNumber" style="border-radius: 20px">
                                </div>   
                              
                                <br>
                                <a href="login.html" class="btn btn-primary btn-user btn-center" style=" border-radius: 20px">
                                    Register Account
                                </a>
                                <hr>
                                 <a href="#" class="btn btn-google btn-user btn-block" >
                                  <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                 <a href="#" class="btn btn-facebook btn-user btn-block">
                                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook 
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small btn btn-facebook btn-user btn-block" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small btn btn-facebook btn-user btn-block" href="login.html">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
       
  <!-- 하단 footer, js start -->
		<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
<!-- 하단 footer, js end -->
	
	
    </body>
</html>
    