<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.utils.SecurityUtil" %>
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="/admin">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>
                <a class="nav-link" href="/admin/category">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Quản lý thể loại
                </a>
                <a class="nav-link" href="/admin/new">
                    <div class="sb-nav-link-icon"><i class="far fa-newspaper"></i></div>
                    Quản lý bài viết
                </a>
                <a class="nav-link" href="index.html">
                    <div class="sb-nav-link-icon"><i class="far fa-user"></i></div>
                    Quản lý người dùng
                </a>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            Start Bootstrap
        </div>
    </nav>
</div>