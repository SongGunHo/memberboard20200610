<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-15
  Time: 오후 6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <from href="/update"  method="post">
        <input type="text" id="memberId" name="memberId" value="${boardUpdate.}">
        <input type="text" name="boardTitle" placeholder="boardTitle">
        <input type="text" name="boardContents" placeholder="boardContents">
        <input type="text" name="boardFile" placeholder="boardFile">
        <input type="text" name="boardFileName" placeholder="boardFileName">
        <input type="submit" value="update">
    </from>
-
</body>
</html>
