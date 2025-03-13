<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm</title>
</head>
<body>
    <h1>Thêm sản phẩm mới</h1>
    <form action="admin/add" method="post">
        <label for="name">Tên sản phẩm:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="price">Giá:</label>
        <input type="number" id="price" name="price" required><br>
        <button type="submit">Thêm</button>
    </form>
</body>
</html>
