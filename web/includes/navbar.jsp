<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.DB.DbConn" %>
<%@ page import="com.DAO.CartDaoImpl" %>
<%@ page import="com.DAO.CartDao" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.DAO.ToolsDaoImpl" %>
<%@ page import="com.entity.ToolsDtls" %>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>


<% 
    User u = (User) session.getAttribute("userObj");
//    out.println(u); 
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark vh-5">
    <div class="container">

        <div class="d-flex align-items-center justify-content-center">
            <img style="display: inline-block;" src="images-product/music.svg" alt="" width="30" height="24" class="d-inline-block align-center">
            <a class="navbar-brand " style="padding:0px;" href="index.jsp">Music-House</a>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="index.jsp">о нас</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="index.jsp">товары</a>
                </li>

                <li class="nav-item position-relative">
                    <a class="nav-link text-capitalize" href="orders.jsp">корзина
                                                   
                    </a>    
                </li>

                <c:if test="${not empty userObj}">
                    <li class="nav-item btn-outline-secondary">
                        <a class="nav-link text-capitalize text-white dasdas" data-name="<%= u.getId()%>" href="home.jsp">${userObj.name}</a> 
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-capitalize" href="log-out">выйти</a>
                    </li>
                </c:if>
                <c:if test="${empty userObj}" >
                    <li class="nav-item">
                        <a class="nav-link text-capitalize" href="login.jsp">войти</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>