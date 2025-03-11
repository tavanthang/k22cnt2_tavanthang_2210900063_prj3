<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            background: rgba(227, 242, 253, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            font-size: 28px;
            font-weight: bold;
            text-transform: uppercase;
            color: white;
            background: #1976d2; 
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #64b5f6; 
            border-radius: 5px;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            background: #1976d2; 
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .btn:hover {
            background: #64b5f6;
        }

        .back-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 10px;
            background: #1e88e5; 
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            transition: 0.3s;
        }

        .back-btn:hover {
            background: #1565c0; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Chỉnh Sửa Sản Phẩm</h1>
        <form:form method="POST" action="/SpringMVCPagination/luu">
            <table>
                <tr>
                    <td></td>
                    <td><form:hidden path="id" /></td>
                </tr>
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
        <a href="javascript:history.back()" class="back-btn">Quay Lại</a>
    </div>
</body>
</html>
