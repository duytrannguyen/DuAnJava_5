<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh Toán</title>
<link rel="stylesheet" href="/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
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

<style type="text/css">
.card {
	margin-top: 15px;
	padding: 20px;
}

body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	margin: 0;
}

form {
	font-size: small;
}

.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
}

.form-control {
	font-size: small;
}

.giaGiam {
	text-decoration: line-through;
}
</style>
</head>

<body>
<jsp:include page="/views/client_layout/header.jsp" />
	<div class="container">
		<div class="card mt-5">
			<strong>ĐỊA CHỈ GIAO HÀNG</strong>
			<hr>
			<form>
				<div class="row mb-3">
					<label for="inputEmail3" class="col-sm-2 col-form-label">Họ
						và tên người nhận</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="Nhập họ và tên">
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword33" class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputPassword33"
							placeholder="Nhập email">
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputEmail1" class="col-sm-2 col-form-label">Số
						điện thoại</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail1"
							placeholder="10 ký tự số">
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword2" class="col-sm-2 col-form-label">Tỉnh/Thành
						Phố</label>
					<div class="col-sm-10">
						<select class="form-select form-control"
							aria-label="Default select example">
							<option selected>Hà Nội</option>
							<option value="1">TP.Hồ Chí Minh</option>
							<option value="2">Cần Thơ</option>
							<option value="3">Bạc Liêu</option>
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword4" class="col-sm-2 col-form-label">Quận/Huyện</label>
					<div class="col-sm-10">
						<select class="form-select form-control"
							aria-label="Default select example">
							<option value="4">Ninh Kiều</option>
							<option value="1">Cái Răng</option>
							<option value="2">Bình Thuỷ</option>
							<option value="3">Cờ Đỏ</option>
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword5" class="col-sm-2 col-form-label">Phường/Xã</label>
					<div class="col-sm-10">
						<select class="form-select form-control"
							aria-label="Default select example">
							<option value="4">Lê Bình</option>
							<option value="1">Hưng Thạnh</option>
							<option value="2">Hưng Phú</option>
							<option value="3">Thường Thạnh</option>
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword6" class="col-sm-2 col-form-label">Địa
						chỉ nhận hàng</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="Nhập địa chỉ nhận hàng">
					</div>
				</div>
			</form>
		</div>

		<div class="card">
			<strong>PHƯƠNG THỨC VẬN CHUYỂN</strong>
			<hr>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios"
					id="exampleRadios1" value="option1" checked> <label
					class="form-check-label" for="exampleRadios1"><strong>
						Giao hàng tiêu chuẩn: 32.000 đ</strong><br> <span
					style="font-size: small;">Thứ 6 - 25/6</span> </label>
			</div>
		</div>

		<div class="card">
			<strong>PHƯƠNG THỨC THANH TOÁN</strong>
			<hr>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios1"
					id="exampleRadios11" value="option1" checked> <label
					class="form-check-label" for="exampleRadios11"><i
					class="fa-regular fa-credit-card" style="font-size: x-large;"></i>
					ATM/ Internet Banking </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios1"
					id="exampleRadios2" value="option2"> <label
					class="form-check-label" for="exampleRadios2"><i
					class="fa-regular fa-money-bill-1" style="font-size: x-large;"></i>
					Thanh toán tiền mặt khi nhận hàng </label>
			</div>
		</div>

		<div class="card">
			<strong>THÔNG TIN KHÁC</strong>
			<hr>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckDefault"> <label class="form-check-label"
					for="flexCheckDefault"> Ghi Chú </label>
			</div>
			<div id="email-input-container" style="display: none;">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="Ghi chú"> <label for="floatingInput">Ghi
						chú</label>
				</div>
			</div>
		</div>

		<div class="card" style="margin-bottom: 250px;">
			<strong>KIỂM TRA LẠI ĐƠN HÀNG</strong>
			<hr>
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2">
						<img alt="" src="/images/sach4.jpg"
							style="width: width: 100px; height: 150px;">
					</div>
					<div class="col-md-7">
						<span>Công Bằng Trên Đời Là Do Bạn Nỗ Lực Giành Lấy</span>
					</div>
					<div class="col-md-1">
						<span>1</span>
					</div>
					<div class="col-md-1">
						<span>89.000đ</span> <br> <span
							class="giaGiam text-body-tertiary">99.000 đ</span>
					</div>
					<div class="col-md-1">
						<span class="text-primary fw-bold">89.000 đ</span>
					</div>
				</div> <hr>
				
			</div>
		</div>
	</div>
	<br>
	<footer class="footer">
		<div class="card">
			<div class="container">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">
							<p class="text-end">Thành tiền</p>
							<p class="text-end">Phí vận chuyển (Giao hàng tiêu chuẩn)</p>
							<p class="text-end fw-bold">Tổng tiền (gồm VAT)</p>
						</div>

						<div class="col-md-1">
							<p class="text-end">121.000 đ</p>
							<p class="text-end">32.000 đ</p>
							<p class="text-end text-primary fw-bold">89.000 đ</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</div>
				<hr>
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-7">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckChecked" checked> <label
									class="form-check-label" for="flexCheckChecked"> Bằng
									việc xác nhận mua hàng, bạn đã hoàn toàn đồng ý với
									<p>
										<a href="#"
											class="link-danger link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover fw-bold">Điều
											khoản & Điều kiện</a> của chúng tôi.
									</p>
								</label>
							</div>
						</div>
						<div
							class="col-md-5 d-flex justify-content-center align-items-center">
							<button type="button" class="btn btn-outline-primary my-0">XÁC
								NHẬN THANH TOÁN</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script type="text/javascript">
		const checkbox = document.getElementById('flexCheckDefault');
		const emailInputContainer = document
				.getElementById('email-input-container');
		const emailInput = document.getElementById('floatingInput');

		checkbox.addEventListener('change', function() {
			if (this.checked) {
				emailInputContainer.style.display = 'block';
				emailInput.focus();
			} else {
				emailInputContainer.style.display = 'none';
			}
		});
	</script>
</body>

</html>