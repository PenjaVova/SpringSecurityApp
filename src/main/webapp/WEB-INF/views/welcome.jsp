<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Главная</title>
    <link rel="icon" type="image/x-icon"
          href="<s:url value="/resources/dist/img/favicon.ico"/>" />
    <%@ include file = "jspf/head.jspf"%>
</head>

<body style="height: auto;" class="skin-blue sidebar-mini">
<div style="height: auto;" class="wrapper">

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
          <p>Константин</p>
          <p>Михальченко</p>
          
        </div>
      </div>

<!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">Меню Сайта</li>
            <!-- Optionally, you can add icons to the links -->
            <li class=""><a href="${contextPath}/AutocompleteNomenclatura"><i class="fa  fa-cirlce"></i> <span>AutocompleteNomenclatura</span></a></li>
            <li class=""><a href="${contextPath}/client"><i class="fa  fa-meh-o"></i> <span>Клиенты</span></a></li>
            <li class=""><a href="${contextPath}/nomenclatura"><i class="fa fa-navicon"></i> <span>Номенклатура</span></a></li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Заказы</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul style="display: none;" class="treeview-menu">
                    <li class=""><a href="${contextPath}/zakaz"><i class="fa fa-cirle"></i> <span>Заказы</span></a></li>
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
        Заголовок на странице
        <small>описание функционала</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->

</div>
<!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS
jQuery 2.2.3 -->
<script src="${contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${contextPath}/resources/dist/js/app.min.js"></script>

</body>
</html>