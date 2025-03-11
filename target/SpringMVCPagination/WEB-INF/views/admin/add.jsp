<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Admin</title>
</head>
<body>
    <h2>Thêm Admin</h2>

    <form action="add" method="post">
        <label for="tvt_TaiKhoan">Tài khoản:</label>
        <input type="text" id="tvt_TaiKhoan" name="tvt_TaiKhoan" required>
        <br>

        <label for="tvt_MatKhau">Mật khẩu:</label>
        <input type="password" id="tvt_MatKhau" name="tvt_MatKhau" required>
        <br>

        <label for="tvt_TrangThai">Trạng thái:</label>
        <select id="tvt_TrangThai" name="tvt_TrangThai">
            <option value="true">Hoạt động</option>
            <option value="false">Khóa</option>
        </select>
        <br>

        <button type="submit">Thêm</button>
    </form>

    <p><a href="list">Quay lại danh sách</a></p>
</body>
</html>
