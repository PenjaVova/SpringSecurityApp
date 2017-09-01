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
<h1>zakaz_id № ${zakaz_id}</h1>
<h2>Клиент ${zakaz.clients_FIO}</h2>
<h2>Дизанер ${zakaz.sotrFio}</h2>

<!-- Основная таблица -->
<c:if test="${!empty positionList}">
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
<!-- КОНЕЦ Основная таблица -->


    <h3 >Добавить позицию в заказ</h3>

<c:url var="addAction" value="/zakazData/${zakaz_id}"/>
<div class="box-body">
    <form:form action="${addAction}" commandName="zakazPosition">

        <p>id             <form:input path="id"             id="id"             placeholder="id"             type="number" disabled="true"/></p>
        <p>zakaz_id       <form:input path="zakaz_id"       id="zakaz_id"       placeholder="zakaz_id"       type="number" disabled="true"/></p>
        <p>positionName   <form:input path="positionName"   id="positionName"   placeholder="positionName"   type="text"   required = "true"/></p>
        <p>vidIzdeliya    <form:input path="vidIzdeliya"    id="vidIzdeliya"    placeholder="vidIzdeliya"    type="text"   required = "true"/></p>
        <p>materialCount  <form:input path="materialCount"  id="materialCount"  placeholder="materialCount"  type="number" required = "true"/></p>
        <p>dateStartPos   <form:input path="dateStartPos"   id="dateStartPos"   placeholder="dateStartPos"   type="date" /></p>
        <p>dateChangePos  <form:input path="dateChangePos"  id="dateChangePos"  placeholder="dateChangePos"  type="date" /></p>
        <p>dateGotovPos   <form:input path="dateGotovPos"   id="dateGotovPos"   placeholder="dateGotovPos"   type="date"/></p>
        <p>users_id       <form:input path="users_id"       id="users_id"       placeholder="users_id"       type="number"/></p>
        <p>users_username <form:input path="users_username" id="users_username" placeholder="users_username" type="text"/></p>
        <p>positionState  <form:input path="positionState"  id="positionState"  placeholder="positionState"  type="text"/></p>
        <p>price          <form:input path="price"          id="price"          placeholder="price"          type="number" /></p>
        <p>costMaterial   <form:input path="costMaterial"   id="costMaterial"   placeholder="costMaterial"   type="number"/></p>
        <p>costNoMaterial <form:input path="costNoMaterial" id="costNoMaterial" placeholder="costNoMaterial" type="number"/></p>
        <p>coment         <form:input path="coment"         id="coment"         placeholder="coment"         type="text"/></p>
        <%--positionName-------------------------------------------------------
        <div class="form-horizontal">
            <div class="form-group">
                <label for="positionName" class="col-sm-2 control-label">positionName</label>

                <div class="col-sm-10">
                    <form:input path="positionName"/>
                </div>
            </div>
        </div>--%>

        <%--submit--------------------------------------------------------%>
        <div colspan="2">
            <c:if test="${!empty positionList[0].positionName}">
                <button type="submit"  class="btn btn-info pull-right">Сохранить изменения</button>
            </c:if>
            <c:if test="${empty positionList[0].positionName}">
                <button type="submit"  class="btn btn-info pull-right">Добавить позицию</button>
            </c:if>
        </div>
        <%----------------------------------------------------------%>
    </form:form>
</div> <!-- /"box-body"-->

</body>
</html>
