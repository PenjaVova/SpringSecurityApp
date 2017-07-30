<%--Created by IntelliJ IDEA. User: Vova  Date: 19.07.2017  Time: 19:47--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Заказы</title>
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
                <th>Позиции заказа</th>
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
                    <td><a href="<c:url value='/zakazData/${zakazList.id}'/>" target="_blank"> ${zakazList.str_position_name}</a></td>
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

<p><h1>добавить заказ</h1></p>
<c:url var="addAction" value="/zakaz/add"/>
<form:form action="${addAction}" commandName="zakaz">
    <%--<jsp:useBean id="zakaz" scope="request" type="net.proselyte.springsecurityapp.model.Zakaz"/>--%>
    <%--<c:if test="${!empty zakaz.clients_FIO}">--%>
        <%--<form:input path="id" readonly="true" class="form-control"  disabled="true"/>--%>
    <%--</c:if>--%>
    <c:if test="${!empty zakaz.clients_FIO}">
        <label path="id">ID</label>
        <form:input path="id" readonly="true" class="form-control"  disabled="true"/>
        <form:hidden path="id"/>
    </c:if>
    <p>clients_id  <form:input path="clients_id"  id="clients_id" placeholder="clients_id" type="text" /></p>
    <p>clients_FIO <form:input path="clients_FIO" autocomplete="true" placeholder="clients_FIO" type="text" /></p>
    <p>dateStartZ  <form:input path="dateStartZ"  placeholder="dateStartZ" type="date" /></p>
    <p>dateChangeZ <form:input path="dateChangeZ" placeholder="dateChangeZ" type="date" /></p>
    <p>dateGotovZ  <form:input path="dateGotovZ"  placeholder="dateGotovZ" type="date" /></p>
    <p>dateCloseZ  <form:input path="dateCloseZ"  placeholder="dateCloseZ" type="date" /></p>
    <p>zakazState  <form:input path="zakazState"  placeholder="zakazState" type="date" /></p>
    <p>price       <form:input path="price"       placeholder="price"      type="number" /></p>
    <p>rpeCost     <form:input path="rpeCost"     placeholder="rpeCost"    type="number" /></p>
    <p>postCost    <form:input path="postCost"    placeholder="postCost"   type="number" /></p>
    <p>sotrFio     <form:input path="sotrFio"     placeholder="sotrFio"    type="text" /></p>
    <p>coment      <form:input path="coment"      placeholder="coment"     type="text" /></p>
    <%--submit--------------------------------------------------------%>
    <%--<c:if test="${empty zakaz.clients_FIO}">--%>
        <button type="submit"  >Сохранить</button>
    <%--</c:if>--%>
    <%----------------------------------------------------------%>
</form:form>
</body>
</html>
