<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            margin: 0;
            padding: 0;
            color: #333;
            text-align: center;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            margin: 30px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #ff6f61;
            padding: 15px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background: #ff6f61;
            color: white;
        }

        td img {
            width: 80px;
            height: 80px;
            border-radius: 8px;
        }

        .action-btn {
            padding: 8px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            transition: 0.3s;
        }

        .delete-btn {
            background: #e74c3c;
            color: white;
        }

        .delete-btn:hover {
            background: #c0392b;
        }

        .checkout-btn {
            display: inline-block;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            background: #28a745;
            border-radius: 8px;
            text-decoration: none;
            margin-top: 15px;
            transition: 0.3s;
        }

        .checkout-btn:hover {
            background: #218838;
        }

        .empty-message {
            font-size: 18px;
            color: #555;
        }

        .back-btn {
            display: inline-block;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background: #3498db;
            border-radius: 8px;
            text-decoration: none;
            margin-top: 15px;
            transition: 0.3s;
        }

        .back-btn:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Giỏ Hàng</h1>

        <c:if test="${not empty cartItems}">
            <table>
                <thead>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Ảnh</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Tổng tiền</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${cartItems}">
                        <tr>
                            <td>${item.tvt_name}</td>
                            <td><img src="${item.tvt_hinhanh}" alt="Ảnh sản phẩm"></td>
                            <td>${item.tvt_gia} VND</td>
                            <td>${item.tvt_soluong}</td>
                            <td>${item.tvt_gia * item.tvt_soluong} VND</td>
                            <td><a href="xoagiohang/${item.id}" class="action-btn delete-btn">Xóa</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <h3><strong>Tổng cộng:</strong> ${totalAmount} VND</h3>
            <a href="khachhang" class="checkout-btn">Thanh toán</a>
        </c:if>

        <c:if test="${empty cartItems}">
            <p class="empty-message">Giỏ hàng của bạn hiện tại trống.</p>
        </c:if>

        <a href="viewform" class="back-btn">Tiếp tục mua sắm</a>
    </div>
</body>
</html>
