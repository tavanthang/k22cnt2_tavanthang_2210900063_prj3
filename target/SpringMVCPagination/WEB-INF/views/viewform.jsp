<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh Sách Sản Phẩm</title>
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
        <h1>Danh Sách Sản Phẩm</h1>
        <div class="product-list">
            <c:forEach var="product" items="${list}">
                <div class="product-item">
                    <h2>${product.tvt_name}</h2>
                    <img src="${product.tvt_hinhanh}" alt="Hình ảnh sản phẩm"/>
                    <p>Giá: ${product.tvt_gia}</p>
                    <p>Số Lượng: ${product.tvt_soluong}</p>
                    <a href="<c:url value='/add-to-cart'>
                        <c:param name='id' value='${product.id}'/>
                        <c:param name='tvt_name' value='${product.tvt_name}'/>
                        <c:param name='tvt_hinhanh' value='${product.tvt_hinhanh}'/>
                        <c:param name='tvt_gia' value='${product.tvt_gia}'/>
                    </c:url>" class="buy-btn">
                        Mua
                    </a>
                    <a href="sua/${product.id}" class="edit-btn">Edit</a>
                    <a href="xoa/${product.id}" class="delete-btn">Delete</a>
                </div>
            </c:forEach>
        </div>
        <div class="action-buttons">
            <a href="saveform">Thêm Sản Phẩm</a>
            <a href="giohang">Giỏ Hàng</a>
        </div>
        <br/>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>
    <div class="footer">
        &copy; 2025 Web quản lý thời trang trẻ em - Tạ Văn Thắng
    </div>
</body>
</html>
