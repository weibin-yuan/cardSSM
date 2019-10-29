<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/15
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <%--<meta>标签描述HTML文档的元数据，charset属性定义文档的字符编码--%>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript">
    /*将post method 改变为delete*/
    $(function(){
        $(".delete").click(function(){
            var href=$(this).attr("href");
            $("#formdelete").attr("action",href).submit();
            return false;
        })
    })
</script>
<div style="margin-top:20px;text-align: center">
    <h2>报名信息</h2>
</div>
<div style="text-align: center">
    <%--HTML表格，border规定表格单元是否有边框，border=""时没有。
        cellpadding 是边框与其内容的间隙大小；
        cellspacing 是边框与边框之间的间隙大小；
        align="center"表示居中对齐--%>
    <table align="center" border="1" cellspacing="0">
        <%--<tr>标签定义表格行，<th>定义表格头，<td>定义表格单元。--%>
        <tr>
            <th>序号</th>
            <th>创建时间</th>
            <th>更新时间</th>
            <th>姓名</th>
            <th>QQ</th>
            <th>工作类型</th>
            <th>入学日期</th>
            <th>毕业院校</th>
            <th>线上学号</th>
            <th>日报链接</th>
            <th>入学誓言</th>
            <th>辅导师兄</th>
            <th>从哪得知修真院</th>
            <%--colspan属性规定单元格可横跨的列数--%>
            <th colspan="2">操作</th>
        </tr>
            <%--<c:forEach>迭代一个集合中的对象。有以下属性：--%>
            <%--items：要被循环的信息，不必要，默认值无--%>
            <%--begin：开始的元素（从0开始，0为第一个元素），不必要，默认值0--%>
            <%--end：结束的元素（从0开始），不必要，默认值Last element--%>
            <%--step：每一次迭代的步长，不必要，默认值1--%>
            <%--var：代表当前条目的变量名称，不必要，默认值无--%>
            <%--varStatus：代表循环状态的变量名称，不必要，默认值无--%>
        <c:forEach items="${cardList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.create_at}</td>
                <td>${user.update_at}</td>
                <td>${user.name}</td>
                <td>${user.QQ}</td>
                <td>${user.job}</td>
                <td>${user.date}</td>
                <td>${user.school}</td>
                <td>${user.number_online}</td>
                <td>${user.daily_link}</td>
                <td>${user.oath}</td>
                <td>${user.brother}</td>
                <td>${user.where_know}</td>
                <%--<a>用于定义超链接，从一个页面链接到另一个页面。href是其中最重要的属性，指定链接的目标。--%>
                <td><a href="cards/${user.id}">编辑</a></td>
                <td><a class="delete" href="cards/${user.id}">删除</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="15">
                <a href="cards/card">添加</a>
            </td>
        </tr>

    </table>
</div>

<form id="formdelete" action="" method="POST" >
    <input type="hidden" name="_method" value="DELETE">
</form>

</body>
</html>
