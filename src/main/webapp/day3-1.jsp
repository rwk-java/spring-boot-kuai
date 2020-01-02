<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="app" value="${pageContext.request.contextPath}"/>
<style>
    #user {
        margin-top: -38px;
    }
</style>

<script>
    $(function () {
        $("#table").jqGrid({
            url: "${app}/user/queryAll",
            editurl: '${app}/user/delete',
            datatype: "json",
            caption: '用户管理列表',
            pager: '#pager',
            viewrecords: true,
            rowNum: 4,
            rowList: ['1', '2', '3', '4'],
            autowidth: true,
            colNames: ['编号', '名字', '密码', '生日', '手机', '状态'],
            colModel: [
                {name: 'id', align: 'center'},
                {name: 'name', align: 'center', editable: true},
                {name: 'password', align: 'center', editable: true},
                {name: 'birthday', align: 'center', editable: true},
                {name: 'phone', align: 'center', editable: true},
                {
                    name: 'state',
                    align: 'center',
                    editable: true,
                    edittype: 'select',
                    editoptions: {value: "激活:激活; 未激活:未激活"}
                },
            ]
        }).jqGrid("navGrid", "#pager", {}, {reloadAfterSubmit: false, closeAfterEdit: true},
            {closeAfterAdd: true},
            {closeAfterDel: true})
    })
</script>


<!-- 用户管理 -->
<div class="col-sm-10" id="user">
    <!--
        页头
     -->
    <div class="page-header">
        <h3>用户管理</h3>
    </div>
    <div>
        <table id="table">
            <div id="pager"></div>
        </table>
    </div>
</div>