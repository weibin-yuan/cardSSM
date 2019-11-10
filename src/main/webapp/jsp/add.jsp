<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/14
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" %>
<%--引用格式化标签，JSTL格式化标签用来格式化并输出文本、日期、时间、数字--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--引用SpringMVC表单标签--%>
<%@ taglib prefix="sf"  uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<div style="text-align: center;margin-top:40px">--%>
<%--    &lt;%&ndash;action规定当提交表单时向何处发送表单数据&ndash;%&gt;--%>
<%--    <form action="cards" method="post">--%>
<%--        <h3>添加</h3>--%>
<%--        创建时间：<input name="create_at" type="text"><br/>--%>
<%--        更新时间：<input name="update_at" type="text"><br/>--%>
<%--        姓名：    <input name="name" type="text"><br/>--%>
<%--        QQ：      <input name="QQ" type="text"><br/>--%>
<%--        工作类型：<input name="job" type="text"><br/>--%>
<%--        入学日期：<input name="date" type="text"><br/>--%>
<%--        毕业院校：<input name="school" type="text"><br/>--%>
<%--        线上学号：<input name="number_online" type="text"><br/>--%>
<%--        日报链接：<input name="daily_link" type="text"><br/>--%>
<%--        入学誓言：<input name="oath" type="text"><br/>--%>
<%--        辅导师兄：<input name="brother" type="text"><br/>--%>
<%--        从哪得知修真院：<input name="where_know" type="text"><br/>--%>
<%--        <br><br>--%>
<%--        <input type="submit" value="添加">--%>
<%--    </form>--%>
<%--</div>--%>


<%--使用Spring的form标签主要有两个作用，第一是它会自动的绑定来自Model中 的一个属性值到当--%>
<%--前form对应的实体对象，默认是command属性(一般都用modelAttribute,两者本质上没有区别)，--%>
<%--这样我们就可以在form表单体里面方便的使用该对象的属性了；第二是它支持我们在提交表单的时--%>
<%--候使用除GET和POST之外的其他方法进行提交，包括DELETE和PUT等。--%>
<sf:form action="/cards" method="post" modelAttribute="user">
    <table>
        <tr>
            <td>
                <fmt:message key="ywb_card.create_at"/>:
            </td>
            <td>
                <input name="create_at" value="${user.create_at}">
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.update_at"/>:
            </td>
            <td>
                <input name="update_at" value="${user.update_at}">
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.name"/>:
            </td>
            <td>
                <input name="name" value="${user.name}">
            </td>
            <td>
                <sf:errors path="name" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.QQ"/>:
            </td>
            <td>
                <input name="QQ" value="${user.QQ}">
            </td>
            <td>
                <sf:errors path="QQ" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.job"/>:
            </td>
            <td>
                <input name="job" value="${user.job}">
            </td>
            <td>
                <sf:errors path="job" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.date"/>:
            </td>
            <td>
                <input name="date" value="${user.date}">
            </td>
            <td>
                <sf:errors path="date" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.school"/>:
            </td>
            <td>
                <input name="school" value="${user.school}">
            </td>
            <td>
                <sf:errors path="school" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.number_online"/>:
            </td>
            <td>
                <input name="number_online" value="${user.number_online}">
            </td>
            <td>
                <sf:errors path="number_online" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.daily_link"/>:
            </td>
            <td>
                <input name="daily_link" value="${user.daily_link}">
            </td>
            <td>
                <sf:errors path="daily_link" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.oath"/>:
            </td>
            <td>
                <input name="oath" value="${user.oath}">
            </td>
            <td>
                <sf:errors path="oath" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.brother"/>:
            </td>
            <td>
                <input name="brother" value="${user.brother}">
            </td>
            <td>
                <sf:errors path="brother" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="ywb_card.where_know"/>:
            </td>
            <td>
                <input name="where_know" value="${user.where_know}">
            </td>
            <td>
                <sf:errors path="where_know" cssStyle="color:red"></sf:errors>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="springmvc.language"/>
            </td>
            <td>
                <a href="/cards/card?locale=zh_CN">中文</a>
                <a href="/cards/card?locale=en_US">English</a>
            </td>
            <td>
                <fmt:message key="springmvc.now.language"/>:${pageContext.response.locale}
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="<fmt:message key="springmvc.submit"/>">
            </td>
        </tr>
    </table>
</sf:form>
</body>
</html>
