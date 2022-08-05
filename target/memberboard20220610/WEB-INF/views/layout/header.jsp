<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-27
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="">

</head>
<body>
<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="/board/save" class="nav-link px-2 text-white">글쓰기</a></li>
                <li><a href="/board/findAll" class="nav-link px-2 text-white">글목록</a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="search" class="form-control form-control-dark text-white bg-dark" placeholder="Search..." aria-label="Search">
            </form>

            <div class="text-end">
                <button class="btn btn-primary" onclick="location.href='/myPage-form?id=${member.memberId}'">myPage</button>
                <c:choose>
                    <c:when test="${sessionScope.loginMember.memberId == 'admin'}">
                <button class="btn btn-primary" onclick="location.href='/admin-form'">admin</button>
                </c:when>
                </c:choose>
                    <button class="btn btn-primary" onclick="location.href='/logout'">logout</button>
            </div>
        </div>
    </div>
</header>
</body>
</html>

