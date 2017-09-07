<%--  Date: 30.07.2017  Time: 0:00--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>добавление заказа</title>
    <%@ include file = "jspf/head.jspf"%>
    <!-- jQuery 2.2.3 -->
    <script src="${contextPath}/resources/plugins/jQuery/jquery.1.10.2.min.js"></script>
    <script src="${contextPath}/resources/plugins/jQuery/jquery.autocomplete.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${contextPath}/resources/dist/js/app.min.js"></script>

    <script type="text/css">
        .autocomplete-suggestions { border: 1px solid #999; background: #FFF; overflow: auto; }
        .autocomplete-suggestion { padding: 5px 5px; white-space: nowrap; overflow: hidden; font-size:22px}
        .autocomplete-selected { background: #F0F0F0; }
        .autocomplete-suggestions strong { font-weight: bold; color: #3399FF; }
    </script>
</head>
<body>

<h1>добавить заказ</h1>

<c:url var="addAction" value="/zakaz/add"/>
<form:form action="${addAction}" commandName="zakaz">
    <%--   <c:if test="${!empty zakaz.clients_FIO}">
           <label path="id">ID</label>
           <form:input path="id" readonly="true" class="form-control"  disabled="true"/>
           <form:hidden path="id"/>
       </c:if> --%>
    <form:input path="clients_id"  id="clients_id" type="number" hidden="true" readonly="true"/>
    <p>ФИО клиента <form:input path="clients_FIO" id="clients_FIO" placeholder="Фамилия клиента" type="text" required = "true"/></p>
    <%--<p>dateStartZ  <form:input path="dateStartZ"  placeholder="dateStartZ"  type="date" /></p>
    <%--<p>dateChangeZ <form:input path="dateChangeZ" placeholder="dateChangeZ" type="date" /></p>
    <%--<p>dateGotovZ  <form:input path="dateGotovZ"  placeholder="dateGotovZ" type="date" /></p>
    <%--<p>dateCloseZ  <form:input path="dateCloseZ"  placeholder="dateCloseZ" type="date" /></p>--%>
    <p>Состояние заказа  <form:select path="zakazState"  placeholder="zakazState" type="text">
                        <form:option value="Новый"/>
                        <form:option value="Разработка дизайна"/>
                        <form:option value="Клиент думает"/>
                        <form:option value="Согласование"/>
                        <form:option value="Производство"/>
                        <form:option value="В малярке"/>
                        <form:option value="Изделия готовы"/>
                        <form:option value="Заказ закрыт"/>
    </form:select></p>
    <p>Цена заказа       <form:input path="price"       placeholder="price"      type="number" /></p>
    <%--<p>rpeCost     <form:input path="rpeCost"     placeholder="rpeCost"    type="number" /></p>
    <%--<p>postCost    <form:input path="postCost"    placeholder="postCost"   type="number" /></p>
    <%--<p>sotrFio     <form:input path="sotrFio"     placeholder="sotrFio"    type="text" /></p>--%>
    <p>Комментарий      <form:textarea path="coment"      placeholder="coment"/></p>
    <%--submit--------------------------------------------------------%>
    <%--<c:if test="${empty zakaz.clients_FIO}">--%>
    <button type="submit">далее</button>
    <%--</c:if>--%>
    <%----------------------------------------------------------%>
</form:form>

<script>
    $(document).ready(function() {
        $('#clients_FIO').autocomplete({
            serviceUrl: '${pageContext.request.contextPath}/getTagClients',
            paramName: "tagName",
            transformResult: function(response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                                return { value: item.tagName, data: item.id};
                            }
                    )
                };
            },
            onSelect: function (suggestions) {
                //console.log(suggestions);
                $('#clients_id').val(suggestions.data);
            }
        });
    });
</script>
</body>
</html>