<%@ page import="com.rambo.sme.pojo.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/smeui/plugins/bootstrap-3.3.5/css/bootstrap.min.css" />

<body>
<h1>${sessionScope.get("name")}</h1>
<h1><%=session.getAttribute("name")%></h1>
<h1>跟路径：${pageContext.request.contextPath}</h1>
<img src="${pageContext.request.contextPath}/smeui/images/ajax-loading.gif" alt="">
<input type="text" value="${name}">

<%
    ArrayList<User> UserList = new ArrayList<>();
    for (User user : UserList) { %>
<h5>遍历的当前用户名称:<%=user.getName()%></h5>
<h5>遍历的当前用户组织机构:<%=user.getOrg()%></h5>
<% }%>

<table class="table table-striped table-hover table-bordered table-condensed">
    <thead>
    <tr>
        <th>当前用户名称</th>
        <th>当前用户组织机构</th>
        <th>当前对象索引</th>
        <th>此次迭代的索引</th>
        <th>已经迭代的数量</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${userList}" varStatus="status">
        <tr>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.org}"/></td>
            <td><c:out value="${status.current}"/></td>
            <td><c:out value="${status.index}"/></td>
            <td><c:out value="${status.count}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
