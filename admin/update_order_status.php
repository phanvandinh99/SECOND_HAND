<?php
include('includes/db_connection.php'); // Bao gồm kết nối đến cơ sở dữ liệu

// Kiểm tra kết nối và tiếp tục thực thi câu lệnh nếu kết nối thành công
if ($pdo) {
    // Tiến hành truy vấn hoặc các thao tác khác sử dụng PDO
    $stmt = $pdo->prepare("UPDATE orders SET status = :status WHERE id = :id");
    $stmt->execute([
        ':status' => $newStatus,  // Thay đổi status theo giá trị mới
        ':id' => $orderId,        // Thay đổi theo ID đơn hàng
    ]);
    echo "Trạng thái đơn hàng đã được cập nhật!";
} else {
    echo "Không thể kết nối với cơ sở dữ liệu!";
}
?>
