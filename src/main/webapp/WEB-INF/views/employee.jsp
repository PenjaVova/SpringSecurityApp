<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page session="false" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Сотрудники</title>
    <link rel="icon" type="image/x-icon" href="<s:url value="/resources/dist/img/favicon.ico"/>" />
    <%@ include file = "jspf/head.jspf"%>

    <!-- DataTables -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/datatables/dataTables.bootstrap.css">

    <!-- bootstrap datepicker -->
    <script rel="${contextPath}/resources/plugins/datepicker/datepicker3.css"></script>

    <!-- jQuery 2.2.3 -->
    <script src="${contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${contextPath}/resources/plugins/jQueryUI/jquery-ui.min.js"></script>

    <!-- daterange picker -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/datepicker/datepicker3.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/select2/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${contextPath}/resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${contextPath}/resources/dist/css/skins/_all-skins.min.css">

    <%--перевод календаря на русский--%>
    <script src="${contextPath}/resources/plugins/datepicker/locales/bootstrap-datepicker.ru.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker(
                    {
                        isRTL: false,
                        format: 'yyyy-mm-dd',
                        autoclose:true,
                        language: 'ru'
                    }


            );
        } );
    </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <!--
    <body style="height: auto;" class="skin-blue sidebar-mini">
    <div style="height: auto;" class="wrapper">
    -->
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="${contextPath}/welcome" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>MK</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>ЧП Михальченко</b></span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- User Image -->
                                                <img src="${contextPath}/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <!-- Message title and timestamp -->
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->

                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button -->
                        <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li><!-- start notification -->
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button -->
                        <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="${contextPath}/resources/dist/img/kos_.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">Константин Михальченко</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="${contextPath}/resources/dist/img/kos_.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${pageContext.request.userPrincipal.name}
                                    <small>хозяин :) </small>
                                </p>
                            </li>
                            <!-- Menu Body -->

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Изменить данные</a>
                                </div>
                                <div class="pull-right">
                                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                                        <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        </form>

                                        <div class="pull-right">
                                            <a onclick="document.forms['logoutForm'].submit()" class="btn btn-default btn-flat">
                                                Выйти
                                            </a>
                                        </div>
                                    </c:if>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->

                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${contextPath}/resources/dist/img/kos_.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${pageContext.request.userPrincipal.name}</p> <%--имя пользователя--%>

                </div>
            </div>

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="header">Меню Сайта</li>
                <!-- Optionally, you can add icons to the links -->
                <li class=""><a href="${contextPath}/client"><i class="fa  fa-meh-o"></i> <span>Клиенты</span></a></li>
                <li class=""><a href="${contextPath}/nomenclatura"><i class="fa fa-navicon"></i> <span>Номенклатура</span></a></li>

                <li class="treeview">
                    <a href="#"><i class="fa fa-link"></i> <span>Заказы</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul style="display: none;" class="treeview-menu">
                        <li><a href="">Заказы в работе</a></li>
                        <li><a href="#">Добавить новый заказ</a></li>
                    </ul>
                </li>

                <li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li>
                <!--СОГЛАСОВАНИЕ-->
                <li class="treeview">
                    <a href="#"><i class="fa fa-link"></i> <span>Согласование</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul style="display: none;" class="treeview-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i> <span>Калькуляции</span>
                                <span class="pull-right-container">
              <small class="label pull-right bg-red">5</small>
            </span>
                            </a>
                        </li>
                        <!--закупка-->
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i> <span>закупки</span>
                                <span class="pull-right-container">
					<small class="label pull-right bg-yellow">12</small>
					</span>
                            </a>
                        </li>
                        <!--конец закупка-->
                        <!--еще ЧТО-то-->
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i> <span>еще что-то</span>
                                <span class="pull-right-container">
					<small class="label pull-right bg-green">12</small>
					</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <!--КОНЕЦ СОГЛАСОВАНИЕ-->
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div style="min-height: 815px;" class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Сотрудники
                <small>...</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content" >
            <div class="row">
                <div class="col-xs-12">
                    <!------------------------------------------------------>
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Список сотрудников</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Свернуть">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Скрыть">
                                    <i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- Основная таблица -->
                        <c:if test="${!empty listEmployee}">
                            <div class="box-body">
                                <table id="example" class="table table-bordered table-striped">
                                    <thead><!--Шапка -->
                                    <tr>
                                        <th>ID</th>
                                        <th>ФИО Сотрудника</th>
                                        <th>Должность</th>
                                        <th>№ телефона</th>
                                        <th>Дата рождения</th>
                                        <th>Изменить</th>
                                    </tr>
                                    </thead><!--/Шапка -->
                                    <tbody>
                                    <c:forEach items="${listEmployee}" var="employee">
                                        <tr>
                                            <td>${employee.id}</td>
                                            <td>${employee.fio}</td>
                                            <td>${employee.posit}</td>
                                            <td>${employee.phone}</td>
                                            <td>${employee.birthday}</td>
                                            <td><a href="<c:url value='/employee/edit/${employee.id}'/>">изменить</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>ФИО Сотрудника</th>
                                        <th>Должность</th>
                                        <th>№ телефона</th>
                                        <th>Дата рождения</th>
                                        <th>Изменить</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- КОНЕЦ Основная таблица -->
                        </c:if>
                    </div><!-- /.box -->
