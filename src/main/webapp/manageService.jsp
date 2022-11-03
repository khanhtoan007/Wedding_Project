<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="nav-link" href="manageServices.jsp">Dịch vụ</a>
      </li>
    </ul>
  </div>
  <span class="navbar-text mr-3">
                Welcome, admin
    </span>
  <div class="mr-1">
    <button class="btn btn-danger">Đăng xuất</button>
  </div>
</nav>
<div class="container">
  <div class="col-md-12 text-center mb-3">
    <h2>Quản lý dịch vụ</h2>
  </div>
  <div class="row justify-content-center align-items-center">
    <form class="form-inline">
      <input class="form-control" type="search" placeholder="Điền vào dịch vụ" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
  <div class="table-responsive">
    <table class="table table-hover">
      <thead>
      <tr class="align-content-center">
        <th>Tên</th>
        <th>Phân loại</th>
        <th>Giá</th>
        <th>Ảnh</th>
        <th>Tình trạng</th>
        <th>Mô tả</th>
        <th>Hành động</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>
          <%--                TÊN SẢN PHẨM Ở ĐÂY--%>
          <span class="font-weight-bold">Váy cưới</span>
        </td>
        <td>
          <%--                PHÂN LOẠI GIỮA SẢN PHẨM & DỊCH VỤ Ở ĐÂY--%>
          Sản phẩm
        </td>
        <td>
          <%--                GIÁ SẢN PHẨM NẰM Ở ĐÂY    --%>
          3000000 VND
        </td>
        <td>
          <%--                ẢNH DỊCH VỤ/ SẢN PHẨM Ở ĐÂY--%>
          <img
                  src="https://aodaitailoc.com/wp-content/uploads/2022/08/Thiet-ke-vay-cuoi-cong-chua-xoe-cua-Xoai-Non.jpg"
                  width="200px" height="200px" style="object-fit: cover"/></td>
        <td>
          <%--                STATUS CỦA DỊCH VỤ Ở ĐÂY--%>
          Chưa được thuê
        </td>
        <td>
          <%--                MÔ TẢ CỦA DỊCH VỤ/SẢN PHẨM Ở ĐÂY--%>
          <p style="width: 200px;
                       overflow: hidden;
                       text-overflow: ellipsis;
                       line-height: 25px;
                       -webkit-line-clamp:5;
                       height: 75px;
                       display: -webkit-box;
                       -webkit-box-orient: vertical;">
            Mini collection váy cưới mang tên A Pearly White Pure lấy cảm hứng từ sắc trắng ngọc trai thuần
            khiết. Bộ sưu tập là tổng hợp của những mẫu váy cơ bản nhất trong mỗi dòng váy có tại
            WEDDINGBOOK.
            Nhẹ nhàng như ngọc trai nhưng vẫn mang nét quyến rũ, những thiết kế này là gợi ý giúp làm nổi
            bật vẻ
            nữ tính và tinh tế của cô dâu.
          </p>
        </td>
        <td>
          <%--                HÀNH ĐỘNG CHO SẢN PHẨM/DỊCH VỤ Ở ĐÂY--%>
          <button type="button" class="btn btn-outline-primary waves-effect" data-toggle="modal"
                  data-target="#inlineForm">
            Sửa
          </button>
          <button type="button" class="btn btn-outline-primary waves-effect" data-toggle="modal"
                  data-target="#">
            Xóa
          </button>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
<div class="form-modal-ex">
  <!-- Button trigger modal -->
  <!-- Modal -->
  <div class="modal fade text-left" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33"
       style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="myModalLabel33">Inline Login Form</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form action="#">
          <div class="modal-body">
            <label>Email: </label>
            <div class="form-group">
              <input type="text" placeholder="Email Address" class="form-control">
            </div>

            <label>Password: </label>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary waves-effect waves-float waves-light"
                    data-dismiss="modal">Login
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<jsp:include page="view/script.jsp"/>


<script src="app-assets/vendors/js/vendors.min.js"></script>
<script src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
<script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
<script src="app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>

<script>
  $(window).on('load', function () {
    if (feather) {
      feather.replace({
        width: 14,
        height: 14
      });
    }
  })
</script>
<script src="app-assets/js/core/app-menu.js"></script>
<script src="app-assets/js/core/app.js"></script>
<script src="app-assets/js/scripts/forms/form-validation.js"></script>

</body>
</html>
