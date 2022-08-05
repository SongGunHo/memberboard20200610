<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-10
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.min.css">
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <style>
        .container{
            margin: 40px 0;
            text-align: center ;
        }
    </style>
</head>
<body>
    <h1>로그인</h1>
    <div class="container col-3">
<form action="/login" method="post">
    <input class="form-control" type="text" name="memberId" placeholder="memberId"><br>
    <input class="form-control" type="text" name="memberPassword" placeholder="memberPassword"><br>
    <input class="btn-outline-primary d-grid mx-auto" type="submit" value="로그인">
</form>
</div>
</body>
</html>
