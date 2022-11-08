<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<<<<<<< HEAD
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
          rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <!-- END: Custom CSS-->
=======
    <title>Manage Customer</title>
    <meta charset="UTF-8">
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.css" rel="stylesheet" media="all">
>>>>>>> 8ae7e3cb249210a583a1d0540505477495722369
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
                <a class="nav-link" href="#">Sản phẩm</a>
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
<div id="app">
    <div class="container">
        <div class="row">
            <div class="card col-md-3">
                <div>
                    <%= request.getAttribute("MESSAGE") %>
                </div>
                <form action="service" method="post" enctype="multipart/form-data">
                    <div class="row m-1">
                        <label for="name"><h4>Nhập tên sản phẩm</h4></label>
                        <input type="text" id="name" name="name" class="form-control"
                               placeholder="Nhập vào tên sản phẩm">
                    </div>
                    <div class="row m-1">
                        <%--                        <div class="btn-group">--%>
                        <%--                            <button class="btn btn-flat-primary dropdown-toggle waves-effect" type="button"--%>
                        <%--                                    id="dropDownCategory" data-toggle="dropdown" aria-haspopup="true"--%>
                        <%--                                    aria-expanded="false">--%>
                        <%--                                Chọn danh mục sản phẩm--%>
                        <%--                            </button>--%>
                        <%--                            <div class="dropdown-menu" aria-labelledby="dropdownCategory" style="">--%>
                        <%--                                <template v-for="(value, key) in cate_data">--%>
                        <%--                                    <option v-bind:value="value.categoryID">{{value.categoryName}}</option>--%>
                        <%--                                </template>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <select name="category" id="category" class="btn btn-flat-primary dropdown-toggle waves-effect"
                                type="button">
                            <option value="0">Loại sản phẩm</option>
                            <template v-for="(value, key) in cate_data">
                                <option v-bind:value="value.categoryID">{{value.categoryName}}</option>
                            </template>
                        </select>
                    </div>
                    <div class="row m-1">
                        <label for="price"><h4>Nhập giá sản phẩm</h4></label>
                        <input type="number" class="form-control" name="price" id="price"
                               placeholder="Nhập vào giá sản phẩm">
                    </div>
                    <div class="row m-1">
                        <label for="quantity"><h4>Nhập số lượng</h4></label>
                        <input type="number" class="form-control" name="quantity" id="quantity"
                               placeholder="Nhập vào số lượng sản phẩm">
                    </div>
                    <div class="row m-1">
                        <label for="description"><h4>Nhập vào mô tả sản phẩm</h4></label>
                        <textarea name="description" class="form-control" id="description"
                                  placeholder="Mô tả sản phẩm..."></textarea>
                    </div>
                    <div class="row m-1">
                        <label for="myfile"><h4>Chọn ảnh sản phẩm</h4></label>
                        <input v-on:change="onChange($event)" type="file" id="myfile" name="image">
                        <div class="col-md-12">
                            <img hidden="true" id="preview_image" src="" alt="" style="max-width: 100%;">
                        </div>
                    </div>
                    <div class="row m-1">
                        <label for="status"><h4>Chọn trạng thái</h4></label>
                        <select name="status" id="status" class="form-control">
                            <option value="0">Hết hàng</option>
                            <option value="1">Còn hàng</option>
                        </select>
                    </div>
                    <button class="btn btn-success row m-1">Tạo sản phẩm</button>
                </form>
            </div>
            <div class="col-md-9">
                <table class="card table">
                    <thead class="thead-light">
                    <tr>
                        <th class="col-md-2">Tên s.phẩm</th>
                        <th class="col-md-1">P.loại</th>
                        <th class="col-md-1">Giá</th>
                        <th class="col-md-2">Mô tả</th>
                        <th class="col-md-2">Ảnh</th>
                        <th class="col-md-1">S.lượng</th>
                        <th class="col-md-1">T.trạng</th>
                        <th class="col-md-2">T.chọn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${c}" var="i">
                        <tr>
                            <td class="col-md-2">${i.getProductName()}</td>
                            <td class="col-md-1">${i.getCategoryID()}</td>
                            <td class="col-md-1">${i.getPrice()}</td>
                            <td class="col-md-2">${i.getDescription()}</td>
                            <td class="col-md-2"><a href="${i.getImage()}"><img style="max-width: 100%"
                                                                                src="${i.getImage()}"></a></td>
                            <td class="col-md-1">${i.getQuantity()}</td>
                            <td class="col-md-1">${i.isStatus()}</td>
                            <td class="col-md-2">
                                <div class="col-md-12">
                                    <div class="row">
                                        <a href="delete_product?id=${i.getProductID()}">
                                            <button class="btn btn-danger">delete</button>
                                        </a>
                                        <a href="update_product?id=${i.getProductID()}">
                                            <button class="btn btn-warning">update</button>
                                        </a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" v-on:click="update($event)" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js"
        integrity="sha512-0qU9M9jfqPw6FKkPafM3gy2CBAvUWnYVOfNPDYKVuRTel1PrciTj+a9P3loJB+j0QmN2Y0JYQmkBBS8W+mbezg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.7.10/vue.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.js"></script>

<script>
    var app = new Vue({
        el: "#app",
        data: {
            file: '',
            cate_data: []
        },
        created() {
            this.get_cate_data()
        },
        methods: {
            get_cate_data() {
                var self = this
                $.ajax({
                    url: 'get_category',
                    type: 'get',
                    success: function (res) {
                        self.cate_data = res
                    }
                })
            },
            onChange: function (e) {
                $("#preview_image").removeAttr('hidden');
                this.file = e.target.files[0];
                console.log(this.file);
                var img = document.getElementById('preview_image');
                var image = document.getElementById('view_image');
                img.src = URL.createObjectURL(this.file);
                image.src = URL.createObjectURL(this.file);
            },
        }
    })
</script>
</body>
</html>
