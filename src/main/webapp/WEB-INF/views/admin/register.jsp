<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký Admin</title>
</head>
<body>
    <h2>Đăng ký Admin</h2>

    <%-- Hiển thị lỗi nếu có --%>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="register" method="post">
        <label for="tvt_TaiKhoan">Tài khoản:</label>
        <input type="text" id="tvt_TaiKhoan" name="tvt_TaiKhoan" required>
        <br>

        <label for="tvt_MatKhau">Mật khẩu:</label>
        <input type="password" id="tvt_MatKhau" name="tvt_MatKhau" required>
        <br>

        <button type="submit">Đăng ký</button>
    </form>

    <p>Đã có tài khoản? <a href="login.jsp">Đăng nhập</a></p>
</body>
</html>
