<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản Phẩm</title>
     <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            margin: 0;
            padding: 0;
            color: white;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            color: #f1c40f;
            background: rgba(255, 255, 255, 0.2);
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 10px;
        }

        .product-item {
            background: rgba(255, 255, 255, 0.2);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 250px;
            border-left: 5px solid #f1c40f;
            transition: transform 0.3s;
        }

        .product-item:hover {
            transform: scale(1.05);
        }

        .product-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .product-item a {
            display: inline-block;
            margin: 10px 5px;
            padding: 10px 15px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
        }

        .buy-btn { background: #27ae60; }
        .edit-btn { background: #f39c12; }
        .delete-btn { background: #c0392b; }

        .action-buttons {
            margin-top: 20px;
        }

        .action-buttons a {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            background: #2980b9;
            transition: 0.3s;
        }

        .action-buttons a:hover {
            background: #3498db;
        }

        .footer {
            margin-top: 20px;
            padding: 10px;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            text-align: center;
            border-radius: 0 0 10px 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thêm Sản Phẩm</h1>
        <form:form method="post" action="save" modelAttribute="command">
            <table>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><form:input path="tvt_name" /></td>
                </tr>
                <tr>
                    <td>Ảnh URL:</td>
                    <td><form:input path="tvt_hinhanh" /></td>
                </tr>
                <tr>
                    <td>Giá:</td>
                    <td><form:input path="tvt_gia" type="number" /></td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td><form:input path="tvt_soluong" type="number" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Lưu Sản Phẩm" />
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
