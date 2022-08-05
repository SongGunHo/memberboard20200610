<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-15
  Time: 오후 4:24
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
    <h2>수정</h2>
<div class="col-3">
<form action="/update" method="post">
    <input class="form-control" type="text" id="id" name="id" value="#{findById.}" placeholder="id">
    <input class="form-control" type="text" id="memberId" name="memberId" >
    <input class="form-control"type="text" id="memberPassword" name="memberPassword" hidden>
    <input class="form-control"type="text" name="memberName" placeholder="memberName">
    <input class="form-control"type="text" name="memberEmail" placeholder="memberEmail">
    <input class="form-control"type="text" name="memberMobil" placeholder="memberMobil">
    <input class="btn-outline-primary"type="submit" value="update">
</form>
</div>>
</body>
</html>
