<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import= "com.example.utils.SecurityUtil" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/trang-chu">Trang chủ
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Bài viết</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Dich vụ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Liên hệ</a>
                </li>
                <security:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="#"><%= SecurityUtil.getPrincipal().getFullName() %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/j_spring_security_logout">Thoát</a>
                    </li>
                </security:authorize>
                <security:authorize access="isAnonymous()">
                    <li class="nav-item">
                        <a class="nav-link" href="/dang-nhap">Đăng nhập</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/dang-ky">Đăng ký</a>
                    </li>
                </security:authorize>
            </ul>
        </div>
    </div>
</nav>