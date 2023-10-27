<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>
<%@page isELIgnored="false" %>

<%
    if(request.getSession().getAttribute("userObj") != null){
         response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shoping cart create login</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5 mb-5 text-white bg-dark">
                        <div class="card-body">
                            <c:if test="${not empty succesRegister}">
                                <input type="hidden" id="status" name="name" value="${succesRegister}">
                                <c:remove var="succesRegister" scope="session"/>
                            </c:if>
                            <c:if test="${not empty failedReg}">
                                <p class="text-center text-danger text-uppercase fs-4">${failedReg}</p>
                                <c:remove var="failedReg"/>
                            </c:if>

                            <c:if test="${not empty failedCheck}">
                                <p class="text-center text-danger text-uppercase fs-4">${failedCheck}</p>
                                <c:remove var="failedCheck"/>
                            </c:if>
                            <h4 class="text-center">Зарегистрироваться</h4>
                            <form action="user-registration" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Login</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Phone</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" name="phone">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="exampleInputEmail1" name="password">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1">Соглашаетесь с правилами и условиями</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
                                <p class="text-center text-white-50 mt-1 mb-0">У вас уже есть учетная запись? <a href="login.jsp" class="fw-bold text-white-50"><u>Войти</u></a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "success") {
                swal("Регистрация прошла успешна", "success", {
                });
            }

        </script>
    </body>
</html>

