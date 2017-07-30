<%--  Date: 30.07.2017  Time: 0:00--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="select" uri="http://www.springframework.org/tags/form"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>добавление заказа</title>
    <%@ include file = "jspf/head.jspf"%>

</head>
<body
<c:url var="addAction" value="/zakazAdd"/>
    <form:form action="${addAction}" commandName="zakaz">
        <%--<jsp:useBean id="zakaz" scope="request" type="net.proselyte.springsecurityapp.model.Zakaz"/>--%>
        <c:if test="${!empty zakaz.clients_FIO}">
            <form:input path="id" readonly="true" class="form-control"  disabled="true"/>
        </c:if>
        <p>clients_id  <form:input path="clients_id"  id="clients_id" placeholder="clients_id" type="text" /></p>
        <p>clients_FIO <form:input path="clients_FIO" autocomplete="true" placeholder="clients_FIO" type="text" /></p>
        <p>dateStartZ  <form:input path="dateStartZ"  placeholder="dateStartZ" type="text" /></p>
        <p>dateChangeZ <form:input path="dateChangeZ" placeholder="dateChangeZ" type="text" /></p>
        <p>dateGotovZ  <form:input path="dateGotovZ"  placeholder="dateGotovZ" type="text" /></p>
        <p>dateCloseZ  <form:input path="dateCloseZ"  placeholder="dateCloseZ" type="text" /></p>
        <p>zakazState  <form:input path="zakazState"  placeholder="zakazState" type="text" /></p>
        <p>price       <form:input path="price"       placeholder="price"      type="text" /></p>
        <p>rpeCost     <form:input path="rpeCost"     placeholder="rpeCost"    type="text" /></p>
        <p>postCost    <form:input path="postCost"    placeholder="postCost"   type="text" /></p>
        <p>sotrFio     <form:input path="sotrFio"     placeholder="sotrFio"    type="text" /></p>
        <p>coment      <form:input path="coment"      placeholder="coment"     type="text" /></p>
        <%--submit--------------------------------------------------------%>
            <c:if test="${empty zakaz.clients_FIO}">
                <button type="submit"  >Сохранить</button>
            </c:if>
        <%----------------------------------------------------------%>
    </form:form>
</body>
</html>