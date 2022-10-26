<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 8:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <jsp:include page="view/header.jsp"/>
</head>
<body>

<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->


<!-- Gallery Start -->
<div class="container-fluid bg-gallery" id="gallery" style="padding: 120px 0; margin: 90px 0;">
    <div class="section-title position-relative text-center" style="margin-bottom: 120px;">
        <h6 class="text-uppercase text-white mb-3" style="letter-spacing: 3px;">Thư viện ảnh</h6>
        <h1 class="display-6 text-white">Những bức ảnh đẹp nhất của chúng tôi</h1>
        <i class="far fa-heart text-white"></i>
    </div>
    <div class="owl-carousel gallery-carousel">
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-1.jpg" alt="">
            <a href="img/gallery-1.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-2.jpg" alt="">
            <a href="img/gallery-2.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-3.jpg" alt="">
            <a href="img/gallery-3.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-4.jpg" alt="">
            <a href="img/gallery-4.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-5.jpg" alt="">
            <a href="img/gallery-5.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-6.jpg" alt="">
            <a href="img/gallery-6.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-7.jpg" alt="">
            <a href="img/gallery-7.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
        <div class="gallery-item">
            <img class="img-fluid w-100 h-100" src="img/gallery-8.jpg" alt="">
            <a href="img/gallery-8.jpg" data-lightbox="gallery">
                <i class="fa fa-2x fa-plus text-white"></i>
            </a>
        </div>
    </div>
</div>
<!-- Gallery End -->

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