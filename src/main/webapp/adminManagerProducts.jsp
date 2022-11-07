<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 11/6/2022
  Time: 3:06 AM
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
      <th>Product Name</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Category</th>
      <th>Description</th>
      <th>Image</th>
      <th>Status</th>
      <th class="text-center">action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${c}" var="i">
      <tr>
        <td>${i.getProductName()}</td>
        <td>${i.getQuantity()}</td>
        <td>${i.getPrice()}</td>
        <td>${i.getCategory()}</td>
        <td>${i.getDescription()}</td>
        <td>${i.getImage()}</td>
        <c:if test="${o.isStatus() == true}">
          <td>Còn Hàng</td>
        </c:if>
        <c:if test="${o.isStatus() == false}">
          <td>Hết hàng</td>
        </c:if>
        <td>
          <a role="button" class="btn btn-info" href="UpdateProductControl?sid=${i.getId()}">Update</a>
          <a role="button" class="btn btn-danger" href="DeleteControl?sid=${i.getId()}">Delete</a>
        </td>
      </tr>
    </c:forEach>

    </tbody>
  </table>
</div>
</body>
</html>
