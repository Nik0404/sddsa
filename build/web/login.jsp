<%-- 
    Document   : index
    Created on : 16 окт. 2023 г., 09:07:03
    Author     : ЦОПП
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>shoping cart login</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center text-capitalize">user login</div>
                <div class="card-body">
                    <form action="user-login" method="post">
                        <div class="form-group">
                            <label class="text-capitalize">email addres</label>
                            <input type="email" class="form-control" name="login-email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            <label class="text-capitalize">password</label>
                            <input type="password" class="form-control" name="login-password" placeholder="Enter your password" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary text-capitalize">login</button>
                        </div>
                        <p class="text-center text-muted mt-1 mb-0">У вас еще нету учетной записи? <a href="registration.jsp" class="fw-bold text-body"><u>Зарегистрироваться</u></a></p>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
