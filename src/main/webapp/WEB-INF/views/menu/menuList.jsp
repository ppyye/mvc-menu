<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>list</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h2>전체 메뉴 목록 조회</h2>
    <table>
        <tr>
            <th>메뉴 코드</th>
            <th>메뉴 이름</th>
            <th>메뉴 가격</th>
            <th>카테고리 코드</th>
            <th>주문 가능 상태</th>
        </tr>
        <c:forEach items="${ menuList }" var="menu">
            <tr>
                <td>${ menu.menuCode }</td>
                <td>${ menu.menuName }</td>
                <td>${ menu.menuPrice }</td>
                <td>${ menu.categoryCode }</td>
                <td>${ menu.orderableStatus }</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
