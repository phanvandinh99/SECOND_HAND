<footer class="footer bg-light text-muted pt-5 pb-4">
    <div class="container">
        <div class="row">
            <!-- Thông tin công ty -->
            <div class="col-md-3 mb-4">
                <h5 class="footer-title text-dark">VỀ CHÚNG TÔI</h5>
                <p class="text-muted">Chúng tôi cung cấp các sản phẩm chất lượng cao và dịch vụ khách hàng tận tâm. Khám phá thêm về chúng tôi ngay hôm nay!</p>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-muted">Giới thiệu công ty</a></li>
                    <li><a href="#" class="text-muted">Tuyển dụng</a></li>
                    <li><a href="#" class="text-muted">Chính sách bảo mật</a></li>
                    <li><a href="#" class="text-muted">Điều khoản sử dụng</a></li>
                </ul>
            </div>

            <!-- Dịch vụ khách hàng -->
            <div class="col-md-3 mb-4">
                <h5 class="footer-title text-dark">DỊCH VỤ KHÁCH HÀNG</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-muted">Hướng dẫn mua hàng</a></li>
                    <li><a href="#" class="text-muted">Chính sách đổi trả</a></li>
                    <li><a href="#" class="text-muted">Phương thức thanh toán</a></li>
                    <li><a href="#" class="text-muted">Chăm sóc khách hàng</a></li>
                </ul>
            </div>

            <!-- Liên kết mạng xã hội (hàng dọc) -->
            <div class="col-md-3 mb-4">
                <h5 class="footer-title text-dark">KẾT NỐI VỚI CHÚNG TÔI</h5>
                <ul class="list-unstyled d-flex flex-column">
                    <li class="social-icon mb-3">
                        <a href="https://www.facebook.com" class="text-muted">
                            <i class="bi bi-facebook"></i> Facebook
                        </a>
                    </li>
                    <li class="social-icon mb-3">
                        <a href="https://www.instagram.com" class="text-muted">
                            <i class="bi bi-instagram"></i> Instagram
                        </a>
                    </li>
                    <li class="social-icon mb-3">
                        <a href="https://www.twitter.com" class="text-muted">
                            <i class="bi bi-twitter"></i> Twitter
                        </a>
                    </li>
                    <li class="social-icon mb-3">
                        <a href="https://www.linkedin.com" class="text-muted">
                            <i class="bi bi-linkedin"></i> LinkedIn
                        </a>
                    </li>
                    <li class="social-icon mb-3">
                        <a href="https://www.youtube.com" class="text-muted">
                            <i class="bi bi-youtube"></i> YouTube
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Thông tin liên hệ -->
            <div class="col-md-3 mb-4">
                <h5 class="footer-title text-dark">LIÊN HỆ</h5>
                <ul class="list-unstyled">
                    <li><a href="tel:+84987654321" class="text-muted"><i class="bi bi-telephone"></i> 0987654321</a></li>
                    <li><a href="mailto:info@company.com" class="text-muted"><i class="bi bi-envelope"></i>tuankietpt03@gmail.com</a></li>
                    <li><a href="#" class="text-muted"><i class="bi bi-geo-alt"></i>Quận Tây Hồ, TP Hà Nội</a></li>
                </ul>
            </div>
        </div>

        <!-- Footer Dưới -->
        <div class="row mt-5">
            <div class="col-12 text-center">
                <hr class="my-4" style="border-top: 1px solid #ddd;">
                <p class="text-muted">© 2025 Công Ty XYZ. Bảo lưu mọi quyền. | <a href="#" class="text-muted">Chính sách bảo mật</a></p>
            </div>
        </div>
    </div>
</footer>

<!-- Thêm Bootstrap Icons -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>

<!-- CSS cho Footer -->
<style>
    .footer {
        background-color: #f8f9fa; /* Màu xám sáng */
        color: #6c757d; /* Màu chữ xám */
        padding-top: 40px;
        padding-bottom: 40px;
    }

    .footer .footer-title {
        font-weight: bold;
        color: #343a40; /* Màu chữ tối cho tiêu đề */
        margin-bottom: 15px;
    }

    .footer ul li a {
        font-size: 14px;
        color: #6c757d;
        text-decoration: none;
    }

    .footer ul li a:hover {
        color: #007bff; /* Màu xanh cho liên kết khi hover */
        text-decoration: underline;
    }

    .footer hr {
        border-top: 1px solid #ddd;
        margin-top: 30px;
    }

    .footer .text-muted {
        font-size: 14px;
    }

    /* Chỉnh các biểu tượng mạng xã hội */
    .footer .social-icon {
        margin-bottom: 15px; /* Tạo khoảng cách giữa các biểu tượng */
    }

    .footer .social-icon a {
        color: #6c757d;
        transition: all 0.3s ease;
    }

    .footer .social-icon a:hover {
        color: #007bff; /* Màu hover cho biểu tượng */
        transform: scale(1.2);
    }

    .footer .bi {
        margin-right: 10px;
    }


.footer .col-md-3 {
    border-right: 1px solid #ddd; /* Dòng kẻ dọc giữa các cột */
    padding-right: 30px; /* Khoảng cách phải cho các mục */
    padding-left: 30px; /* Khoảng cách trái cho các mục */
}

.footer .col-md-3:last-child {
    border-right: none; /* Không có dòng kẻ cho cột cuối cùng */
}

.footer .footer-title {
    margin-bottom: 20px; /* Tạo khoảng cách cho tiêu đề */
}

.footer .list-unstyled {
    margin-bottom: 0;
}

/* Đảm bảo chiều rộng các cột không bị chật */
@media (max-width: 768px) {
    .footer .col-md-3 {
        border-right: none; /* Loại bỏ dòng kẻ dọc trên thiết bị nhỏ */
        margin-bottom: 20px; /* Thêm khoảng cách dưới mỗi cột */
    }
}

</style>
