<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="app" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boot/css/bootstrap.css">
    <%-- 引入bootstrap核心 css --%>
    <link rel="stylesheet" href="${app}/boot/css/bootstrap.min.css">
    <%-- 引入jqGrid主题样式 --%>
    <link rel="stylesheet" href="${app}/jqGrid/css/css/cupertino/jquery-ui-1.8.16.custom.css">
    <%-- 引入jqGrid核心css --%>
    <link rel="stylesheet" href="${app}/jqGrid/css/ui.jqgrid.css">
    <%-- 引入jquery。js--%>
    <script src="${app}/boot/jquery-1.11.3.min.js"></script>
    <%-- 引入bootstrap核心js --%>
    <script src="${app}/boot/js/bootstrap.min.js"></script>
    <%-- 引入国际化js--%>
    <script src="${app}/jqGrid/js/i18n/grid.locale-cn.js"></script>
    <%-- 引入核心jqGridjs --%>
    <script src="${app}/jqGrid/js/jquery.jqGrid.src.js"></script>
    <title>Title</title>
</head>
<body>
    <!--导航条-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">后台系统管理 </a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">欢迎：小黑</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-hand-right"></span>退出登陆</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <!--
                左栏
             -->
            <div class="col-sm-2">
                <!-- 手风琴 -->
                <div class="panel-group" id="parent">
                    <!-- 用户 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <center>
                                <h3 class="panel-title">
                                    <a href="#first" data-toggle="collapse" data-parent="#parent">
                                        用户管理
                                    </a>
                                </h3>
                            </center>
                        </div>
                        <div id="first" class="panel-collapse collapse">
                            <div class="panel-body">
                                <!--
                                    javascript:阻止页面提交
                                 -->
                                <a href="javascript:void(0)">
                                    <center><button type="button" class="btn btn-danger" onclick="$('#test').load('day3-1.jsp')">用户列表</button></center>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 类别管理 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <center>
                                <h3 class="panel-title">
                                    <a href="#first1" data-toggle="collapse" data-parent="#parent">
                                        用户管理
                                    </a>
                                </h3>
                            </center>
                        </div>
                        <div id="first1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <center>用户添加</center>
                            </div>
                        </div>
                    </div>
                    <!-- 图书管理 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <center>
                                <h3 class="panel-title">
                                    <a href="#first2" data-toggle="collapse" data-parent="#parent">
                                        图书管理
                                    </a>
                                </h3>
                            </center>
                        </div>
                        <div id="first2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <center>用户添加</center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--
                右栏
             -->
            <div class="col-sm-10" id="test">
                <!--
                    巨幕
                -->
                <div class="jumbotron">
                    <h1>Hello, world!</h1>
                    <p>...</p>
                    <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                </div>
                <!--
                    警告框
                 -->
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <strong>Warning!</strong> Better check yourself, you're not looking too good.
                    <p>
                        <button type="button" class="btn btn-danger">Take this action</button>
                        <button type="button" class="btn btn-default">Or do this</button>
                    </p>
                </div>
                <!--
                    面板
                 -->
                <div class="panel panel-default">
                    <div class="panel-heading">系统状态</div>
                    <div class="panel-body">
                        内存使用率
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                        数据库使用率
                        <div class="progress">
                            <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                        磁盘使用率
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete (warning)</span>
                            </div>
                        </div>
                        CPU使用率
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete (danger)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
