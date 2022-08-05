<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-13
  Time: 오후 2:12
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
            <th>작성자</th>
            <th>재목</th>
            <th>내용</th>
            <th>작성시간</th>
            <th>조화수</th>
        </tr>
        <c:forEach items="${board}" var="k">
            <td>#{k.id}</td>
            <td>#{k.boardTitle}</td>
            <td>${k.boardWriter}</td>
            <td><a href="/boardPage/delail?id${k.id}"></a>#{k.boardContents}</td>
            <td>#{k.boardCreatedDate}</td>
            <td>#{k.boardHits}</td>
        </c:forEach>
    </table>
</body>
</html>
