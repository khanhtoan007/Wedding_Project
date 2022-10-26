<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
</head>
<body>

<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<!-- Contact Start -->
<div class="container-fluid py-5" id="rsvp">
    <div class="container py-5">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">RSVP</h6>
            <h1 class="font-secondary display-4">Join Our Party</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="text-center">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-sm-6">
                                <input type="text" class="form-control bg-secondary border-0 py-4 px-3"
                                       placeholder="Your Name"/>
                            </div>
                            <div class="form-group col-sm-6">
                                <input type="email" class="form-control bg-secondary border-0 py-4 px-3"
                                       placeholder="Your Email"/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-sm-6">
                                <select class="form-control bg-secondary border-0" style="height: 52px;">
                                    <option>Number of Guest</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </div>
                            <div class="form-group col-sm-6">
                                <select class="form-control bg-secondary border-0" style="height: 52px;">
                                    <option>I'm Attending</option>
                                    <option>All Events</option>
                                    <option>Wedding Party</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control bg-secondary border-0 py-2 px-3" rows="5"
                                      placeholder="Message" required="required"></textarea>
                        </div>
                        <div>
                            <button class="btn btn-primary font-weight-bold py-3 px-5" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->

<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->


<!-- Scroll to Bottom -->
<i class="fa fa-2x fa-angle-down text-white scroll-to-bottom"></i>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

<!-- JavaScript Libraries -->
<jsp:include page="view/script.jsp"/>
</body>
</html>
