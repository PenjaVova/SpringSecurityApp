<%--Date: 22.07.2017 : 19:37--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Заказ № ${zakaz.id}</title>
</head>
<body>
<h1>Заказ № ${zakaz_id}</h1>
<h2>ФИО клиента: ${zakaz.clients_FIO}</h2>
<h2>Ответственный сотрудник: ${zakaz.sotrFio}</h2>

<!-- Основная таблица -->
<c:if test="${!empty positionList}">
<table border="1">
    <tr>
        <th>№</th>
        <th>Наименование позиции</th>
        <th>Дата начала</th>
        <%--<th>dateGotovPos</th>--%>
        <th>ФИО Сотрудника</th>
        <th>Статус позиции</th>
        <th>Цена для клиента</th>
        <th>Стоимость осн. материалов</th>
        <th>Стоимость расходников</th>
        <th>Комментарий</th>
        <th>Удалить позицию</th>
        <th>id</th>
    </tr>
    <c:forEach items="${zakaz.positionList}" var="positionList" varStatus="positionListCount">
    <tr>

        <td>${positionListCount.count}</td>
        <%--<td>${positionList.positionName}</td>--%>
        <td><a href="<c:url value='/positionData/${positionList.id}'/>" target="_blank"> ${positionList.positionName}</a></td>
        <td><fmt:formatDate value="${positionList.dateStartPos}" pattern="yyyy-MM-dd"/> </td>
        <%--<td>${positionList.dateGotovPos}</td>--%>
        <td>${positionList.users_username}</td>
        <td>${positionList.positionState}</td>
        <td>${positionList.price}</td>
        <td>${positionList.costMaterial}</td>
        <td>${positionList.costNoMaterial}</td>
        <td>${positionList.coment}</td>
        <td><a href="<c:url value='/zakazData/${zakaz.id}/remove/${positionList.id}'/>">удалить</a></td>
        <td>${positionList.id}</td>
    </tr>
    </c:forEach>
</table>
</c:if>
<!-- КОНЕЦ Основная таблица -->


<fieldset><legend><h3>Добавить позицию в заказ</h3></legend>

<c:url var="addAction" value="/zakazData/${zakaz_id}"/>
<div class="box-body">
    <form:form action="${addAction}" commandName="zakazPosition">

        <!--id--->             <form:input path="id"             id="id"             placeholder="id"             type="number" disabled="true" hidden = "true"/>
        <p>Наименование позиции    <form:input path="positionName"   id="positionName"   placeholder="positionName"   type="text"   required = "true"/></p>
        <fieldset><legend>Для расчета расходников</legend>
            Вид изделия     <form:select path="vidIzdeliya"    id="vidIzdeliya" required = "true">
                                    <form:option value="прочее"/>
                                    <form:option value="Ворота"/>
                                    <form:option value="Лестница"/>
                                    <form:option value="Перила"/>
                                </form:select>
            Кол-во изделий  <form:input path="materialCount"  id="materialCount"  placeholder="materialCount"  type="numeric"/>
            Ед. измерения   <form:select path="edinIzmer"  id="edinIzmer">
                                    <form:option value="м"/>
                                    <form:option value="м2"/>
                                    <form:option value="шт"/>
                                    <form:option value="л"/>
                                </form:select>
        </fieldset>
        <%--<p>Дата начала      <form:input path="dateStartPos"   id="dateStartPos"   placeholder="Дата начала"    type="date" disabled="true"/></p>--%>
        <!--<p>Дата изменения--->   <form:input path="dateChangePos"  id="dateChangePos"  placeholder="Дата изменения" type="date" disabled="true" hidden = "true"/>
        <!--<p>Дата готовности--->  <form:input path="dateGotovPos"   id="dateGotovPos"   placeholder="dateGotovPos"   type="date" disabled="true" hidden = "true"/>
        <%--<p>id сотрудника    <form:input path="users_id"       id="users_id"       placeholder="users_id"       type="number"/></p>--%>
        <p>ФИО Сотрудника   <form:input path="users_username" id="users_username" placeholder="users_username" type="text"/></p>
        <p>Статус позиции
                            <form:select path="positionState"  id="positionState" required = "true">
                                <form:option value="Новый"/>
                                <form:option value="Разработка дизайна"/>
                                <form:option value="Клиент думает"/>
                                <form:option value="Согласование"/>
                                <form:option value="Производство"/>
                                <form:option value="В малярке"/>
                                <form:option value="Изделия готовы"/>
                                <form:option value="Закрыта"/>
                            </form:select>

        <p>Цена для клиента <form:input path="price"          id="price"          placeholder="price"          type="number" /></p>
        <p>Стоимость осн.
           материалов       <form:input path="costMaterial"   id="costMaterial"   placeholder="costMaterial"   type="number"/></p>
        <p>Стоимость расходников <form:input path="costNoMaterial" id="costNoMaterial" placeholder="costNoMaterial" type="number"/></p>
        <p>Комментарий <form:textarea path="coment"         id="coment"         placeholder="максимум 255 символов"/></p>
</fieldset>
        <%--submit--------------------------------------------------------%>
        <div colspan="2">
            <c:if test="${!empty positionList[0].positionName}">
                <button type="submit"  class="btn btn-info pull-right">Сохранить позицию</button>
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
