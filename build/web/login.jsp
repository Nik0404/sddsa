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
        <title>shoping cart login</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <div class="container">
            <div class="card w-50 mx-auto my-5 text-white bg-dark">
                <div class="card-body">
                    <h4 class="text-center">Войти</h4>
                    <c:if test="${not empty failedUser}">
                        <p class="text-center text-danger text-uppercase fs-4">${failedUser}</p>
                        <c:remove var="failedUser"/>
                    </c:if>
                    <form action="user-login" method="post">
                        <div class="mb-3">
                            <label class="text-capitalize">email addres</label>
                            <input type="email" class="form-control" name="login-email" placeholder="Enter your email" required>
                        </div>
                        <div class="mb-3">
                            <label class="text-capitalize">password</label>
                            <input type="password" class="form-control" name="login-password" placeholder="Enter your password" required>
                        </div>
                        <div class="text-left mt-2">
                            <button type="submit" class="btn btn-primary text-capitalize">Войти</button>
                        </div>
                        <p class="text-center text-white-50 mt-1 mb-0">У вас еще нету учетной записи? <a href="registration.jsp" class="fw-bold text-white-50"><u>Зарегистрироваться</u></a></p>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