<!--Добавить Сотрудника---------------------------------------------------->
                    <div class="box">
                        <div class="box-header">
                            <!--box-title-->
                            <c:if test="${!empty employee.fio}">
                                <h3 class="box-title">Изменить данные по клиенту</h3>
                            </c:if>
                            <c:if test="${empty employee.fio}">
                                <h3 class="box-title">Добавить сотрудника</h3>
                            </c:if>
                            <!--/box-title-->
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Свернуть">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Скрыть">
                                    <i class="fa fa-times"></i></button>
                            </div>
                        </div>

                    <c:url var="addAction" value="/employee/add"/>
                        <div class="box-body">
                    <form:form action="${addAction}" commandName="employee">
                        <%--<table>--%>
<%--1 id--%>
                        <c:if test="${!empty employee.fio}">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"  path="id">ID</label>
                                    <div class="col-sm-2">
                                        <form:input path="id" readonly="true" class="form-control"  disabled="true"/>
                                        <form:hidden path="id"/>
                                    </div>
                                </div>
                            </div>
                        </c:if>
<%--2 fio--%>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="fio" class="col-sm-2 control-label">ФИО сотрудника</label>

                                <div class="col-sm-10">
                                    <form:input path="fio" placeholder="Введите полное ФИО клиента" class="form-control" type="text" />
                                </div>
                            </div>
                        </div>
<%--3 state Должность--%>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="posit" class="col-sm-2 control-label">Должность</label>

                                <div class="col-sm-10">
                                    <form:select path="posit" class="form-control" >
                                        <form:option value="бухгалтер"/>
                                        <form:option value="вебразработчик"/>
                                        <form:option value="водитель-монтажник"/>
                                        <form:option value="дизайнер"/>
                                        <form:option value="дизайнер-проектант"/>
                                        <form:option value="дизайнер-художник"/>
                                        <form:option value="зав.складом"/>
                                        <form:option value="зам.директора"/>
                                        <form:option value="кузнец"/>
                                        <form:option value="маляр"/>
                                        <form:option value="механик"/>
                                        <form:option value="монтажник"/>
                                        <form:option value="монтажник, слесарь"/>
                                        <form:option value="нач. участка малярки"/>
                                        <form:option value="нач.цеха"/>
                                        <form:option value="плазма"/>
                                        <form:option value="плазма, оператор"/>
                                        <form:option value="плазменщик"/>
                                        <form:option value="резчик"/>
                                        <form:option value="плазменщик"/>
                                        <form:option value="сборщик"/>
                                        <form:option value="сварщик"/>
                                        <form:option value="сварщик-сборщик"/>
                                        <form:option value="сварщик-сборщик (монтажник)"/>
                                        <form:option value="слесарь"/>
                                        <form:option value="снабжение"/>
                                        <form:option value="студент-слесарь"/>
                                    </form:select>
                            </div>
                        </div>
                    </div>

<%--4 address--%>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="address" class="col-sm-2 control-label">Адрес</label>

                                <div class="col-sm-10">
                                    <form:input path="address" placeholder="Адрес" class="form-control" type="text" />
                                </div>
                            </div>
                        </div>

<%--6 state --%>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="state" class="col-sm-2 control-label">Статус</label>

                                    <div class="col-sm-10">
                                        <form:select path="state" class="form-control" >
                                            <form:option value="болеет"/>
                                            <form:option value="декрет"/>
                                            <form:option value="отгул"/>
                                            <form:option value="отсутствует"/>
                                            <form:option value="работает"/>
                                            <form:option value="уволен"/>
                                        </form:select>
                                    </div>
                                </div>
                            </div>

