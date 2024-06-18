<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Information</title>
<link rel="stylesheet" href="/css/client/contact.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- link icon -->
<!-- FontAwesome 6.2.0 CSS -->
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- (Optional) Use CSS or JS implementation -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"
    integrity="sha512-naukR7I+Nk6gp7p5TMA4ycgfxaZBJ7MO5iC3Fp6ySQyKFHOGfpkSZkYVWV5R7u7cfAicxanwYQ5D1e17EfJcMA=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
    .fullscreen-container {
        height: 100vh; /* Full viewport height */
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }

    .fullscreen-container .container {
        max-width: 100%;
    }

    .fullscreen-container .row {
        width: 100%;
    }

    .custom-form {
        max-width: 500px;
        margin: auto;
    }

    .contact-info {
        max-width: 500px;
        margin: auto;
    }
</style>
</head>
<body>
    <jsp:include page="/views/client_layout/header.jsp" />
    <div class="page-heading normal-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Thông tin liên hệ</h1>
                </div>
            </div>
        </div>
    </div>
    <section class="contact-section section-padding mt-5 fullscreen-container" id="section_5">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-12 mx-auto">
                    <form class="custom-form ebook-download-form bg-white shadow" action="#" method="post" role="form">
                        <div class="text-center mb-5">
                            <h2 class="mb-1">Thông tin liên hệ</h2>
                        </div>
                        <div class="ebook-download-form-body">
                            <div class="input-group mb-4">
                                <input type="text" name="ebook-form-name" id="ebook-form-name" class="form-control"
                                    aria-label="ebook-form-name" aria-describedby="basic-addon1" placeholder="Your Name"
                                    required>
                                <span class="input-group-text" id="basic-addon1">
                                    <i class="custom-form-icon bi-person"></i>
                                </span>
                            </div>
                            <div class="input-group mb-4">
                                <input type="email" name="ebook-email" id="ebook-email" pattern="[^ @]*@[^ @]*"
                                    class="form-control" placeholder="your@company.com" aria-label="ebook-form-email"
                                    aria-describedby="basic-addon2" required="">
                                <span class="input-group-text" id="basic-addon2">
                                    <i class="custom-form-icon bi-envelope"></i>
                                </span>
                            </div>
                            <div class="col-lg-8 col-md-10 col-8 mx-auto">
                                <button type="submit" class="form-control">Download ebook</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="contact-info">
                        <h6 class="mt-5">Say hi and talk to us</h6>
                        <h2 class="mb-4">Contact</h2>
                        <p class="mb-3">
                            <i class="bi-geo-alt me-2"></i> Cần Thơ
                        </p>
                        <p class="mb-2">
                            <a href="tel: 010-020-0340" class="contact-link"> 037-020-9963 </a>
                        </p>
                        <p>
                            <a href="mailto:info@company.com" class="contact-link"> info@company.com </a>
                        </p>
                        <h6 class="site-footer-title mt-5 mb-3">Social</h6>
                        <ul class="social-icon mb-4">
                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-instagram"></a></li>
                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-twitter"></a></li>
                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-facebook"></a></li>
                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-whatsapp"></a></li>
                        </ul>
                        <p class="copyright-text">
                            Copyright © 2048 ebook company <br> <br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="/views/client_layout/footer.jsp" />
</body>
</html>
