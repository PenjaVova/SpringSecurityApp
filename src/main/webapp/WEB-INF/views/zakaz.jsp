<%--Created by IntelliJ IDEA. User: Vova  Date: 19.07.2017  Time: 19:47--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>zakaz</title>
</head>
<body>
<h1>Заказы</h1>
<!-- Основная таблица -->
<c:if test="${!empty zakazList}">
    <div>
        <table border="1">
            <thead><!--Шапка -->
            <tr>
                <th>ID</th>
                <th>ФИО клиента</th>
                <th>Дата получения заказа</th>
                <th>Дата изменения заказа</th>
                <th>Статус заказа</th>
                <th>Цена для клиента</th>
                <th>Предварительная калькуляция</th>
                <th>Окончательная калькуляция</th>
                <th>Сотрудник</th>
                <th>Комментарий</th>

            </tr>
            </thead><!--/Шапка -->
            <tbody>
            <c:forEach items="${zakazList}" var="zakazList">
                <tr>
                    <td>${zakazList.id}</td>
                    <td>${zakazList.clients_FIO}</td>
                    <td>${zakazList.dateStartZ}</td>
                    <td>${zakazList.dateChangeZ}</td>
                    <td>${zakazList.zakazState}</td>
                    <td>${zakazList.price}</td>
                    <td>${zakazList.rpeCost}</td>
                    <td>${zakazList.postCost}</td>
                    <td>${zakazList.sotrFio}</td>
                    <td>${zakazList.coment}</td>
                </tr>
            </c:forEach>
            </tbody>

        </table>
    </div>
    <!-- КОНЕЦ Основная таблица -->
</c:if>
</body>
</html>