<%--7 familiia--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="familiia" class="col-sm-2 control-label">Фамилия</label>

                                        <div class="col-sm-10">
                                            <form:input path="familiia" placeholder="Фамилия" class="form-control" type="text" />
                                        </div>
                                    </div>
                                </div>

<%--8 Имя--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="name" class="col-sm-2 control-label">Имя</label>

                                        <div class="col-sm-10">
                                            <form:input path="name" placeholder="Имя (полностью)" class="form-control" type="text" />
                                        </div>
                                    </div>
                                </div>

<%--9 otchestvo--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="otchestvo" class="col-sm-2 control-label">Отчество</label>

                                        <div class="col-sm-10">
                                            <form:input path="otchestvo" placeholder="Отчество" class="form-control" type="text" />
                                        </div>
                                    </div>
                                </div>

<%--10 birthday--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="birthday" class="col-sm-2 control-label">Дата рождения</label>

                                        <div class="col-sm-10">
                                            <div class="input-group date">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <form:input path="birthday" class="form-control pull-right" id="datepicker" type="text" autocomplete="false"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

<%--11 email--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="email" class="col-sm-2 control-label">email</label>

                                        <div class="col-sm-10">
                                            <form:input path="email" placeholder="" class="form-control" type="email" />
                                        </div>
                                    </div>
                                </div>

<%--12 comment--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="comment" class="col-sm-2 control-label">Примечание</label>

                                        <div class="col-sm-10">
                                            <form:input path="comment" placeholder="max. 250 символов" class="form-control" type="text" />
                                        </div>
                                    </div>
                                </div>
<%--13 isp_obiaz--%>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="isp_obiaz" class="col-sm-2 control-label">Исполняет обязанности</label>

                                        <div class="col-sm-10">
                                            <form:input path="isp_obiaz" placeholder="id отсутствуещего сотрудника" class="form-control" type="text" />
                                        </div>
                                    </div>
                                </div>
<%--submit--------------------------------------------------------%>
                        <div colspan="2">
                            <c:if test="${!empty employee.fio}">
                                <button type="submit"  class="btn btn-info pull-right">Сохранить изменения</button>
                            </c:if>
                            <c:if test="${empty employee.fio}">
                                <button type="submit"  class="btn btn-info pull-right">Сохранить нового сотрудника</button>
                            </c:if>

                            <a href="<c:url value='/employee'/>" class="btn btn-info pull-left">Отмена</a>
                        </div>
<%----------------------------------------------------------%>
                    </form:form>
                        </div><!--box-body-->
                </div><!--box-->
<!--КОНЕЦ Добавить Сотрудника---------------------------------------------->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section> <!-- /.content-wrapper -->

    </div>

    <!-- ./wrapper -->
    <!-- REQUIRED JS SCRIPTS-->
    <script src="${contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- jQuery 2.2.3 -->
    <script src="${contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${contextPath}/resources/plugins/jQueryUI/jquery-ui.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="${contextPath}/resources/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${contextPath}/resources/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="${contextPath}/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="${contextPath}/resources/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="${contextPath}/resources/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${contextPath}/resources/dist/js/demo.js"></script>

    <!-- bootstrap datepicker -->
    <script src="${contextPath}/resources/plugins/datepicker/bootstrap-datepicker.js"></script>

    <!-- применяет к таблице плагин и перевод на русский язык -->
    <script>
        $(function () {
            $("#example").DataTable(
                    {
                        language: {
                            "processing": "Подождите...",
                            "search": "Поиск:",
                            "lengthMenu": "Показать _MENU_ записей",
                            "info": "Записи с _START_ до _END_ из _TOTAL_ записей",
                            "infoEmpty": "Записи с 0 до 0 из 0 записей",
                            "infoFiltered": "(отфильтровано из _MAX_ записей)",
                            "infoPostFix": "",
                            "loadingRecords": "Загрузка записей...",
                            "zeroRecords": "Записи отсутствуют.",
                            "emptyTable": "В таблице отсутствуют данные",
                            "paginate": {
                                "first": "Первая",
                                "previous": "Предыдущая",
                                "next": "Следующая",
                                "last": "Последняя"
                            },
                            "aria": {
                                "sortAscending": ": активировать для сортировки столбца по возрастанию",
                                "sortDescending": ": активировать для сортировки столбца по убыванию"
                            }
                        }
                    }
            );
        });
    </script>
    <%--перевод календаря на русский--%>
    <script src="${contextPath}/resources/plugins/datepicker/locales/bootstrap-datepicker.ru.js"></script>

</div>
</body>
</html>
