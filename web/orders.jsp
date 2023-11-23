<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cart tools</title>
        <%@include file="includes/head.jsp"  %>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <c:if test="${empty userObj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>

        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Ваши товары</h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Музыкальный инструмент</th>
                                            <th scope="col">Бренд</th>
                                            <th scope="col">Цена</th>
                                            <th scope="col">Количество</th>
                                            <th scope="col">Действие</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%
                                            CartDaoImpl dao = new CartDaoImpl(DbConn.getConnection());
                                            List<Cart> cart = dao.getToolsUser(u.getId());
                                            Double totalPrice = 0.0;
                                        
                                            for(Cart c : cart){
                                            totalPrice = c.getTotalPrice();
                                        %>
                                        <tr class="box-cart" data-id="<%= c.getToolsId()%>" data-user="<%= c.getUserId() %>">
                                            <th scope="row"><%=c.getToolsName()%></th>
                                            <td><%=c.getBrend()%></td>
                                            <td><%=c.getPrice()%> р</td>
                                            <td class="quantity_cart"><%=c.getCount()%></td> 
                                            <td>
                                                <a href="" data-id="<%= c.getToolsId()%>" data-user="<%= c.getUserId() %>" class="btn btn-success add-cart">+</a>
                                                <a href="" data-id="<%= c.getToolsId()%>" data-user="<%= c.getUserId() %>" class="btn btn-danger add-quantity">-</a>
                                            </td> 
                                        </tr>
                                        <%}
                                        %>
                                        <tr>
                                            <td>Общая сумма</td>
                                            <td></td>
                                            <td></td>
                                            <td><%=totalPrice%> рублей</td>
                                        </tr>
                                    </tbody> 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Данные для доставки</h3>
                            <form>
                                <div class="row">
                                    <div class="form-group col-md-6 col">
                                        <label for="inputEmail4" class="form-label">Имя</label> 
                                        <input type="text" class="form-control" id="inputLogin4">
                                    </div>
                                    <div class="form-group col-md-6 col">
                                        <label for="inputEmail4" class="form-label">Почта</label> 
                                        <input type="email" class="form-control" id="inputEmail4">
                                    </div>
                                    <div class="form-group col-md-6 col">
                                        <label for="inputPassword4" class="form-label">Пароль</label>
                                        <input type="password" class="form-control" id="inputPassword4">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPhone" class="form-label">Номер телефона</label>
                                        <input type="number" class="form-control" id="inputPhone">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="inputAddress" class="form-label">Адресс</label>
                                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputCity" class="form-label">Город</label>
                                        <input type="text" class="form-control" id="inputCity">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputLandmark" class="form-label">Индекс</label>
                                        <input type="text" class="form-control" id="inputLandmark">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="inputZip" class="form-label">Пин-код</label>
                                        <input type="number" class="form-control" id="inputZip">
                                    </div>
                                    <div class="form-group>
                                         <label for="inputPassword4" class="form-label">Способ оплаты</label>
                                        <select id="id" class="form-control">
                                            <option value="first">----Выбрать----</option>
                                            <option value="onlene">Онлайн</option>
                                            <option value="uponReceipt">При получении</option>
                                        </select>
                                    </div>
                                    <div class="col-12 pt-1 pb-1">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck">
                                            <label class="form-check-label" for="gridCheck">
                                                Check me out
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-12 text-center">
                                    <button type="submit" class="btn btn-primary">Заказать</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>



        <%@include file="includes/footer.jsp" %>
    </body>
</html>
