<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-15
  Time: 오전 10:22
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
        h1{
            margin: 50px 0;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="col-3">
<form action="/list" method="post">
    <input class="form-control " type="text" name="memberId" placeholder="memberId"><br>
    <input class="form-control" type="text" name="memberPassword" placeholder="memberPassword"><br>
    <input class="form-control" type="text" name="memberName" placeholder="memberName"><br>
    <input class="form-control" type="text" name="memberEmail" placeholder="memberEmail"><br>
    <input class="form-control" type="text" name="memberMobil" placeholder="memberMobil"><br>
    <input class="btn-outline-primary " type="submit" value="회원목록">
</form>
</div>
</body>
</html>
