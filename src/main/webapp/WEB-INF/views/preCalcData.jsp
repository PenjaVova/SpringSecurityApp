<%--  Date: 25.07.2017  Time: 20:51--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Калькуляция № ${preCalcData.id} </title>
</head>
<body>
<h1>Калькуляция № ${preCalcData.id} </h1>
<h3>Позиция заказа: ${preCalcData.position_id}</h3>
<p>users_username = ${preCalcData.users_username};</p>
<p>pre_calcState = ${preCalcData.pre_calcState};</p>
<p>dateStartCalc = ${preCalcData.dateStartCalc};</p>
<p>dateChangeCalc = ${preCalcData.dateChangeCalc};</p>
<p>materialCost = ${preCalcData.materialCost};</p>
<p>materialCost = ${preCalcData.materialCost};</p>
<p>mcoment = ${preCalcData.coment};</p>
<!-- Основная таблица -->
<c:if test="${!empty preCalcData}">
    <table border="1">
        <tr>
            <th>id</th>
            <th>nom_elem</th>
            <th>edinIzmer</th>
            <th>materialCount</th>
            <th>materialCost</th>
            <th>Cost</th>
        </tr>
        <c:forEach items="${preCalcData.materialsList}" var="materialsList">
            <%--<c:set var="preCalс" value="${zakazPosition.preCalcList}"></c:set>--%>
            <tr>
                <td>${materialsList.id} </td>
                <td>${materialsList.nom_elem}</td>
                <td>${materialsList.edinIzmer}</td>
                <td>${materialsList.materialCount}</td>
                <td>${materialsList.materialCost}</td>
                <td>${materialsList.cost}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
