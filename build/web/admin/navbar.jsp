<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark vh-5">
    <div class="container">

        <div class="d-flex align-items-center justify-content-center">
            <img style="display: inline-block;" src="../images-product/music.svg" alt="" width="30" height="24" class="d-inline-block align-center">
            <a class="navbar-brand " style="padding:0px;" href="index.jsp">Music-House</a>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="../index.jsp">о нас</a>
                </li>

                <c:if test="${not empty userObj}">
                    <li class="nav-item btn-outline-secondary">
                        <a class="nav-link text-capitalize text-white" href="">admin</a>
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