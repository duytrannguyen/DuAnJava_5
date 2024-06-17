<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style type="text/css">
.container {
	max-width: 1000px
}

.headerlogin {
	font-size: 30px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="/views/client_layout/header.jsp" />
	</header>
	<br>

	<div class="container d-flex justify-content-center">
		<div class="col-md-6">
			<div class="row">
				<div class="card">
					<div class="card-header">
						<a class="headerlogin"><strong><i
								class="bi bi-person-fill-lock"></i> Quên Mật Khẩu</strong> </a>
					</div>
					<div class="card-body">
						<form action="hoanthanh" method="get">
							<label>Mật khẩu mới:</label> <input name="passWord"
								class="form-control"
								placeholder="Mật khẩu phải nhiều hơn 8 kí tự" type="password">
							<br> <label>Xác nhận mật khẩu:</label> <input
								name="passWordConfirm" class="form-control"
								placeholder="Mật khẩu phải nhiều hơn 8 kí tự" type="password">
							<br>
							<button class="btn btn-outline-success">Tiếp tục</button>
							<button class="btn btn-outline-danger">Quay Lại</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/views/client_layout/footer.jsp" />
	</footer>
</body>
</html>