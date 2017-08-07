<%--Date: 22.07.2017 : 19:37--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Заказ № ${zakazPosition.zakaz_id} ${zakazPosition.positionName}</title>
</head>
<body>
<h1>Заказ № ${zakazPosition.zakaz_id}</h1>
<h3>Калькуляции для заказа: ${zakazPosition.positionName}</h3>
<!-- Основная таблица -->
<c:if test="${!empty zakazPosition}">
    <table border="1">
        <tr>
            <th>id</th>
            <th>position_id</th>
            <th>users_username</th>
            <th>pre_calcState</th>
            <th>dateStartCalc</th>
            <th>materialCost</th>
            <%--<th>isCostReal</th>--%>
            <th>coment</th>
        </tr>
        <c:forEach items="${zakazPosition.preCalcList}" var="preCalс">
        <%--<c:set var="preCalс" value="${zakazPosition.preCalcList}"></c:set>--%>
            <tr>
                <td><a href="<c:url value='/preCalcData/${preCalс.id}'/>" target="_blank"> ${preCalс.id}</a></td>
                <td>${preCalс.position_id}</td>
                <td>${preCalс.users_username}</td>
                <td>${preCalс.pre_calcState}</td>
                <td>${preCalс.dateStartCalc}</td>
                <td>${preCalс.materialCost}</td>
                <%--<td>${preCalс.isCostReal}</td>--%>
                <td>${preCalс.coment}</td>

            </tr>
        </c:forEach>
    </table>
<%--<c:set var="preCalc" value="${zakazPosition.preCalcList[0].id}"> </c:set>--%>
<%--<c:redirect url='/preCalcData/${preCalc.id}'> </c:redirect>--%>
</c:if>
</body>
</html>