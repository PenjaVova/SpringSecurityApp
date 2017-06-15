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
    <title>Номенклатура</title>
    <link rel="icon" type="image/x-icon"
          href="<s:url value="/resources/dist/img/favicon.ico"/>" />
    <%@ include file = "jspf/head.jspf"%>
    <!-- DataTables -->
    <link rel="stylesheet" href="${contextPath}/resources/plugins/datatables/dataTables.bootstrap.css">

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
        <a href="/${contextPath}/welcome.jsp" class="logo">
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
                <li class=""><a href="${contextPath}/client"><i class="fa fa-link"></i> <span>Клиенты</span></a></li>
                <li class=""><a href="${contextPath}/nomenclatura"><i class="fa fa-link"></i> <span>Номенклатура</span></a></li>

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
                Номенклатура
                <small>Справочник мариалов</small>
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
                            <h3 class="box-title">Список элементов</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Свернуть">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Скрыть">
                                    <i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- Основная таблица -->
                        <c:if test="${!empty listNomenclatura}">
                            <div class="box-body">
                                <table id="example" class="table table-bordered table-striped">
                                    <thead><!--Шапка -->
                                    <tr>
                                        <th>ID</th>
                                        <th>Группа материалов</th>
                                        <th>Наименование</th>
                                        <th>Изменить</th>
                                        <th>Удалить</th>
                                    </tr>
                                    </thead><!--/Шапка -->
                                    <tbody>
                                    <c:forEach items="${listNomenclatura}" var="nomenclatura">
                                        <tr>
                                            <td>${nomenclatura.id}</td>
                                            <td>${nomenclatura.nom_gruppa}</td>
                                            <td><a href="<c:url value='/nomenclaturadata/${nomenclatura.id}'/>" target="_blank"> ${nomenclatura.nom_elem}</a></td>
                                            <td><a href="<c:url value='/edit/${nomenclatura.id}'/>">изменить</a></td>
                                            <td><a href="<c:url value='/nomenclatura/remove/${nomenclatura.id}'/>">удалить</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Группа материалов</th>
                                        <th>Наименование</th>
                                        <th>Изменить</th>
                                        <th>Удалить</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- КОНЕЦ Основная таблица -->
                        </c:if>
                    </div><!-- /.box -->
<!--Добавить элемент---------------------------------------------------->

                    <h1>Add a nomenclatura</h1>

                    <c:url var="addAction" value="/nomenclatura/add"/>

                    <form:form action="${addAction}" commandName="nomenclatura">
                        <table>
                            <c:if test="${!empty nomenclatura.nom_elem}">
                                <tr>
                                    <td>
                                        <form:label path="id">
                                            <spring:message text="ID"/>
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                                        <form:hidden path="id"/>
                                    </td>
                                </tr>
                            </c:if>
                            <tr>
                                <td>
                                    <form:label path="nom_gruppa">
                                        <spring:message text="nom_gruppa"/>
                                    </form:label>
                                </td>
                                <td>
                                    <form:input path="nom_gruppa"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <form:label path="nom_elem">
                                        <spring:message text="nom_elem"/>
                                    </form:label>
                                </td>
                                <td>
                                    <form:input path="nom_elem"/>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <c:if test="${!empty nomenclatura.nom_elem}">
                                        <input type="submit"
                                               value="<spring:message text="Сохранить изменения"/>"/>
                                    </c:if>
                                    <c:if test="${empty nomenclatura.nom_elem}">
                                        <input type="submit"
                                               value="<spring:message text="Сохранить новый элемент"/>"/>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                    </form:form>
<!--КОНЕЦ Добавить элемент------------------------------------------------>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section> <!-- /.content-wrapper -->

    </div>

    <!-- ./wrapper -->
    <!-- REQUIRED JS SCRIPTS
    jQuery 2.2.3 -->
    <script src="${contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
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
</div>
</body>
</html>