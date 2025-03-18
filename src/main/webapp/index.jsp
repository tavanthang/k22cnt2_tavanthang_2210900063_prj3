<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang web thời trang trẻ em của văn thắng</title>
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
        .sidebar input {
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: none;
            width: 80%;
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
            position: relative;
        }
        .banner {
            background: url('banner.jpg') center/cover no-repeat;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 28px;
            font-weight: bold;
        }
        .carousel {
            display: flex;
            overflow: hidden;
            margin-top: 20px;
            position: relative;
        }
        .carousel img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .carousel button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .carousel .prev {
            left: 10px;
        }
        .carousel .next {
            right: 10px;
        }
        .buy-btn {
            display: inline-block;
            text-decoration: none;
            background-color: #28a745;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
        }
        .buy-btn:hover {
            background-color: #218838;
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
    <div class="header">Chào mừng đến cửa hàng thời trang trẻ em</div>
    <div class="banner">Ưu đãi đặc biệt cho mùa hè!</div>
    <div class="container">
        <div class="sidebar">
            <input type="text" placeholder="Tìm kiếm...">
            <button>Tìm kiếm</button>
            <a href="viewform">Sản phẩm</a>
            <a href="giohang">Giỏ hàng</a>
            <a href="admin/login">Đăng nhập</a>
            <a href="admin/register">Đăng ký</a>
        </div>
        <div class="content">
            <div class="carousel">
                <button class="prev">❮</button> 
                <img src="https://product.hstatic.net/200000465365/product/set-ao-so-mi-ca-vat-quan-kaki-8_765bf7c0bcef4c1d883884d82c60c5c4_grande.jpg" alt="Sản phẩm 1">
                <img src="https://product.hstatic.net/200000465365/product/pijama-mac-nha-be-gai-5_ed9c917bc3aa4f008e4921dd37c66b6f_grande.jpg" alt="Sản phẩm 2">
                <img src="product3.jpg" alt="Sản phẩm 3">
                <button class="next">❯</button>
            </div>
            <p>Chào mừng bạn đến với cửa hàng thời trang trẻ em! Hãy khám phá các sản phẩm mới nhất của chúng tôi.</p>
            <a href="viewform" class="buy-btn">Mua ngay</a>
            <a href="support" class="buy-btn">Liên hệ hỗ trợ</a>
        </div>
    </div>
    <div class="footer">&copy; 2024 Trang Web của Tạ Văn Thắng</div>
</body>
</html>
