<!DOCTYPE html><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán thành công</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #4CAF50, #8BC34A);
            margin: 0;
            padding: 0;
            text-align: center;
            color: white;
        }
        .container {
            width: 80%;
            max-width: 600px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            color: #333;
        }
        h1 {
            color: #2E7D32;
        }
        .success-icon {
            font-size: 50px;
            color: #4CAF50;
        }
        .btn {
            display: inline-block;
            padding: 12px 20px;
            margin: 20px 10px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            transition: 0.3s;
        }
        .home-btn {
            background: #007BFF;
            color: white;
        }
        .home-btn:hover {
            background: #0056b3;
        }
        .shop-btn {
            background: #FFC107;
            color: white;
        }
        .shop-btn:hover {
            background: #e0a800;
        }
    </style>
</head>
<body>
    <div class="container">
        <span class="success-icon">✔️</span>
        <h1>Thanh toán thành công!</h1>
        <p>Cảm ơn bạn đã mua hàng. Đơn hàng của bạn đang được xử lý.</p>
        <a href="/SpringMVCPagination/" class="btn home-btn">Về trang chủ</a>
        <a href="/SpringMVCPagination/viewform/" class="btn shop-btn">Tiếp tục mua sắm</a>
    </div>
</body>
</html>
