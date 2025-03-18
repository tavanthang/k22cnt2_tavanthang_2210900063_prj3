<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanh toán đơn hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 50%;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
        }
        input, select {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group {
            display: flex;
            justify-content: space-between;
        }
        .form-group input {
            width: 48%;
        }
        .btn-submit {
            margin-top: 15px;
            background: #28a745;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-submit:hover {
            background: #218838;
        }
    </style>
    <script>
        function loadCartTotal() {
            var cartTotal = localStorage.getItem("cartTotal") || "0";
            document.getElementById("order_total").value = cartTotal;
        }
    </script>
</head>
<body onload="loadCartTotal()">
    <div class="container">
        <h1>Thanh toán đơn hàng</h1>

        <h2>Thông tin khách hàng</h2>
       <form method="post" action="/SpringMVCPagination/views/khachhang/view">
    <!-- Các trường input -->
    <label for="tvt_name">Tên khách hàng:</label>
    <input type="text" id="tvt_name" name="tvt_name" required>

    <label for="tvt_sdt">Số điện thoại:</label>
    <input type="text" id="tvt_sdt" name="tvt_sdt" required>

    <label for="tvt_email">Email:</label>
    <input type="email" id="tvt_email" name="tvt_email" required>

    <label for="tvt_diachi">Địa chỉ:</label>
    <input type="text" id="tvt_diachi" name="tvt_diachi" required>

    <h2>Thông tin thanh toán</h2>
    <label for="order_total">Tổng tiền:</label>
    <input type="text" id="order_total" name="order_total" readonly>

    <label for="payment_method">Phương thức thanh toán:</label>
    <select id="payment_method" name="payment_method" required>
        <option value="credit_card">Thẻ tín dụng</option>
        <option value="bank_transfer">Chuyển khoản ngân hàng</option>
        <option value="cash_on_delivery">Thanh toán khi nhận hàng</option>
    </select>

    <input type="submit" value="Thanh toán" class="btn-submit">
</form>

    </div>
</body>
</html>
