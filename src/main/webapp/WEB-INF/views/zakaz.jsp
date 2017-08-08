<%--Created by IntelliJ IDEA. User: Vova  Date: 19.07.2017  Time: 19:47--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Заказы</title>
</head>
<body>
<h1>Заказы</h1>

<a href="${contextPath}/zakaz/add">Добавить новый заказ</a>

<script src="${contextPath}/resources/date.format.js"></script>
<!--
<p> JS дата
    <script>
        var now = new Date();
        //        var fmtNow = text(now.format("yyyy-mm-dd HH:MM:ss"));
        document.write ("<br> 1)  " )
        document.write ((now.format("yyyy-mm-dd HH:MM:ss")));
        document.write ("<br> 2")
        //        document.write (fmtNow);
    </script>
</p>
<!--


<!-- Основная таблица -->
<c:if test="${!empty zakazList}">
    <div>
        <table border="1">
            <thead><!--Шапка -->
            <tr>
                <th>ID</th>
                <th>ФИО клиента</th>
                <th>Позиции заказа</th>
                <th>Дата получения заказа</th>
                <th>Дата изменения заказа</th>
                <th>Статус заказа</th>
                <th>Цена для клиента</th>
                <th>Предварительная калькуляция</th>
                <th>Окончательная калькуляция</th>
                <th>Сотрудник</th>
                <th>Комментарий</th>
                <th>удалить заказ</th>

            </tr>
            </thead><!--/Шапка -->
            <tbody>
            <c:forEach items="${zakazList}" var="zakazList">
                <tr>
                    <td>${zakazList.id}</td>
                    <td>${zakazList.clients_FIO}</td>
                    <td><a href="<c:url value='/zakazData/${zakazList.id}'/>" target="_blank"> ${zakazList.str_position_name}</a></td>
                    <td><fmt:formatDate value="${zakazList.dateStartZ}" pattern="yyyy-MM-dd"/> </td>
                    <td>${zakazList.dateChangeZ}</td>
                    <td>${zakazList.zakazState}</td>
                    <td>${zakazList.price}</td>
                    <td>${zakazList.rpeCost}</td>
                    <td>${zakazList.postCost}</td>
                    <td>${zakazList.sotrFio}</td>
                    <td>${zakazList.coment}</td>
                    <td><a href="<c:url value='/zakaz/remove/${zakazList.id}'/>">удалить</a></td>


                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- КОНЕЦ Основная таблица -->
</c:if>
<%--вырезал отсюда и вставил на страницу zakazAdd.jsp--%>
</body>
</html>
