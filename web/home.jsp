<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getSession().getAttribute("userObj") == null){
         response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User: home</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://pixelbox.ru/wp-content/uploads/2021/03/ava-instagram-4.jpg"><span class="font-weight-bold">User</span><span class="text-black-50">User@mail.ru</span><span> </span></div>
                </div>
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Settings</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Логин</label><input type="text" class="form-control" placeholder="Ваш логин" value=""></div>
                            <div class="col-md-6"><label class="labels">Email</label><input type="email" class="form-control" placeholder="Ваш email" value=""></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12 mb-1"><label class="labels">Номер телефона</label><input type="number" class="form-control" placeholder="Ваш номер телефона" value=""></div>
                            <div class="col-md-12 mb-1"><label class="labels">Регион</label><input type="text" class="form-control" placeholder="Ваш регион" value=""></div>
                            <div class="col-md-12 mb-1"><label class="labels">Город</label><input type="text" class="form-control" placeholder="Ваш город" value=""></div>
                            <div class="col-md-12"><label class="labels">Адрес</label><input type="text" class="form-control" placeholder="Ваш адрес" value=""></div>
                        </div>
                        <div class="mt-4 text-center"><button class="btn btn-primary profile-button" type="button">Сохранить</button></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <div class="col-md-12 mb-2"><label class="labels">Пароль</label><input type="password" class="form-control" placeholder="Ваш пароль" value=""></div>
                        <div class="col-md-12"><label class="labels">Повторите пароль</label><input type="password" class="form-control" placeholder="Ваш пароль" value=""></div>
                    </div>
                </div>
            </div>
        </div>

          <%@include file="includes/footer.jsp" %>
    </body>
</html>
