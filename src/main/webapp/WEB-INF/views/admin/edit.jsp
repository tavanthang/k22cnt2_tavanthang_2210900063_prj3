<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa Admin</title>
</head>
<body>
    <h2>Chỉnh sửa Admin</h2>

    <form action="../update" method="post">
        <input type="hidden" name="id" value="${admin.id}">

        <label for="tvt_TaiKhoan">Tài khoản:</label>
        <input type="text" id="tvt_TaiKhoan" name="tvt_TaiKhoan" value="${admin.tvt_TaiKhoan}" required>
        <br>

        <label for="tvt_MatKhau">Mật khẩu mới:</label>
        <input type="password" id="tvt_MatKhau" name="tvt_MatKhau">
        <br>

        <label for="tvt_TrangThai">Trạng thái:</label>
        <select id="tvt_TrangThai" name="tvt_TrangThai">
            <option value="true" ${admin.tvt_TrangThai ? "selected" : ""}>Hoạt động</option>
            <option value="false" ${!admin.tvt_TrangThai ? "selected" : ""}>Khóa</option>
        </select>
        <br>

        <button type="submit">Cập nhật</button>
    </form>

    <p><a href="../list">Quay lại danh sách</a></p>
</body>
</html>
