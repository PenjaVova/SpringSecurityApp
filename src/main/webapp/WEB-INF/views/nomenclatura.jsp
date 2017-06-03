<%--Date: 31.05.2017  Time: 22:28--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"    uri="http://www.springframework.org/tags" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%--<%@ page session="false" %>--%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Номенклатура</title>
    <link rel="icon" type="image/x-icon"
          href="<s:url value="/resources/dist/img/favicon.ico"/>" />
    <%@ include file = "jspf/head.jspf"%>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}welcome.jsp">На главную</a>
Nomenclatura

<br/>
<br/>

<h1>Справочник номенклатура</h1>

<c:if test="${!empty listNomenclatura}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">nom_gruppa</th>
            <th width="120">nom_elem</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listNomenclatura}" var="nomenclatura">
            <tr>
                <td>${nomenclatura.id}</td>
                <td><a href="/nomenclatura.jsp/${nomenclatura.id}" target="_blank">${nomenclatura.nom_gruppa}</a></td>
                <td>${nomenclatura.nom_elem}</td>
                <td><a href="<c:url value='/edit/${nomenclatura.id}'/>">изменить</a></td>
                <td><a href="<c:url value='/remove/${nomenclatura.id}'/>">удалить</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
