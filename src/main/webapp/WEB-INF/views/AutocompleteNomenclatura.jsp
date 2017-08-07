<%@ page import="org.hibernate.Session" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>

<head>
    <title>autocomleteNom</title>
    <!-- jQuery 2.2.3 -->
    <script src="${contextPath}/resources/plugins/jQuery/jquery.1.10.2.min.js"></script>
    <script src="${contextPath}/resources/plugins/jQuery/jquery.autocomplete.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${contextPath}/resources/dist/js/app.min.js"></script>
</head>

<body>
<h2>autocomleteNom</h2>

<div>
    <input type="text"  id="w-input-search" value="">
    <span>
	  <button id="button-id" type="button">Ок</button>
	</span>
</div>

<script>
    $(document).ready(function() {

        $('#w-input-search').autocomplete({
            serviceUrl: '${pageContext.request.contextPath}/getTags',
            paramName: "tagName",
            delimiter: ",",
            transformResult: function(response) {

                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                                            return { value: item.tagName, data: item.id };
                                            }
                                        )
                    };
            }

        });

    });
</script>
</body>
</html>