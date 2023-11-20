<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All Orders</title>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userObj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <h3 class="text-center">Список заказов</h3>
        <div class="table-responsive">
            <table class="table">
                <thead class="bg-black text-white">
                    <tr>
                        <th scope="col">Id заказа</th>
                        <th scope="col">Название</th>
                        <th scope="col">email</th>
                        <th scope="col">Адресс</th>
                        <th scope="col">Номер</th>
                        <th scope="col">Название книги</th>
                        <th scope="col">Бренд</th>
                        <th scope="col">Цена</th>
                        <th scope="col">Вид оплаты</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
