<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ Hàng</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

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
	padding: 20px;
}

a {
	color: black;
	text-decoration: none;
}
</style>
<body>
	<jsp:include page="/views/client_layout/header.jsp" />
	<div class="container">
		<p style="font-weight: bold;" class="mt-5">GIỎ HÀNG:</p>
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-9">
					<!-- <div class="card">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-6">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> Chọn tất cả </label>
								</div>
								<div class="col-md-3">
									<strong>Số Lượng</strong>
								</div>
								<div class="col-md-3">
									<strong>Thành Tiền</strong>
								</div>
							</div>
						</div>
					</div> -->
					<br>
					<div class="card">
						<div class="col-md-12">
							<div class="row">

								<table class="table">
									<thead>
										<tr>
											<a href="cart/${cartItemId}"><th><input
													class="form-check-input" type="checkbox" value="cartItem"
													id="cartItem" onclick="updateTotal()"> Tất cả</th></a>
											<th scope="col">Hình ảnh</th>
											<th scope="col">Tên sản phẩm</th>
											<th scope="col">Số lượng</th>
											<th scope="col">Giá</th>
											<th scope="col">Thành tiền</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${cartItems}">
											<form action="/cart/update" method="post">
												<input value="${item.cartItemId}" name="cartItemId"
													type="hidden" />

												<tr>

													<a href="cart/${cartItem.cartItemId}"><th><input
															class="form-check-input" type="checkbox" name="cartItemIds" value="${item.cartItemId}">
															</th></a>
													<td><img alt=""
														src="/Image_SP/${item.productId.imageId.imageName}"></td>
													<td>${item.productId.productName}</td>
													<td>
														<button class="btn btn-secondary btn-sm"
															onclick="decrementValue()">-</button> <input
														style="width: 30px;" value="${item.quantity}"
														name="quantity" onblur="this.form.submit();" />
														<button class="btn btn-secondary btn-sm"
															onclick="incrementValue()">+</button>
													</td>
													<td><b><fmt:formatNumber>${item.productId.price}</fmt:formatNumber></b>
														VNĐ</td>
													<td><b><fmt:formatNumber>${item.productId.price * item.quantity}</fmt:formatNumber></b>
														VNĐ</td>

													<td><a href="/cart/remove/${item.cartItemId}"><i
															class="fa-solid fa-trash" style="color: #ed2323;"></i></a></td>
												</tr>
											</form>
										</c:forEach>

									</tbody>
								</table>
								<%-- <c:forEach var="item" items="${cartItems}">

									<div class="col-md-2">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault1"> <label
												class="form-check-label" for="flexCheckDefault1"> <img
												src="/Image_SP/${item.productId.imageId.imageName}"
												style="width: auto; max-height: 119px">
											</label>
										</div>
									</div>
									<div class="col-md-4">
										<a href="#"> ${item.productId.productName }</a>
									</div>
									<div class="col-md-3">

										<div class="d-flex align-items-center">
											<button class="btn btn-secondary btn-sm"
												onclick="decrementValue()">-</button>
											<span class="mx-2" id="value" onblur="this.form.submit();">${item.quantity }</span>
											<button class="btn btn-secondary btn-sm"
												onclick="incrementValue()">+</button>
										</div>

										<input value="${item.cartId.quantity }">

									</div>
									<div class="col-md-2"
										style="color: red; padding-left: 25px; font-weight: bold;">${item.productId.price * item.quantity}</div>
									<div class="col-md-1" style="padding-left: 25px;">
										<i class="fa-solid fa-trash"></i>
									</div>

								</c:forEach>
 --%>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-9">
									Thành tiền: <span id="totalPrice">${cartItem.cartId.totalPrice}</span>
								</div>
								<div class="col-md-3">
									<span style="font-size: medium;"></span>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-8">
									<strong>Tổng Số Tiền (gồm VAT)</strong>
									<h3 id="grandTotal">${cartItem.cartId.totalPrice}</h3>
								</div>
								<div class="col-md-4">
									<strong class="text-danger" style="font-size: x-large;">
									</strong>
								</div>
							</div>
						</div>
						<br>
						<button type="button" class="btn btn-outline-primary">
							<a href="cart/pay" style="font-weight: bold;">Thanh Toán</a>
						</button>

					</div>
				</div>

			</div>
		</div>


	</div>
	<jsp:include page="/views/client_layout/footer.jsp" />

	<script type="text/javascript">
	
	
		function incrementValue(inputField) {
			var currentValue = parseInt(inputField.value);
			inputField.value = currentValue + 1;
			inputField.form.submit();
		}

		// Thêm sự kiện onclick cho các nút button
		var decrementBtns = document
				.querySelectorAll('.btn-secondary.btn-sm:first-of-type');
		var incrementBtns = document
				.querySelectorAll('.btn-secondary.btn-sm:last-of-type');

		decrementBtns.forEach(function(btn) {
			btn.addEventListener('click', function() {
				var inputField = this.nextElementSibling;
				decrementValue(inputField);
			});
		});

		incrementBtns.forEach(function(btn) {
			btn.addEventListener('click', function() {
				var inputField = this.previousElementSibling;
				incrementValue(inputField);
			});
		});
	</script>
</body>
</html>