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
        <title>MyPage</title>
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
            <!-- Page Header-->
        <header class="masthead" style="background-image: url('resources/assets/img/about-bg.jpg')">
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
   			<section class="py-5">
                <div class="container px-5">
                    <div class="bg-light rounded-4 py-5 px-4 px-md-5">
                        <div class="text-center mb-5">
                        	<h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">내 정보</span></h1>
                    	</div>
                    	<div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
                    	<div class="card-body p-0">
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                            		<%-- <div>
                            			<c:if test="${not empty member.memberFileDTO}">
                            			<img alt="" src="/resources/upload/members/${member.memberFileDTO.fileName}">
                            			</c:if>
                            			
                            			<c:if test="${empty member.memberFileDTO}">
                            			<img alt="" src="/resources/upload/members/">
                            			</c:if>
                            		</div>
                             --%>
                                    <!-- Name input-->
                                    <div class="form-floating my-3">
                                        <input class="form-control" value="${member.memberId}" id="memberId" type="text" disabled/>
                                        <label for="memberId">ID</label>
                                    </div>
                                    <!-- password input --> 
                                    <div class="form-floating mb-3">
                                        <input class="form-control" value="${member.memberPw}" id="password" type="text" disabled/>
                                        <label for="password">Password</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="name" value="${member.memberName}" type="text" disabled/>
                                        <label for="name">Name</label>
                                    </div>
                                    <!-- Email address input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="email" value="${member.memberMail}" type="email" disabled/>
                                        <label for="email">Email address</label>
                                    </div>
                                    <!-- Phone number input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="phone" value="${member.memberTell}" type="tel" disabled/>
                                        <label for="phone">Phone number</label>
                                    </div>
                            </div>
                        </div>
                        </div>
                        </div>
                        <div class="row gx-3 align-items-center justify-content-end">
	                        <div class="col-auto">
								<a type="submit" class="btn btn-outline-primary" href="update?memberId=${member.memberId}">
									<h6 class="display-10 fw-bolder mb-0">정보 수정</h1></a>
							</div>
						</div>
                    </div>
                </div>
            </section>
	
		
<!-- 하단 footer, js start -->
		<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
<!-- 하단 footer, js end -->
    </body>
</html>