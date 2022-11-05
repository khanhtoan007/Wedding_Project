<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <title>Manage Customer</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="adminManageCustomer.jsp">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminManageStaff.jsp">Nhân viên</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                Welcome, admin
    </span>
    <div class="mr-1">
        <button class="btn btn-outline-danger">Đăng xuất</button>
    </div>
</nav>
<div class="container">
    <div class="col-md-12 text-center mb-3">
<%--        <c:if action="${search}">--%>
<%--            <h2>ket qua tim kiem</h2>--%>
<%--        </c:if>--%>
<%--        <c:if action !="${search}">--%>
<%--            <h2>Danh sách người dùng</h2>--%>
<%--        </c:if>--%>
        <h2>${action.equals("search") ? "ket qua tim kiem" : "Danh sách người dùng"}</h2>

    </div>
    <div class="row justify-content-center align-items-center">
        <form action="SearchUserServlet" method="post" class="form-inline">
            <input class="form-control" name="fullname" type="search" placeholder="Điền vào tên người dùng.." aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>id</th>
            <th>Username</th>
            <th>Fullname</th>
            <th>email</th>
            <th>tel</th>
            <th>email</th>
            <th>role</th>
            <th class="text-center">action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="i">
            <tr>
                <td>${i.getId()}</td>
                <td>${i.getUserName()}</td>
                <td>${i.getFullName()}</td>
                <td>${i.getEmail()}</td>
                <td>${i.getTel()}</td>
                <td>${i.isEmail()}</td>
                <td>${i.getRole()}</td>
                <td>
                    <a role="button" class="btn btn-info" href="update?sid=${i.getId()}">Update</a>
                    <a role="button" class="btn btn-danger" href="DeleteControl?sid=${i.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
