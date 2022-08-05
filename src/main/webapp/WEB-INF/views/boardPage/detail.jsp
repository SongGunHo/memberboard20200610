<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-15
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <th>글번호</th>
            <th>재목</th>
            <th>작성내용</th>
            <th>작성시간</th>
            <th>조회수</th>
        </tr>
        <tr>
            <td>${board.id}</td>
            <td>${board.Title}</td>
        </tr>
        <a href="/boardPage/update-form?id=${k.id}">수정</a>
        <a href="/boardPage/delebte-form?id=${k.id}">삭제</a>
    </table>
</body>
</html>
