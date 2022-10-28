<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="51">
<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<!-- Story Start-----------Content------------>
    <div class="container-fluid py-5" id="story">
    <div class="container pt-5 pb-3">
        <div class="section-title position-relative text-center">
            <h6 class="text-uppercase text-primary mb-3" style="letter-spacing: 3px;">Story</h6>
            <h1 class="font-secondary display-4">Our Love Story aaaaa</h1>
            <i class="far fa-heart text-dark"></i>
        </div>
        <div class="container timeline position-relative p-0">
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <img class="img-fluid mr-md-3" src="img/story-1.jpg" alt="">
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                        <h4 class="mb-2">First Meet</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                        <h4 class="mb-2">First Date</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <img class="img-fluid ml-md-3" src="img/story-2.jpg" alt="">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <img class="img-fluid mr-md-3" src="img/story-3.jpg" alt="">
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 ml-md-3">
                        <h4 class="mb-2">Proposal</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center text-md-right">
                    <div class="h-100 d-flex flex-column justify-content-center bg-secondary p-4 mr-md-3">
                        <h4 class="mb-2">Enagagement</h4>
                        <p class="text-uppercase mb-2">01 Jan 2050</p>
                        <p class="m-0">Lorem elitr magna stet rebum dolores sed. Est stet labore est lorem lorem at amet
                            sea, eos tempor rebum, labore amet ipsum sea lorem, stet rebum eirmod amet. Kasd clita kasd
                            stet amet est dolor elitr.</p>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-left">
                    <img class="img-fluid ml-md-3" src="img/story-4.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Story End -->


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
