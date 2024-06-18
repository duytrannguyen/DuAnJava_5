<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<!-- <!-- link icon -->
<!-- <!-- FontAwesome 6.2.0 CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- <!-- (Optional) Use CSS or JS implementation -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"
	integrity="sha512-naukR7I+Nk6gp7p5TMA4ycgfxaZBJ7MO5iC3Fp6ySQyKFHOGfpkSZkYVWV5R7u7cfAicxanwYQ5D1e17EfJcMA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style type="text/css">
.card {
	margin-top: 15px;
	padding: 20px;
}

.form-control {
	font-size: small;
}

.col-form-label {
	font-size: small;
}

a {
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="/admin">Home</a></li>
			<li class="breadcrumb-item"><a href="/admin/voucher/list">Voucher</a></li>
			<li class="breadcrumb-item active text-primary" aria-current="page">Add</li>
		</ol>
	</nav>
	<div class="container">

		<div class="card">
			<form:form modelAttribute="vc" action="/admin/voucher/create"
				method="post">
				<b class="form-check">Thông Tin Voucher</b>
				<hr>
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6">
							<div class="mb-3 row">
								<label for="discountCode" class="col-sm-5 col-form-label">Mã
									Voucher</label>
								<div class="col-sm-7">
									<form:input type="text"
										class="form-control border-bottom border-1 grey"
										id="discountCode" path="discountCode"
										value="${verificationCode}" required="true" />
									<div class="text-danger col-form-label">
										<form:errors path="discountCode" />
									</div>
								</div>
							</div>
							<hr>
							<div class="mb-3 row">
								<label for="quantity" class="col-sm-5 col-form-label">Số
									Lượng Voucher</label>
								<div class="col-sm-7">
									<form:input type="number"
										class="form-control border-bottom border-1 grey" id="quantity"
										path="quantity" />
									<div class="text-danger col-form-label">
										<form:errors path="quantity" />
									</div>
								</div>
							</div>
							<hr>
							<div class="mb-3 row">
								<label for="discountType" class="col-sm-5 col-form-label">Loại
									Voucher</label>
								<div class="col-sm-7">
									<select name="discountType" class="form-control">
										<c:forEach var="c" items="${discountType}">
											<option value="${c.discountTypeId}">${c.discountTypeName}</option>
										</c:forEach>
									</select>
									<div class="text-danger col-form-label">
										<form:errors path="discountType" />
									</div>
								</div>
							</div>
							<hr>
							<div class="mb-3 row">
								<label for="minInvoiceAmount" class="col-sm-5 col-form-label">Giá
									Áp Dụng</label>
								<div class="col-sm-7">
									<form:input type="number"
										class="form-control border-bottom border-1 grey"
										id="minInvoiceAmount" path="minInvoiceAmount" min="20000" />
									<div class="text-danger col-form-label">
										<form:errors path="minInvoiceAmount" />
									</div>
								</div>
							</div>
							<hr>
						</div>
						<div class="col-md-6">
							<div class="mb-3 row">
								<label for="startDate" class="col-sm-5 col-form-label">Ngày
									Bắt Đầu</label>
								<div class="col-sm-7">
									<form:input type="date"
										class="form-control border-bottom border-1 grey"
										id="startDate" path="startDate" />
									<div class="text-danger col-form-label">
										<form:errors path="startDate" />
									</div>
								</div>
							</div>
							<hr>
							<div class="mb-3 row">
								<label for="endDate" class="col-sm-5 col-form-label">Ngày
									Kết Thúc</label>
								<div class="col-sm-7">
									<form:input type="date"
										class="form-control border-bottom border-1 grey" id="endDate"
										path="endDate" />
									<div class="text-danger col-form-label">
										<form:errors path="endDate" />
									</div>
								</div>
							</div>
							<hr>
							<div class="mb-3 row">
								<label for="minInvoiceAmount" class="col-sm-5 col-form-label">Giá
									Trị Voucher</label>
								<div class="col-sm-7">
									<form:input type="number"
										class="form-control border-bottom border-1 grey"
										id="discountValue" path="discountValue" min="5000" required="true"/>
									<div class="text-danger col-form-label">
										<form:errors path="discountValue" />
									</div>
								</div>
							</div>
							<hr>
							<div class="col-md-12 text-end">
								<button type="submit" class="btn btn-primary btn-sm">
									<i class="fa-solid fa-floppy-disk"></i> Lưu
								</button>
								<button type="reset" class="btn btn-primary btn-sm">
									<i class="fa-solid fa-floppy-disk"></i> Reset
								</button>
								<button type="button" class="btn btn-secondary btn-sm"
									data-bs-dismiss="modal">Đóng</button>
							</div>
						</div>

					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>