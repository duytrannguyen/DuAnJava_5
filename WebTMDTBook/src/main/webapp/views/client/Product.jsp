<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>

<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/client/products.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- link icon -->
<!-- FontAwesome 6.2.0 CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- (Optional) Use CSS or JS implementation -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"
	integrity="sha512-naukR7I+Nk6gp7p5TMA4ycgfxaZBJ7MO5iC3Fp6ySQyKFHOGfpkSZkYVWV5R7u7cfAicxanwYQ5D1e17EfJcMA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<jsp:include page="/views/client_layout/header.jsp" />
	<div class="container">
		<div class="col-md-12 mt-5">
			<div class="row">
				<!-- NỘI DUNG TRÁI -->
				<div class="col-md-3">
					<div class="card">
						<!-- GIÁ -->
						<br>
						<ul class="ul">
							<ul>
								<a><strong>GIÁ</strong> </a>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="firstCheckbox"> <label class="form-check-label"
									for="firstCheckbox">0đ - 50,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="secondCheckbox"> <label class="form-check-label"
									for="secondCheckbox">50,000đ - 150,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">150,000đ - 250,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">250,000đ - 350,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">350,000đ - 500,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">500,000đ - 700,000đ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">700,000đ - Trở liên</label></li>
							</ul>
						</ul>
						<hr>
						<!-- THỂ LOẠI -->
						<ul class="ul">
							<ul>
								<a><strong>THỂ LOẠI</strong></a>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="children-books" id="category-1"> <label
									class="form-check-label" for="category-1">Sách thiếu
										nhi</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="psychology-books" id="category-2"> <label
									class="form-check-label" for="category-2">Sách tâm lý,
										tình cảm</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="social-culture-books" id="category-3"> <label
									class="form-check-label" for="category-3">Sách văn hoá
										xã hội</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="history-books" id="category-4"> <label
									class="form-check-label" for="category-4">Sách lịch sử</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="sci-fi-books" id="category-5"> <label
									class="form-check-label" for="category-5">Sách văn học
										viễn tưởng</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="biography-books" id="category-6"> <label
									class="form-check-label" for="category-6">Sách tiểu sử,
										tự truyện</label></li>
							</ul>
							<ul class="d-none" id="extraList">
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="science-books" id="category-7"> <label
									class="form-check-label" for="category-7">Sách khoa học</label>
								</li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="economics-books" id="category-8"> <label
									class="form-check-label" for="category-8">Sách kinh tế</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox"
									value="technology-books" id="category-9"> <label
									class="form-check-label" for="category-9">Sách công
										nghệ</label></li>
							</ul>
							<p>
								<a href="#" id="showMoreBtn" style="margin-left: 70px;"
									class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xem
									Thêm <i class="fa-solid fa-arrow-down"></i>
								</a> <a href="#" id="showLessBtn" style="margin-left: 70px;"
									class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover d-none">Thu
									gọn <i class="fa-solid fa-arrow-up"></i>
								</a>
							</p>
						</ul>
						<hr>
						<!-- 					NHÀ CUNG CẤP -->
						<ul class="ul">
							<ul>
								<!-- Current list -->
								<a><strong>NHÀ CUNG CẤP</strong></a>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="firstCheckbox"> <label class="form-check-label"
									for="firstCheckbox">Nhà Xuất Bản Kim Đồng</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="secondCheckbox"> <label class="form-check-label"
									for="secondCheckbox">Nhà Xuất Bản Trẻ</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="thirdCheckbox"> <label class="form-check-label"
									for="thirdCheckbox">Minh Long</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="firstCheckbox"> <label class="form-check-label"
									for="firstCheckbox">NXB Hội Nhà văn</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="secondCheckbox"> <label class="form-check-label"
									for="secondCheckbox">NXB Phụ nữ Việt Nam</label></li>
							</ul>
							<ul class="d-none" id="extraListNCC">
								<!-- "Xem thêm" list -->
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="extraCheckbox1"> <label class="form-check-label"
									for="extraCheckbox1">Nhà xuất bản Lao Động</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="extraCheckbox2"> <label class="form-check-label"
									for="extraCheckbox2">Nhã Nam</label></li>
								<li class="list-group-item"><input
									class="form-check-input me-1" type="checkbox" value=""
									id="extraCheckbox3"> <label class="form-check-label"
									for="extraCheckbox3">Đinh Tị Books</label></li>
							</ul>
							<p>
								<a href="#" id="showMoreNCC" style="margin-left: 70px;"
									class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xem
									Thêm <i class="fa-solid fa-arrow-down"></i>
								</a> <a href="#" id="showLessNCC" style="margin-left: 70px;"
									class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover d-none">Thu
									gọn <i class="fa-solid fa-arrow-up"></i>
								</a>
							</p>
						</ul>
					</div>
				</div>
				<!-- 				NỘI DUNG PHẢI -->
				<div class="col-md-9">
					<div class="card" style="padding: 20px">
						<div class="row">
							<div class="col-md-4">
								<label for="inputState">Sắp xếp theo:</label> <select
									id="inputState" class="form-select">
									<option selected>Bán Chạy Tuần</option>
									<option>Bán Chạy Tháng</option>
									<option>Mới Nhất</option>
								</select>
							</div>
						</div>
						<hr>
						<!-- DANH SÁCH SẢN PHẨM -->
						<div class="row row-cols-1 g-4"">
							<h6>DANH SÁCH SẢN PHẨM</h6>

							<c:forEach var="p" items="${products}">

								<div class="col-md-3">
									<a href="products/details/${p.productId}"
										class="a-product text-decoration-none">
										<div class="card h-100 border-0 shadow-sm hover-shadow-lg">
											<img src="/Image_SP/${p.imageId.imageName}"
												class="card-img-top" style="height: 230px; width: 210px;">
											<div class="card-body">
												<p class="card-title mb-1">${p.productName}</p>
												<div class="d-flex flex-column">
													<span class="giaBan">${p.price}</span> <span
														class="giaGiam text-muted">120,000đ</span>
												</div>
											</div>
										</div>
									</a>
								</div>

								<br>
							</c:forEach>

							<hr>
							<br>

							<%-- <a href="/product/page?p=0"
								class="btn btn-outline-primary">First</a> <a
								href="/product/page?p=${pageProd.number-1}"
								class="btn btn-outline-primary">Previous</a> <a
								href="/product/page?p=${pageProd.number+1}"
								class="btn btn-outline-primary">Next</a> <a
								href="/product/page?p=${pageProd.totalPages-1}"
								class="btn btn-outline-primary">Last</a>
 --%>

							<%-- <nav aria-label="Page navigation example ">
					  <ul class="pagination m-0 mt-2 mb-2 d-flex justify-content-end">
					    <li class="page-item"><a class="page-link ${pageClick == 0?'bg-click':''}" href="${request.contextPath}/admin/product/index?pageNo=0">First</a></li>
					    	<c:forEach var="page" items="${totalPageProduct}">
					    		<li class="page-item"><a class="page-link ${pageClick == page - 1?'bg-click':''}" href="${request.contextPath}/admin/product/index?pageNo=${page - 1}">${page}</a></li>
					    	</c:forEach>
					    <li class="page-item"><a class="page-link ${pageClick == pageProduct.getTotalPages() - 1?'bg-click':''}" href="${request.contextPath}/admin/product/index?pageNo=${pageProduct.getTotalPages() - 1}">Last</a></li>
					  </ul>
					</nav> --%>

							<!-- CHUYỂN TRANG -->
							<div class="card-footer d-flex justify-content-center">
								<nav aria-label="Page navigation example">
									<ul class="pagination mb-0">
										<li class="page-item"><a
											class="page-link bg-black bg-gradient text-info hover-bg-primary hover-color-white btn-lg"
											href="?pageNo=0" aria-label="Previous"> <span
												aria-hidden="true">&laquo;</span>
										</a></li>
										<c:forEach var="pageNum" items="${totalPageProduct}">
											<li
												class="page-item ${pageClick == pageNum - 1 ? 'active' : ''}">
												<a
												class="page-link bg-black bg-gradient text-info hover-bg-primary hover-color-white btn-lg"
												href="?pageNo=${pageNum - 1}"> ${pageNum} </a>
											</li>
										</c:forEach>
										<li class="page-item"><a
											class="page-link bg-black bg-gradient text-info hover-bg-primary hover-color-white btn-lg"
											href="?pageNo=${pageProduct.getTotalPages() - 1}"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/views/client_layout/footer.jsp" />

	<!-- 	 script bổ sung -->
	<script>
// 	của thể loại
	const showMoreBtn = document.getElementById('showMoreBtn');
	const showLessBtn = document.getElementById('showLessBtn');
	const extraList = document.getElementById('extraList');
	
	showMoreBtn.addEventListener('click', () => {
		  extraList.classList.remove('d-none');
		  showMoreBtn.classList.add('d-none');
		  showLessBtn.classList.remove('d-none');
		});

		showLessBtn.addEventListener('click', () => {
		  extraList.classList.add('d-none');
		  showMoreBtn.classList.remove('d-none');
		  showLessBtn.classList.add('d-none');
		});
// 	của nhà cung cấp
	const showMoreNCC = document.getElementById('showMoreNCC');
	const showLessNCC = document.getElementById('showLessNCC');
	const extraListNCC = document.getElementById('extraListNCC');
	
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
</body>
</html>