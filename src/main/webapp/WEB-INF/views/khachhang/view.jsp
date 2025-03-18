<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #e0e0e0;
        }
        .action a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <h1>Danh sách khách hàng</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên khách hàng</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${listKhachHang}">
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.tvt_name}</td>
                    <td>${customer.tvt_sdt}</td>
                    <td>${customer.tvt_email}</td>
                    <td>${customer.tvt_diachi}</td>
                    <td class="action">
                        <!-- Ví dụ: Link xóa khách hàng -->
                        <a href="${pageContext.request.contextPath}/listkh/khachhang/delete/${customer.id}" 
                           onclick="return confirm('Bạn có chắc chắn muốn xóa khách hàng này?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
