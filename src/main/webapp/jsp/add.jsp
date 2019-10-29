<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/14
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center;margin-top:40px">
    <%--action规定当提交表单时向何处发送表单数据--%>
    <form action="/cards" method="post">
        <h3>添加</h3>
        创建时间：<input name="create_at" type="text"><br/>
        更新时间：<input name="update_at" type="text"><br/>
        姓名：    <input name="name" type="text"><br/>
        QQ：      <input name="QQ" type="text"><br/>
        工作类型：<input name="job" type="text"><br/>
        入学日期：<input name="date" type="text"><br/>
        毕业院校：<input name="school" type="text"><br/>
        线上学号：<input name="number_online" type="text"><br/>
        日报链接：<input name="daily_link" type="text"><br/>
        入学誓言：<input name="oath" type="text"><br/>
        辅导师兄：<input name="brother" type="text"><br/>
        从哪得知修真院：<input name="where_know" type="text"><br/>
        <br><br>
        <input type="submit" value="添加">
    </form>
</div>

</body>
</html>
