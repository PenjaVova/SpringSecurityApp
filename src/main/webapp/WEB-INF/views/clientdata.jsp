<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>

<html>
<head>
    <title>nomenclaturaDATA</title>

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
<h1>Информация о клиенте</h1>

<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">FIO</th>
        <th width="120">phone</th>
        <th width="80">INN</th>
        <th width="120">fiz_ur</th>
        <th width="120">ACC</th>
        <th width="120">pasp</th>
        <th width="120">addr</th>
        <th width="120">koment</th>
    </tr>
    <tr>
        <td>${client.id}</td>
        <td>${client.fio}</td>
        <td>${client.phone}</td>
        <td>${client.inn}</td>
        <td>${client.fiz_ur}</td>
        <td>${client.acc}</td>
        <td>${client.pasp}</td>
        <td>${client.addr}</td>
        <td>${client.koment}</td>
    </tr>
</table>
</body>
</html>