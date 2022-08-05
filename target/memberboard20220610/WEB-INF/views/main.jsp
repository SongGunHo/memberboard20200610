<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-10
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
    로그인 당은 값:${loginMember}<br>
    세션에 담은값:${sessionScope.memberId}<br>
   회원정보 memberId:${loginMember.memberId}<br>
            memberPassword:${loginMember.memberPassword}<br>
    <button class="btn btn-primary" onclick="location.href='/update-form?id=${sessionScope.memberId}'">수정</button><br>
    <button class="btn btn-primary" onclick="location.href='/delete-form?id=${sessionScope.memberId}'">삭제</button><br>
    <button class="btn btn-primary" onclick="location.href='/boardPage/list'">글목록</button><br>
</body>
</html>
