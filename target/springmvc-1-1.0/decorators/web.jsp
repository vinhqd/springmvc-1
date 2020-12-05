<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><dec:title default="Home" /></title>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/public/web/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/public/web/css/small-business.css" />" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<%@include file="/common/web/header.jsp"%>

<!-- Page Content -->
<dec:body />
<!-- /.container -->

<!-- Footer -->
<%@include file="/common/web/footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/public/web/vendor/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/public/web/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
</body>
</html>
