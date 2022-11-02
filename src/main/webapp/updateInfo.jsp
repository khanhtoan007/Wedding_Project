<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 11/2/2022
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <title>Update Info</title>
</head>
<body>
<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->
<div class="card-body">
    <ul class="nav nav-pills" role="tablist">
        <li class="nav-item">
            <a class="nav-link d-flex align-items-center" id="account-tab" data-toggle="tab" href="#account"
               aria-controls="account" role="tab" aria-selected="false">
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                     class="feather feather-user">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                </svg>
                <span class="d-none d-sm-block">Account</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link d-flex align-items-center active" id="information-tab" data-toggle="tab"
               href="#information" aria-controls="information" role="tab" aria-selected="true">
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                     class="feather feather-info">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="16" x2="12" y2="12"></line>
                    <line x1="12" y1="8" x2="12.01" y2="8"></line>
                </svg>
                <span class="d-none d-sm-block">Information</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link d-flex align-items-center" id="social-tab" data-toggle="tab" href="#social"
               aria-controls="social" role="tab" aria-selected="false">
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                     class="feather feather-share-2">
                    <circle cx="18" cy="5" r="3"></circle>
                    <circle cx="6" cy="12" r="3"></circle>
                    <circle cx="18" cy="19" r="3"></circle>
                    <line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line>
                    <line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line>
                </svg>
                <span class="d-none d-sm-block">Social</span>
            </a>
        </li>
    </ul>
    <div class="tab-content">
        <!-- Account Tab starts -->
        <div class="tab-pane" id="account" aria-labelledby="account-tab" role="tabpanel">
            <!-- users edit media object start -->
            <div class="media mb-2">
                <img src="../../../app-assets/images/avatars/7.png" alt="users avatar"
                     class="user-avatar users-avatar-shadow rounded mr-2 my-25 cursor-pointer" height="90" width="90">
                <div class="media-body mt-50">
                    <h4>Eleanor Aguilar</h4>
                    <div class="col-12 d-flex mt-1 px-0">
                        <label class="btn btn-primary mr-75 mb-0 waves-effect waves-float waves-light"
                               for="change-picture">
                            <span class="d-none d-sm-block">Change</span>
                            <input class="form-control" type="file" id="change-picture" hidden=""
                                   accept="image/png, image/jpeg, image/jpg">
                            <span class="d-block d-sm-none">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                             viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                             stroke-width="2" stroke-linecap="round"
                                                             stroke-linejoin="round" class="feather feather-edit mr-0"><path
                                                                d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path
                                                                d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                                                    </span>
                        </label>
                        <button class="btn btn-outline-secondary d-none d-sm-block waves-effect">Remove</button>
                        <button class="btn btn-outline-secondary d-block d-sm-none waves-effect">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-trash-2 mr-0">
                                <polyline points="3 6 5 6 21 6"></polyline>
                                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                <line x1="10" y1="11" x2="10" y2="17"></line>
                                <line x1="14" y1="11" x2="14" y2="17"></line>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <!-- users edit media object ends -->
            <!-- users edit account form start -->
            <form class="form-validate" novalidate="novalidate">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" placeholder="Username" value="eleanor.aguilar"
                                   name="username" id="username">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" placeholder="Name" value="Eleanor Aguilar"
                                   name="name" id="name" aria-invalid="false">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="email" class="form-control" placeholder="Email"
                                   value="eleanor.aguilar@gmail.com" name="email" id="email">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="status">Status</label>
                            <select class="form-control" id="status">
                                <option>Active</option>
                                <option>Blocked</option>
                                <option>Deactivated</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="role">Role</label>
                            <select class="form-control" id="role">
                                <option>Admin</option>
                                <option>User</option>
                                <option>Staff</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="company">Company</label>
                            <input type="text" class="form-control" value="WinDon Technologies Pvt Ltd"
                                   placeholder="Company name" id="company">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive border rounded mt-1">
                            <h6 class="py-1 mx-1 mb-0 font-medium-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-lock font-medium-3 mr-25">
                                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                    <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                </svg>
                                <span class="align-middle">Permission</span>
                            </h6>
                            <table class="table table-striped table-borderless">
                                <thead class="thead-light">
                                <tr>
                                    <th>Module</th>
                                    <th>Read</th>
                                    <th>Write</th>
                                    <th>Create</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Admin</td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="admin-read"
                                                   checked="">
                                            <label class="custom-control-label" for="admin-read"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="admin-write">
                                            <label class="custom-control-label" for="admin-write"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="admin-create">
                                            <label class="custom-control-label" for="admin-create"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="admin-delete">
                                            <label class="custom-control-label" for="admin-delete"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Staff</td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="staff-read">
                                            <label class="custom-control-label" for="staff-read"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="staff-write"
                                                   checked="">
                                            <label class="custom-control-label" for="staff-write"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="staff-create">
                                            <label class="custom-control-label" for="staff-create"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="staff-delete">
                                            <label class="custom-control-label" for="staff-delete"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Author</td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="author-read"
                                                   checked="">
                                            <label class="custom-control-label" for="author-read"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="author-write">
                                            <label class="custom-control-label" for="author-write"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="author-create"
                                                   checked="">
                                            <label class="custom-control-label" for="author-create"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="author-delete">
                                            <label class="custom-control-label" for="author-delete"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contributor</td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="contributor-read">
                                            <label class="custom-control-label" for="contributor-read"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="contributor-write">
                                            <label class="custom-control-label" for="contributor-write"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="contributor-create">
                                            <label class="custom-control-label" for="contributor-create"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="contributor-delete">
                                            <label class="custom-control-label" for="contributor-delete"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>User</td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="user-read">
                                            <label class="custom-control-label" for="user-read"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="user-create">
                                            <label class="custom-control-label" for="user-create"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="user-write">
                                            <label class="custom-control-label" for="user-write"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="user-delete"
                                                   checked="">
                                            <label class="custom-control-label" for="user-delete"></label>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12 d-flex flex-sm-row flex-column mt-2">
                        <button type="submit"
                                class="btn btn-primary mb-1 mb-sm-0 mr-0 mr-sm-1 waves-effect waves-float waves-light">
                            Save Changes
                        </button>
                        <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                    </div>
                </div>
            </form>
            <!-- users edit account form ends -->
        </div>
        <!-- Account Tab ends -->

        <!-- Information Tab starts -->
        <div class="tab-pane active" id="information" aria-labelledby="information-tab" role="tabpanel">
            <!-- users edit Info form start -->
            <form class="form-validate" novalidate="novalidate">
                <div class="row mt-1">
                    <div class="col-12">
                        <h4 class="mb-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-user font-medium-4 mr-25">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <span class="align-middle">Personal Information</span>
                        </h4>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="birth">Birth date</label>
                            <input id="birth" type="text" class="form-control birthdate-picker flatpickr-input"
                                   name="dob" placeholder="YYYY-MM-DD" readonly="readonly">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="mobile">Mobile</label>
                            <input id="mobile" type="text" class="form-control" value="+6595895857" name="phone">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="website">Website</label>
                            <input id="website" type="text" class="form-control" placeholder="Website here..."
                                   value="https://rowboat.com/insititious/Angelo" name="website">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="languages">Languages</label>
                            <select id="languages" class="form-control">
                                <option value="English">English</option>
                                <option value="Spanish">Spanish</option>
                                <option value="French" selected="">French</option>
                                <option value="Russian">Russian</option>
                                <option value="German">German</option>
                                <option value="Arabic">Arabic</option>
                                <option value="Sanskrit">Sanskrit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label class="d-block mb-1">Gender</label>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="male" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="male">Male</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="female" name="gender" class="custom-control-input" checked="">
                                <label class="custom-control-label" for="female">Female</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label class="d-block mb-1">Contact Options</label>
                            <div class="custom-control custom-checkbox custom-control-inline">
                                <input type="checkbox" class="custom-control-input" id="email-cb" checked="">
                                <label class="custom-control-label" for="email-cb">Email</label>
                            </div>
                            <div class="custom-control custom-checkbox custom-control-inline">
                                <input type="checkbox" class="custom-control-input" id="message" checked="">
                                <label class="custom-control-label" for="message">Message</label>
                            </div>
                            <div class="custom-control custom-checkbox custom-control-inline">
                                <input type="checkbox" class="custom-control-input" id="phone">
                                <label class="custom-control-label" for="phone">Phone</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <h4 class="mb-1 mt-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-map-pin font-medium-4 mr-25">
                                <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
                                <circle cx="12" cy="10" r="3"></circle>
                            </svg>
                            <span class="align-middle">Address</span>
                        </h4>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="address-1">Address Line 1</label>
                            <input id="address-1" type="text" class="form-control" value="A-65, Belvedere Streets"
                                   name="address">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="address-2">Address Line 2</label>
                            <input id="address-2" type="text" class="form-control" placeholder="T-78, Groove Street">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="postcode">Postcode</label>
                            <input id="postcode" type="text" class="form-control" placeholder="597626" name="zip">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="city">City</label>
                            <input id="city" type="text" class="form-control" value="New York" name="city">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="state">State</label>
                            <input id="state" type="text" class="form-control" name="state" placeholder="Manhattan">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="form-group">
                            <label for="country">Country</label>
                            <input id="country" type="text" class="form-control" name="country"
                                   placeholder="United States">
                        </div>
                    </div>
                    <div class="col-12 d-flex flex-sm-row flex-column mt-2">
                        <button type="submit"
                                class="btn btn-primary mb-1 mb-sm-0 mr-0 mr-sm-1 waves-effect waves-float waves-light">
                            Save Changes
                        </button>
                        <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                    </div>
                </div>
            </form>
            <!-- users edit Info form ends -->
        </div>
        <!-- Information Tab ends -->

        <!-- Social Tab starts -->
        <div class="tab-pane" id="social" aria-labelledby="social-tab" role="tabpanel">
            <!-- users edit social form start -->
            <form class="form-validate" novalidate="novalidate">
                <div class="row">
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="twitter-input">Twitter</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon3">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-twitter font-medium-2"><path
                                                                    d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>
                                                        </span>
                            </div>
                            <input id="twitter-input" type="text" class="form-control"
                                   value="https://www.twitter.com/adoptionism744" placeholder="https://www.twitter.com/"
                                   aria-describedby="basic-addon3">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="facebook-input">Facebook</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon4">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-facebook font-medium-2"><path
                                                                    d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>
                                                        </span>
                            </div>
                            <input id="facebook-input" type="text" class="form-control"
                                   value="https://www.facebook.com/adoptionism664"
                                   placeholder="https://www.facebook.com/" aria-describedby="basic-addon4">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="instagram-input">Instagram</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon5">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-instagram font-medium-2"><rect
                                                                    x="2" y="2" width="20" height="20" rx="5"
                                                                    ry="5"></rect><path
                                                                    d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line
                                                                    x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>
                                                        </span>
                            </div>
                            <input id="instagram-input" type="text" class="form-control"
                                   value="https://www.instagram.com/adopt-ionism744"
                                   placeholder="https://www.instagram.com/" aria-describedby="basic-addon5">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="github-input">Github</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon9">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-github font-medium-2"><path
                                                                    d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>
                                                        </span>
                            </div>
                            <input id="github-input" type="text" class="form-control"
                                   value="https://www.github.com/madop818" placeholder="https://www.github.com/"
                                   aria-describedby="basic-addon9">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="codepen-input">Codepen</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon12">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-codepen font-medium-2"><polygon
                                                                    points="12 2 22 8.5 22 15.5 12 22 2 15.5 2 8.5 12 2"></polygon><line
                                                                    x1="12" y1="22" x2="12" y2="15.5"></line><polyline
                                                                    points="22 8.5 12 15.5 2 8.5"></polyline><polyline
                                                                    points="2 15.5 12 8.5 22 15.5"></polyline><line
                                                                    x1="12" y1="2" x2="12" y2="8.5"></line></svg>
                                                        </span>
                            </div>
                            <input id="codepen-input" type="text" class="form-control"
                                   value="https://www.codepen.com/adoptism243" placeholder="https://www.codepen.com/"
                                   aria-describedby="basic-addon12">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 form-group">
                        <label for="slack-input">Slack</label>
                        <div class="input-group input-group-merge">
                            <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon11">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="14"
                                                                 height="14" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 class="feather feather-slack font-medium-2"><path
                                                                    d="M14.5 10c-.83 0-1.5-.67-1.5-1.5v-5c0-.83.67-1.5 1.5-1.5s1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5z"></path><path
                                                                    d="M20.5 10H19V8.5c0-.83.67-1.5 1.5-1.5s1.5.67 1.5 1.5-.67 1.5-1.5 1.5z"></path><path
                                                                    d="M9.5 14c.83 0 1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5S8 21.33 8 20.5v-5c0-.83.67-1.5 1.5-1.5z"></path><path
                                                                    d="M3.5 14H5v1.5c0 .83-.67 1.5-1.5 1.5S2 16.33 2 15.5 2.67 14 3.5 14z"></path><path
                                                                    d="M14 14.5c0-.83.67-1.5 1.5-1.5h5c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5h-5c-.83 0-1.5-.67-1.5-1.5z"></path><path
                                                                    d="M15.5 19H14v1.5c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5-.67-1.5-1.5-1.5z"></path><path
                                                                    d="M10 9.5C10 8.67 9.33 8 8.5 8h-5C2.67 8 2 8.67 2 9.5S2.67 11 3.5 11h5c.83 0 1.5-.67 1.5-1.5z"></path><path
                                                                    d="M8.5 5H10V3.5C10 2.67 9.33 2 8.5 2S7 2.67 7 3.5 7.67 5 8.5 5z"></path></svg>
                                                        </span>
                            </div>
                            <input id="slack-input" type="text" class="form-control" value="@adoptionism744"
                                   placeholder="https://www.slack.com/" aria-describedby="basic-addon11">
                        </div>
                    </div>

                    <div class="col-12 d-flex flex-sm-row flex-column mt-2">
                        <button type="submit"
                                class="btn btn-primary mb-1 mb-sm-0 mr-0 mr-sm-1 waves-effect waves-float waves-light">
                            Save Changes
                        </button>
                        <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                    </div>
                </div>
            </form>
            <!-- users edit social form ends -->
        </div>
        <!-- Social Tab ends -->
    </div>
</div>
<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->
</body>
</html>
