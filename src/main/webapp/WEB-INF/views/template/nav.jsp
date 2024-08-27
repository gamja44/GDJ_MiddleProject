<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">Notice Board</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto py-4 py-lg-0">
                    
                 <c:choose>
         			<c:when test="${member ne null}">
         				<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="/member/mypage">${member.memberId}님</a></li>
           				<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="/member/logout">로그아웃</a></li>
         			</c:when>
         			<c:otherwise>
          				<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="/member/login">로그인</a></li>
           				<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="/member/join">회원가입</a></li>
         		</c:otherwise>
         		</c:choose>
                		<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="/notice/list" target="_blank">고객센터</a></li>
                    </ul>
                </div>
            </div>
        </nav>