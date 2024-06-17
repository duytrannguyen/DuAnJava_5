<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
			<style type="text/css">
			.container {
				max-width: 1000px
			}
			.headerlogin{
				font-size: 30px;
			}
			
			</style>
</head>
<body>
<br>
<header>
		<jsp:include page="/views/client_layout/header.jsp"/>
	</header>
<div class="container d-flex justify-content-center">
		<div class="col-md-6">
			<div class="row">
				<div class="card">
					<div class="card-header">
							<a class="headerlogin"><i class="bi bi-shield-lock"></i> Quên Mật Khẩu</strong> </a>
					</div>
					<div class="card-body">
						 <form action="forgotPassword" method="get">
						 <label>Hãy nhập gmail của bạn:</label>
						<input name="eMail" class="form-control" placeholder="Gmail" type="text">
						<label><i class="bi bi-envelope"></i> Nhập Mã:</label>
						<input name="eMail" class="form-control" placeholder="Nhập OTP từ gmail của bạn" type="text">
						 <br>
<!-- 						 <a class="dang-ky" href="" > Bạn chưa có tài khoản?</a> -->
<!-- 						 <br> -->
						 <button class="btn btn-outline-success">Tiếp tục</button>
						 <button class="btn btn-outline-danger">Quay Lại</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
<footer>
	<jsp:include page="/views/client_layout/footer.jsp"/>
	</footer>
</body>
</html>