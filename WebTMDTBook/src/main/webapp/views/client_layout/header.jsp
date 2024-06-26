<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="author" content="templatemo">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<title>Liberty Template - NFT Item Detail Page</title>

<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="/assets/css/fontawesome.css">
<link rel="stylesheet" href="/assets/css/templatemo-liberty-market.css">
<link rel="stylesheet" href="/assets/css/owl.css">
<link rel="stylesheet" href="/assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<!--

TemplateMo 577 Liberty Market

https://templatemo.com/tm-577-liberty-market

-->
<style type="text/css">
.a-product {
	transition: all 0.3s ease-in-out;
}

.a-product:hover {
	transform: translateY(-5px);
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

.hover-shadow-lg:hover {
	box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
}

.btnn {
	margin-top: 40px;
	margin-left: 20px;
	margin-bottom: 10px;
	width: 220px;
	height: 40px;
	width: 220px;
}
</style>
</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav navbar navbar-expand-lg navbar-light bg-light">
						<!-- ***** Logo Start ***** -->
						<a href="/home" class="logo navbar-brand"> <img
							src="/assets/images/logobook.jpg" alt="">
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNav"
							aria-controls="navbarNav" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
							<ul class="nav navbar-nav">
								<li class="nav-item"><a href="/home/index" class="nav-link">Home</a>
								</li>
								<li class="nav-item"><a href="#" class="nav-link">Giới
										Thiệu</a></li>
								<li class="nav-item"><a href="#" class="nav-link">Liên
										Hệ</a></li>
								<li class="nav-item"><a href="#" class="nav-link">Sản
										Phẩm</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" id="accountDropdown"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Tài Khoản </a>
									<ul class="dropdown-menu" aria-labelledby="accountDropdown">
										<li><a class="dropdown-item" href="">Đăng Ký</a></li>
										<li><a class="dropdown-item" href="">Đăng Nhập</a></li>
										<li><a class="dropdown-item" href="">Quên Mật Khẩu</a></li>
										<hr>
										<li><a class="dropdown-item" href="">Thông Tin Tài
												Khoản</a></li>
										<li><a class="dropdown-item" href="">Đổi Mật Khẩu</a></li>
										<li><a class="dropdown-item" href="">Giỏ Hàng</a></li>
										<li><a class="dropdown-item" href="">Đơn Hàng Đã Mua</a></li>
										<li><a class="dropdown-item" href="">Lịch Sử Đơn Hàng</a></li>
									</ul></li>
							</ul>
						</div>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<div class="page-heading normal-space">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>QLBook Store</h6>
					<h2>Xem Chi Tiết Sản Phẩm</h2>
					<span> <a href="/home">Home > </a> <a href="#">Chi Tiết
							Sản Phẩm</a></span>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script>
	const showMoreNCC = document.getElementById('showMoreMota');
	const showLessNCC = document.getElementById('collapseBtn');
	const extraListNCC = document.getElementById('extraListMota');
	
	showMoreNCC.addEventListener('click', () => {
		extraListNCC.classList.remove('d-none');
		  showMoreNCC.classList.add('d-none');
		  showLessNCC.classList.remove('d-none');
		});

	showLessNCC.addEventListener('click', () => {
		extraListNCC.classList.add('d-none');
		showMoreNCC.classList.remove('d-none');
		showLessNCC.classList.add('d-none');
		});
</script>
	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="/assets/js/isotope.min.js"></script>
	<script src="/assets/js/owl-carousel.js"></script>

	<script src="/assets/js/tabs.js"></script>
	<script src="/assets/js/popup.js"></script>
	<script src="/assets/js/custom.js"></script>
</body>
</html>