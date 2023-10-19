<%-- 
    Document   : registration
    Created on : 18 окт. 2023 г., 16:30:00
    Author     : ЦОПП
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center text-capitalize">user login create</div>
                <div class="card-body">
                    <form action="user-registration" method="post">
                         <div class="form-group">
                            <label class="text-capitalize">name</label>
                            <input type="text" class="form-control" name="login-name" placeholder="Enter your name" required>
                        </div>
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
                        <p class="text-center text-muted mt-1 mb-0">Have already an account? <a href="login.jsp" class="fw-bold text-body"><u>Login here</u></a></p>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>

