<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/smeui/plugins/bootstrap-3.3.5/css/bootstrap.min.css" />
<body>
<h1>纳税人名称：${nsr.nsrmc}</h1>
<h1>纳税人识别号：${nsr.nsrsbh}</h1>

<table class="table table-striped table-hover table-bordered table-condensed">
    <thead>
    <tr>
        <th>认定凭证UUID</th>
        <th>登记序号</th>
        <th>征收项目</th>
        <th>征收品目</th>
        <th>录入日期</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="sfzrd" items="${sfzrdList}" varStatus="status">
        <tr>
            <td><c:out value="${sfzrd.rdpzuuid}"/></td>
            <td><c:out value="${sfzrd.djxh}"/></td>
            <td><c:out value="${sfzrd.zsxmDm}"/></td>
            <td><c:out value="${sfzrd.zspmDm}"/></td>
            <td><c:out value="${sfzrd.lrrq}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table class="table table-striped table-hover table-bordered table-condensed">
    <thead>
    <tr>
        <th>登记序号</th>
        <th>税收减免性质汇总代码</th>
        <th>税收减免性质大类代码</th>
        <th>征收项目</th>
        <th>征收品目</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="jmba" items="${jmbaList}" varStatus="status">
        <tr>
            <td><c:out value="${jmba.djxh}"/></td>
            <td><c:out value="${jmba.ssjmxzhzDm}"/></td>
            <td><c:out value="${jmba.ssjmxzdlDm}"/></td>
            <td><c:out value="${jmba.zsxmDm}"/></td>
            <td><c:out value="${jmba.zspmDm}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
