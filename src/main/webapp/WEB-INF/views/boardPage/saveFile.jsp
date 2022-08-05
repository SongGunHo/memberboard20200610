<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-16
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<body>
<form action="/saveFile" method="post">
    <input type="text" name="boardTitle" placeholder="제목"><br>
    <input type="text" name="boardTitle" placeholder="제목"><br>
    <input type="text" name="boardPassword" placeholder="비밀번호"><br>
    <textarea class="form-control mb-2" name="boardContents" rows="5" cols="10"></textarea>
    첨부파일: <input type="file" name="boardFile">
    <input class="btn btn-primary" type="submit" value="글작성">
</form>
</body>
</html>
