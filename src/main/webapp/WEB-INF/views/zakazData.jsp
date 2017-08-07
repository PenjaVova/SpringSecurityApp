<%--Date: 22.07.2017 : 19:37--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Заказ № ${zakaz.id}</title>
</head>
<body>
<h1>Заказ № ${zakaz.id}</h1>
<h2>Клиент ${zakaz.clients_FIO}</h2>
<h2>Дизанер ${zakaz.sotrFio}</h2>

<%--<spring:param name="zakaz" value="zakaz"> </spring:param>--%>

<!-- Основная таблица -->
<c:if test="${!empty zakaz}">
<table border="1">
    <tr>
        <th>id</th>
        <th>positionName</th>
        <th>dateStartPos</th>
        <%--<th>dateGotovPos</th>--%>
        <th>users_username</th>
        <th>positionState</th>
        <th>price
        <th>costMaterial</th>
        <th>costNoMaterial</th>
        <th>coment</th>
    </tr>
    <c:forEach items="${zakaz.positionList}" var="positionList">
    <tr>



        <td>${positionList.id}</td>
        <%--<td>${positionList.positionName}</td>--%>
        <td><a href="<c:url value='/positionData/${positionList.id}'/>" target="_blank"> ${positionList.positionName}</a></td>
        <td>${positionList.dateStartPos}</td>
        <%--<td>${positionList.dateGotovPos}</td>--%>
        <td>${positionList.users_username}</td>
        <td>${positionList.positionState}</td>
        <td>${positionList.price}</td>
        <td>${positionList.costMaterial}</td>
        <td>${positionList.costNoMaterial}</td>
        <td>${positionList.coment}</td>
    </tr>
    </c:forEach>
</table>
</c:if>
</body>
</html>
