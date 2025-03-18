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
        table {
            margin: 0 auto;
        }
        table td {
            padding: 10px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            background: #27ae60;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #2ecc71;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thêm Sản Phẩm</h1>
        <!-- Sử dụng đường dẫn tuyệt đối với context path -->
        <form:form method="post" action="${pageContext.request.contextPath}/save" modelAttribute="command">
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
