<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ Admin - Quản lý Cửa hàng Thời trang Trẻ em</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .header {
            background-color: #004080;
            color: white;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
        .container {
            display: flex;
            flex: 1;
        }
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background-color: #555;
        }
        .sidebar button {
            margin-top: 10px;
            padding: 10px;
            background-color: #0073e6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .sidebar button:hover {
            background-color: #005bb5;
        }
        .content {
            flex: 1;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .footer {
            background-color: #222;
            color: white;
            padding: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header">Trang Quản trị - Cửa hàng Thời trang Trẻ em</div>
    <div class="container">
        <div class="sidebar">
          <a href="/SpringMVCPagination/viewform/">Sản phẩm</a>
            <a href="/SpringMVCPagination/saveform/">Thêm sản phẩm</a>
            <a href="orders">Quản lý đơn hàng</a>
            <a href="user">Quản lý người dùng</a>
            <a href="/SpringMVCPagination/">Đăng xuất</a>
        </div>
        <div class="content">
            <h2>Chào mừng Admin!</h2>
            <p>Chọn một chức năng từ menu để bắt đầu quản lý cửa hàng.</p>
        </div>
    </div>
    <div class="footer">&copy; 2024 Quản trị Cửa hàng Thời trang Trẻ em</div>
</body>
</html>
