<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Manage Customer</title>
    <meta charset="UTF-8">
    <jsp:include page="view/header.jsp"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.1/toastr.min.css" rel="stylesheet" media="all"
          charset="">
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
<div id="app">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-3">
                <form>
                    <div class="row m-1">
                        <label for="name">Nhập tên sản phẩm</label>
                        <input type="text" v-model="name" id="name" class="form-control" placeholder="name">
                    </div>
                    <div class="row m-1">
                        <label for="category">Chọn category</label>
                        <select v-model="cate" name="" id="category">
                            <option value="0">Chọn category</option>
                            <template v-for="(value, key) in cate_data">
                                <option v-bind:value="value.categoryID">{{value.categoryName}}</option>
                            </template>
                        </select>
                    </div>
                    <div class="row m-1">
                        <label for="price">Nhập giá sản phẩm</label>
                        <input v-model="price" type="text" class="form-control" id="price" placeholder="price" v-model="price">
                    </div>
                    <div class="row m-1">
                        <label for="description">Nhập description</label>
                        <input v-model="description" type="text" class="form-control" id="description" placeholder="description"
                               v-model="description">
                    </div>
                    <div class="row m-1">
                        <label for="myfile">Select a file:</label>
                        <input type="file" id="myfile" name="myfile">
                    </div>
                    <div class="row m-1">
                        <label for="status">Chọn trạng thái</label>
                        <select v-model="status" name="" id="status" class="form-control">
                            <option value="0">Disable</option>
                            <option value="1">Enable</option>
                        </select>
                    </div>
                    <button v-on:click="create($event)" class="btn btn-success">create</button>
                </form>
            </div>
            <div class="col-md-9">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Act</th>
                    </tr>
                    </thead>
                    <tbody>
                    <template>
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>
                                <button class="btn btn-danger">delete
                                </button>
                                <button class="btn btn-warning"
                                        data-toggle="modal" data-target="#update" type="button">update
                                </button>
                            </td>
                        </tr>
                    </template>
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
            name: '',
            cate: 0,
            price: 0,
            description: '',
            status : 0,
            file : '',
            cate_data : []
        },
        created() {
            this.get_cate_data()
        },
        methods: {
            create(e){
                e.preventDefault()
                var payload = {
                    'name' : this.name,
                    'description' : this.description,
                    'status' : this.status,
                    'price' : this.price,
                    'category' : this.cate
                }
                console.log(payload)
            },
            get_cate_data(){
                var self = this
                $.ajax({
                    url: 'get_category',
                    type: 'get',
                    success: function (res) {
                        self.cate_data = res
                    }
                })
            }
        }
    })
</script>
</body>
</html>
