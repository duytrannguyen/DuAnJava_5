<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="templatemo">
    <title>BookStore</title>
    <link rel="shortcut icon" href="/assets/images/logobook.ico" type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/templatemo-liberty-market.css">
    <link rel="stylesheet" href="/assets/css/owl.css">
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
</head>
<body>
    <!-- ***** Header Area Start ***** -->
    <jsp:include page="client_layout/header.jsp"></jsp:include>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="header-text">
                        <h6>QLBook Store</h6>
                        <h2>Mua &amp; Bán Sách Chính Hãng.</h2>
                        <p>QLBook Store là một nơi hoàn hảo để bạn có thể tìm kiếm tất cả các thể loại sách mà bạn mong muốn. Tại QLBook Store bạn có thể mua, sở hữu cho mình những quyển sách, truyện độc quyền chỉ có tại QLBook Store.</p>
                        <div class="buttons">
                            <div class="border-button">
                                <a href="/home/login">Đăng Nhập Ngay</a>
                            </div>
                            <div class="main-button">
                                <a href="#" target="_blank">Tìm Hiểu Sản Phẩm</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="owl-banner owl-carousel">
                        <div class="item">
                            <img src="/assets/images/poster-gioi-thieu-sach-11.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="/assets/images/poster-gioi-thieu-sach-9.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <div class="categories-collections">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="categories">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-heading">
                                    <div class="line-dec"></div>
                                    <h2>Một Số <em>Thể Loại</em> Nổi Bật.</h2>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach var="p" items="${categories}">
                                    <div class="col-lg-2 col-sm-6">
                                        <div class="item">
                                            <div class="icon">
                                                <img src="/assets/images/icon-02.png" alt="">
                                            </div>
                                            <h4>${p.categoryName}</h4>
                                            <div class="icon-button">
                                                <a href="/home/filter/${p.categoryId}"><i class="fa fa-angle-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="collections">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-heading">
                                    <div class="line-dec"></div>
                                    <h2>Một Số <em>Sản Phẩm</em> Nổi Bật.</h2>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="owl-collection owl-carousel">
                                    <c:forEach var="p" items="${products}">
                                        <div class="item">
                                            <img src="/Image_SP/${p.imageId.imageName}" alt="" style="height: 330px; width: 350px;">
                                            <div class="down-content">
                                                <h4 class="book-title">${p.productName}</h4>
                                                <br>
                                                <span class="collection">Sản Phẩm Còn Lại<br><strong>${p.quantity}</strong></span>
                                                <span class="category">Thể Loại:<br><strong>${p.category.categoryName}</strong></span>
                                                <div class="main-button">
                                                    <a href="products/details/${p.productId}">Chi Tiết</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="create-nft">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <div class="line-dec"></div>
                        <h2>Tại Sao Nên Chọn QLBook Store ?</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Commented out for brevity -->
                </div>
                <div class="col-lg-4">
                    <div class="item first-item">
                        <div class="icon">
                            <img src="assets/images/icon-02.png" alt="">
                        </div>
                        <h4>Nhiều Sự Lựa Chọn</h4>
                        <p>Chúng tôi cung cấp một bộ sưu tập sách phong phú, bao gồm các tiểu thuyết bán chạy nhất và sách được mọi người quan tâm, phù hợp với mọi độc giả.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item second-item">
                        <div class="icon">
                            <img src="assets/images/icon-04.png" alt="">
                        </div>
                        <h4>Giá Triết Khấu</h4>
                        <p>Phần sách giảm giá của chúng tôi cung cấp mức giá tuyệt vời cho những cuốn sách phổ biến, vì vậy bạn có thể thưởng thức những cuốn sách yêu thích của mình mà không phải tốn nhiều tiền.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="icon">
                            <img src="assets/images/icon-06.png" alt="">
                        </div>
                        <h4>Chuyển Phát Nhanh</h4>
                        <p>Chúng tôi coi trọng thời gian của bạn, đó là lý do tại sao chúng tôi cung cấp dịch vụ vận chuyển nhanh chóng cho tất cả các đơn đặt hàng. Nhận sách của bạn được giao ngay trước cửa nhà bạn trong thời gian ngắn.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        Copyright 2024 <a href="#">QLBook</a> Store Co., Ltd. All rights reserved. &nbsp;&nbsp; Designed by <a title="HTML CSS Templates" rel
                        ="sponsored" href="#" target="_blank">Nhom2</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ***** Footer End ***** -->

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Additional Scripts -->
    <script src="/assets/js/isotope.min.js"></script>
    <script src="/assets/js/owl-carousel.js"></script>
    <script src="/assets/js/tabs.js"></script>
    <script src="/assets/js/popup.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- Swiper Slider -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

</body>
</html>
                        