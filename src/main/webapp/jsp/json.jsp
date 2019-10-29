<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/28
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<json:object>
    <json:property name="id" value="${user.id}"/>
    <json:property name="name" value="${user.name}"/>
    <json:property name="job" value="${user.job}"/>
    <json:property name="QQ" value="${user.QQ}"/>
</json:object>

</body>
</html>
