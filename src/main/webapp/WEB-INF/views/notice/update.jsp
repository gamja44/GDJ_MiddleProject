<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>고객센터</title>

    <!-- Custom fonts for this template -->
    <link href="/resources/vendor2/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css2/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/vendor2/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3" href="/">Board</div>
            </a>

            <!-- Heading -->
            <div class="sidebar-heading">
                ServiceCenter
                
            </div>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="/notice/list">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Notice</span></a>
            </li>
             <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="customers?#">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>FAQ</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"></span>
                                <img class="img-profile rounded-circle"
                                    src="/resources/img2/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
					         	<c:choose>	
					         	<c:when test="${member ne null}">
	                                 <a class="dropdown-item" href="#">
	                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    MyPage
	                                </a>
	                                <div class="dropdown-divider"></div>
	                                <a class="dropdown-item" href="/notice/customers#" data-toggle="modal" data-target="#logoutModal">
	                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    Logout
	                                </a> 
                                </c:when>
				         			<c:otherwise>
				         				 <a class="dropdown-item" href="/member/login">
	                                    	<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    	Login
	                                	 </a>
	                                	<a class="dropdown-item" href="/member/join">
	                                    	<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    	Join
	                                	 </a>
				         			</c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
               
					
						<section class="py-5">
                <div class="container px-5">
                    <div class="bg-light rounded-4 py-5 px-4 px-md-5">
                        <div class="text-center mb-5">
                        	<h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">
	                        	<%-- <c:if test="${dto eq null}">
	                        		${board} 추가
	                        	</c:if>
	                        	<c:if test="${dto ne null}">
	                        		${board} 수정
	                        	</c:if> --%>
                        	</span></h1>
                    	</div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <form action="/notice/form" method="post" enctype="multipart/form-data">
	                                    <!-- 제목 입력-->
	                                    <div class="form-floating mb-3">
	                                    	<label for="boardTitle">제목</label>
	                                        <input class="form-control" value="${noticeDTO.boardTitle}" name="boardTitle" id="boardTitle" type="text"/>
	                                        
	                                    </div>
	                                    <!-- 설명 입력 --> 
	                                   	<div class="form-floating mb-3">
	                                   		<label for="contents">내용</label>
	                                        <textarea class="form-control" name="contents" id="contents" type="text" style="height: 10rem">${noticeDTO.contents}</textarea>
	                                        
	                                    </div>
                                    
                                    <!-- <div class="row py-2 align-items-center justify-content-end">
                                     	<div class="col-auto">
                                    		<button type="button" id="add" class="btn btn-outline-primary">
												<h6 class="display-10 fw-bolder mb-0">
												파일 추가
												</h6>
											</button>
										</div>
									</div> -->
									
									<div id="result"></div>
                                    <!-- Submit Button-->
                                    <div class="row py-2 align-items-center justify-content-end">
                                     	<div class="col-auto">
                                    		
												 <c:if test="${noticeDTO eq null}">
													<button type="submit" class="btn btn-outline-primary">
														<h6 class="display-10 fw-bolder mb-0">등록</h6>
													</button>
												</c:if>
												<c:if test="${noticeDTO ne null}">
													<form action="/notice/form" method="post">
												 	<input type="hidden" name="boardNum" value="${noticeDTO.boardNum}">
															<button type="submit" class="btn btn-outline-primary">
															<h6 class="display-10 fw-bolder mb-0">등록</h6>
														</button>
													</form>>
												</c:if>
                                    	</div>
								  	</div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
                
                
                
                
                
                
                
                
                
                        <!-- 하단 footer, js start -->
				<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
			<!-- 하단 footer, js end -->
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor2/jquery/jquery.min.js"></script>
    <script src="/resources/vendor2/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor2/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js2/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/vendor2/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor2/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/js2/demo/datatables-demo.js"></script>

</body>

</html>