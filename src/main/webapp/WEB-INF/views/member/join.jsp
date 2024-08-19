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
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
    
       
    </head>
    <body>
    	<br>
    	<br>
        <!-- Main Content-->
 
         <div class="container" style="text-align:center;">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><a href="/" >Notice Board</a></h1>
                            </div>
                            <form class="user" id="joinForm" action="join" method="post">
                            <!-- ID 입력-->
                                <div class="form-group">
                                        <input type="text" class="form-control form-control-user" name="memberId" id="memberId" placeholder="id" style="border-radius: 20px" required>
                                </div>
                                <br>
                                <!-- 비밀번호 입력 --> 
                                <div class="form-group">
                                        <input type="password" class="form-control form-control-user " id="password" placeholder="Password" style="border-radius: 20px" required>
                                </div>
                                <br>
                                <!-- 비밀번호 확인 --> 
                                <div class="form-group">
                                        <input type="password" class="form-control form-control-user " name="memberPw" id="passwordCheck"
                                            id="repeatPassword" placeholder="Repeat Password" style="border-radius: 20px" required>
                                </div>
                                <br>
                                 <!-- 이름 입력 -->
                                <div class="form-group">
                                        <input type="text" class="form-control form-control-user " name="memberName"
                                            id="name" placeholder="name" style="border-radius: 20px" required>
                                </div>
                                <br>
                                <!-- Email 입력-->
                                <div class="form-group">
                                        <input type="email" class="form-control form-control-user " name="memberMail"
                                            id="email" placeholder="@email" style="border-radius: 20px" required>
                                </div>
                                <br> 
                                <!-- 전화번호 입력-->
                                <div class="form-group">
                                        <input type="tel" class="form-control form-control-user " name="memberTell"
                                            id="phone" placeholder="phoneNumber" style="border-radius: 20px" required>
                                </div>   
                              
                                <br>
                                 <!-- 회원가입 Button-->
                                <!-- <a href="login.html" class="btn btn-primary btn-user btn-center" style=" border-radius: 20px">
                                    Register Account
                                </a> -->
                                <div class="d-grid"><button style=" border-radius: 20px" class="btn btn-primary btn-user btn-center" id="btn" type="submit">회원가입</button></div>
                      
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
    