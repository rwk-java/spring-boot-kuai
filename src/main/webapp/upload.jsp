<%@ page pageEncoding="UTF-8" contentType="text/html; UTF-8" isELIgnored="false" language="java"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/user1/upload" method="post" enctype="multipart/form-data">
        请选择上传文件:<input type="file" name="file"><input type="submit" value="提交">
    </form>
</body>
</html>