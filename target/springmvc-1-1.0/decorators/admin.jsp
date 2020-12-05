<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title> <dec:title default="ADMIN"/> </title>
    <link href="<c:url value="/public/admin/css/styles.css" />" rel="stylesheet"/>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"
          crossorigin="anonymous"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
            crossorigin="anonymous"></script>
</head>
<body>
<%-- navigation bar --%>
<%@include file="/common/admin/header.jsp" %>

<div id="layoutSidenav">
    <%--  Menu bar  --%>
    <%@include file="/common/admin/menu.jsp" %>
    <div id="layoutSidenav_content">
        <%--    Body    --%>
        <dec:body />
        <%--    Footer    --%>
        <%@include file="/common/admin/footer.jsp" %>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="<c:url value="/public/admin/js/scripts.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="<c:url value="/public/admin/assets/demo/chart-area-demo.js" />"></script>
<script src="<c:url value="/public/admin/assets/demo/chart-bar-demo.js" />"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="<c:url value="/public/admin/assets/demo/datatables-demo.js" />"></script>
</body>
</html>