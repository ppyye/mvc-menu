<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h2>메뉴 코드로 메뉴 조회</h2>
    <form action="${pageContext.servletContext.contextPath}/menu/select">
        <label for="menuCode">메뉴 코드 : </label>
        <input type="text" name="menuCode" id="menuCode">
        <button>조회</button>
    </form>

    <hr>

    <h2>전체 메뉴 조회</h2>
    <button onclick="location.href='${pageContext.servletContext.contextPath}/menu/list'">
        전체 메뉴 조회하기
    </button>

    <hr>

    <h2>신규 메뉴 추가</h2>
    <form action="${pageContext.servletContext.contextPath}/menu/insert" method="post">
        메뉴 이름 : <input type="text" name="menuName"><br>
        메뉴 가격 : <input type="text" name="menuPrice"><br>
        카테고리 :
        <select name="categoryCode">
            <option value="4">한식</option>
            <option value="5">중식</option>
            <option value="6">일식</option>
            <option value="7">퓨전</option>
            <option value="8">커피</option>
            <option value="9">쥬스</option>
            <option value="10">기타</option>
            <option value="11">동양</option>
            <option value="12">서양</option>
        </select><br>
        주문 가능 여부 :
        가능 <input type="radio" name="orderableStatus" value="Y"> |
        불가능 <input type="radio" name="orderableStatus" value="N">
        <br>
        <button type="submit">등록하기</button>
    </form>

    <hr>

    <h2>메뉴명 수정</h2>
    <form action="${pageContext.servletContext.contextPath}/menu/update" method="post">
        메뉴 코드 : <input type="text" name="menuCode"/><br>
        변경할 메뉴명 : <input type="text" name="menuName"/><br>
        <button type="submit">메뉴명 수정하기</button>
    </form>

    <hr>

    <h2>메뉴 삭제</h2>
    <form action="${pageContext.servletContext.contextPath}/menu/delete" method="post">
        삭제할 메뉴 코드 : <input type="text" name="menuCode"/>
        <button type="submit">메뉴 삭제</button>
    </form>
</body>
</html>
