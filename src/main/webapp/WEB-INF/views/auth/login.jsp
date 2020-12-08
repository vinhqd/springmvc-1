<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<div class="limiter">
    <div class="container-login100"
         style="background-image: url('<c:url value="/public/auth/login/images/bg-01.jpg"/>');">
        <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
            <c:if test="${param.accessDenied != null}">
                <div class="align-items-center alert alert-danger">
                    You not authorize!
                </div>
            </c:if>
            <c:if test="${param.incorrectAccount != null}">
                <div class="align-items-center alert alert-danger">
                    Tài khoản không tồn tại. Đăng ký ngay.
                </div>
            </c:if>
            <form class="login100-form validate-form flex-sb flex-w" action="/j_spring_security_check" method="POST">
					<span class="login100-form-title p-b-53">
						Đăng nhập
					</span>

                <a href="#" class="btn-face m-b-20">
                    <i class="fa fa-facebook-official"></i>
                    Facebook
                </a>

                <a href="#" class="btn-google m-b-20">
                    <img src="<c:url value="/public/auth/login/images/icons/icon-google.png" />" alt="GOOGLE">
                    Google
                </a>

                <div class="p-t-31 p-b-9">
						<span class="txt1">
							Tài khoản
						</span>
                </div>
                <div class="wrap-input100 validate-input" data-validate="Username is required">
                    <input class="input100" type="text" name="j_username">
                    <span class="focus-input100"></span>
                </div>

                <div class="p-t-13 p-b-9">
						<span class="txt1">
							Mật khẩu
						</span>

                    <%--                    <a href="#" class="txt2 bo1 m-l-5">--%>
                    <%--                        Forgot?--%>
                    <%--                    </a>--%>
                </div>
                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <input class="input100" type="password" name="j_password">
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn m-t-17">
                    <button class="login100-form-btn">
                        Đăng nhập
                    </button>
                </div>

                <div class="w-full text-center p-t-55">
						<span class="txt2">
							Chưa có tài khoản?
						</span>

                    <a href="#" class="txt2 bo1">
                        Đăng ký ngay
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>
</body>
</html>
