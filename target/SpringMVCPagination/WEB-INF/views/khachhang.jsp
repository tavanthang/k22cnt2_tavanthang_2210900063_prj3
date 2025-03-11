<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid black; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>Danh sách khách hàng</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên khách hàng</th>
            <th>Sản phẩm</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Hình ảnh</th>
            <th>Giá</th>
            <th>Số lượng</th>
        </tr>
        <c:forEach var="kh" items="${customers}">
            <tr>
                <td>${kh.id}</td>
                <td>${kh.tvt_name}</td>
                <td>${kh.tvt_sanpham}</td>
                <td>${kh.tvt_sdt}</td>
                <td>${kh.tvt_email}</td>
                <td><img src="images/${kh.tvt_hinhanh}" width="50"></td>
                <td>${kh.tvt_gia} VND</td>
                <td>${kh.tvt_soluong}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
