<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h2>${ param.menuCode}번 메뉴 정보 조회</h2>
    <hr>
    <table>
        <tr>
            <th>메뉴 이름</th>
            <td>${ selectedMenu.menuName }</td>
        </tr>
        <tr>
            <th>메뉴 가격</th>
            <td>${ selectedMenu.menuPrice }</td>
        </tr>
        <tr>
            <th>카테고리 코드</th>
            <td>${ selectedMenu.categoryCode }</td>
        </tr>
        <tr>
            <th>주문 가능 여부</th>
            <td>${ selectedMenu.orderableStatus }</td>
        </tr>
    </table>
</body>
</html>
