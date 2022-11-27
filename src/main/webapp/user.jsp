<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Order" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.controller.Util" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Voucher" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>

    <!-- Custom StyleSheet -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="../jquery/jquery-ui-1.13.0.custom/jquery-ui.js"></script>
    <script src="../js/mainUser.js"></script>
    <link rel="stylesheet" href="../css/userstyles.css"/>
    <link rel="stylesheet" href="../css/mainUser.css">
    <link rel="stylesheet" href="../jquery/jquery-ui-user.css">
    <link rel="stylesheet" href="../css/cssheader.css">

    <title>Phone Shop</title>
</head>

<body>
<%
    User user = null;
    if (session.getAttribute("user") == null)
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    else {
        user = (User) session.getAttribute("user");
    }%>
<header id="header" class="header">
    <div class="navigation">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="./images/sprite.svg#icon-menu"></use>
                    </svg>
                </div>

                <div class="nav__logo">
                    <a href="/phone_nam/homelogin.html" class="scroll-link">
                        JC SHOP
                    </a>
                </div>

                <div class="nav__menu">
                    <div class="menu__top">
                        <span class="nav__category">PHONE</span>
                        <a href="#" class="close__toggle">
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-cross"></use>
                            </svg>
                        </a>
                    </div>
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="/phone_nam/homelogin.html" class="nav__link scroll-link">Trang chủ</a>
                        </li>
                        <li class="nav__item">
                            <a href="/phone_nam/homelogin.html" class="nav__link scroll-link">Sản phẩm</a>
                        </li>
                        <li class="nav__item_seach">
                            <input class="input_seach" id="input_seach" type="text" placeholder="seach...">
                            <div class="nav__icons">
                                <a href="#" class="icon__item" id="icon__item_seach">
                                    <svg class="icon__search">
                                        <use xlink:href="./images/sprite.svg#icon-search"></use>
                                    </svg>
                                </a>
                            </div>
                        </li>
                        <li class="nav__item">

                            <div class="nav__item_hotro">
                                <a href="#hotro" class="nav__link scroll-link">HOTLINE HỖ TRỢ</a> <br>
                                <a href="#hotro" class="nav__link scroll-link">0797.74.76.76</a>
                            </div>
                        </li>

                    </ul>
                </div>

                <div class="nav__icons">
                    <a href="user.html" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="./images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>
                    <div class="nav__item_user" id="nav__item_user">
                        <a href="#login" class="nav__link scroll-link">Hello Minh Thuận</a> <br>
                        <!-- <a  href="#register" class="nav__link scroll-link">Đăng Ký</a><br> -->
                        <a href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="/phone_chuong/cart.html" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total">4</span>
                    </a>
                    <a href="/phone_chuong/cart.html" class="nav__link_giohang">Giỏ Hàng</a>
                </div>
            </nav>
        </div>
    </div>
    <div class="page__title-area">
        <div class="container">
            <div class="page__title-container">
                <ul class="page__titles">
                    <li>
                        <a href="/">
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-home"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="page__title">User</li>
                </ul>
            </div>
        </div>
    </div>
</header>


<main id="main">
    <div class="container">
        <div class="contentDiv">
            <div class="leftContent">
                <div class="account">
                    <img src="<%=user.getImg()%>" alt="avatar" class="avatar">
                    <div class="nameAccount">
                        <p class="userName"><%=user.getName()%>
                        </p>
                        <p class="changeTop">Sửa hồ sơ</p>
                    </div>
                </div>
                <div class="navbody">
                    <div class="item">
                        <img src="../phone_thuan/images/account.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 1">Tài khoản của tôi</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../phone_thuan/images/donHang.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 2">Đơn mua</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../phone_thuan/images/notification.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 3">Thông báo</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../phone_thuan/images/coupon.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 4">Kho Voucher</p>
                        </div>
                    </div>
                    <div>
                        <a href="/index.jsp">
                            <a href="/LogoutServlet"><button class="DangXuat">Đăng Xuất</button></a>
                        </a>
                    </div>
                </div>
            </div>
            <div class="rightContent">
                <div id="tabs">
                    <ul>
                        <li><a href="#tabs-1">Tất cả</a></li>
                        <li><a href="#tabs-2">Chờ xác nhận</a></li>
                        <li><a href="#tabs-3">Chờ lấy hàng</a></li>
                        <li><a href="#tabs-4">Đang giao</a></li>
                        <li><a href="#tabs-5">Đã giao</a></li>
                        <li><a href="#tabs-6">Đã hủy</a></li>
                    </ul>
                        <%List<Order> list = DataDB.getOrders(user.getId());%>
                    <div id="tabs-1">
                            <%
                            if (list.size() != 0) {
                                for (Order order : list) {
                                    if (!order.equals(list.get(list.size() - 1))) {%>
                        <div class="container">
                            <%} else {%>
                            <div class="container last">
                                <%}%>
                                <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                <div class="container_top" style="margin-bottom: 1rem ">
                                    <img class="anh_san_pham" src="<%=e.getKey().getImg()%>" alt="san_pham">
                                    <div class="review_sp">
                                        <div>
                                            <p class="ten_san_pham"><%=e.getKey().getName()%>
                                            </p>
                                            <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                            </p>
                                        </div>
                                        <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                    </div>
                                </div>
                                <%}%>
                                <div class="container_bottom">
                                    <div class="thong_tin">
                                        <p class="trang_thai">Trạng thái: <span><%=order.getStatus()%></span></p>
                                        <p class="tong_tien">Tổng số tiền: <span
                                                class="tien"><%=order.getAmount()%>VND</span></p>
                                    </div>
                                    <div class="buttons">
                                        <button class="mua_lai">Mua lại</button>
                                        <%if (order.getStatus().equals("Chờ xác nhận")) {%>
                                        <button class="phan_hoi">Hủy đơn</button>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            } else {%>
                            <div class="container empty">
                                <p>Không có đơn hàng nào</p>
                            </div>
                            <%}%>
                        </div>
                        <div id="tabs-2">
                                <%
                                List<Order> listchild = Util.getOrdersByStatus(list, "Chờ xác nhận");
                                if (listchild.size() != 0) {
                                    for (Order order : listchild) {
                                        if (!order.equals(listchild.get(listchild.size() - 1))) {
                            %>
                            <div class="container">
                                <%} else {%>
                                <div class="container last">
                                    <%}%>
                                    <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                    <div class="container_top" style="margin-bottom: 1rem ">
                                        <img class="anh_san_pham" src="<%=e.getKey().getImg()%>" alt="san_pham">
                                        <div class="review_sp">
                                            <div>
                                                <p class="ten_san_pham"><%=e.getKey().getName()%>
                                                </p>
                                                <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                                </p>
                                            </div>
                                            <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                        </div>
                                    </div>
                                    <%}%>
                                    <div class="container_bottom">
                                        <div class="thong_tin">
                                            <p class="trang_thai">Trạng thái: <span><%=order.getStatus()%></span></p>
                                            <p class="tong_tien">Tổng số tiền: <span
                                                    class="tien"><%=order.getAmount()%>VND</span></p>
                                        </div>
                                        <div class="buttons">
                                            <button class="mua_lai">Mua lại</button>
                                            <button class="phan_hoi">Hủy đơn</button>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                } else {%>
                                <div class="container empty">
                                    <p>Không có đơn hàng nào</p>
                                </div>
                                <%}%>
                            </div>
                            <div id="tabs-3">
                                <%
                                    listchild = Util.getOrdersByStatus(list, "Chờ lấy hàng");
                                    if (listchild.size() != 0) {
                                        for (Order order : listchild) {
                                            if (!order.equals(listchild.get(listchild.size() - 1))) {
                                %>
                                <div class="container">
                                    <%} else {%>
                                    <div class="container last">
                                        <%}%>
                                        <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                        <div class="container_top" style="margin-bottom: 1rem ">
                                            <img class="anh_san_pham" src="<%=e.getKey().getImg()%>" alt="san_pham">
                                            <div class="review_sp">
                                                <div>
                                                    <p class="ten_san_pham"><%=e.getKey().getName()%>
                                                    </p>
                                                    <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                                    </p>
                                                </div>
                                                <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                            </div>
                                        </div>
                                        <%}%>
                                        <div class="container_bottom">
                                            <div class="thong_tin">
                                                <p class="trang_thai">Trạng thái: <span><%=order.getStatus()%></span>
                                                </p>
                                                <p class="tong_tien">Tổng số tiền: <span
                                                        class="tien"><%=order.getAmount()%>VND</span></p>
                                            </div>
                                            <div class="buttons">
                                                <button class="mua_lai">Mua lại</button>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <div class="container empty">
                                        <p>Không có đơn hàng nào</p>
                                    </div>
                                    <%}%>
                                </div>
                                <div id="tabs-4">
                                    <%
                                        listchild = Util.getOrdersByStatus(list, "Đang giao");
                                        if (listchild.size() != 0) {
                                            for (Order order : listchild) {
                                                if (!order.equals(listchild.get(listchild.size() - 1))) {
                                    %>
                                    <div class="container">
                                        <%} else {%>
                                        <div class="container last">
                                            <%}%>
                                            <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                            <div class="container_top" style="margin-bottom: 1rem ">
                                                <img class="anh_san_pham" src="<%=e.getKey().getImg()%>" alt="san_pham">
                                                <div class="review_sp">
                                                    <div>
                                                        <p class="ten_san_pham"><%=e.getKey().getName()%>
                                                        </p>
                                                        <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                                        </p>
                                                    </div>
                                                    <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="container_bottom">
                                                <div class="thong_tin">
                                                    <p class="trang_thai">Trạng thái:
                                                        <span><%=order.getStatus()%></span></p>
                                                    <p class="tong_tien">Tổng số tiền: <span
                                                            class="tien"><%=order.getAmount()%>VND</span></p>
                                                </div>
                                                <div class="buttons">
                                                    <button class="mua_lai">Mua lại</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <div class="container empty">
                                            <p>Không có đơn hàng nào</p>
                                        </div>
                                        <%}%>
                                    </div>
                                    <div id="tabs-5">
                                        <%
                                            listchild = Util.getOrdersByStatus(list, "Đã giao");
                                            if (listchild.size() != 0) {
                                                for (Order order : listchild) {
                                                    if (!order.equals(listchild.get(listchild.size() - 1))) {
                                        %>
                                        <div class="container">
                                            <%} else {%>
                                            <div class="container last">
                                                <%}%>
                                                <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                                <div class="container_top" style="margin-bottom: 1rem ">
                                                    <img class="anh_san_pham" src="<%=e.getKey().getImg()%>"
                                                         alt="san_pham">
                                                    <div class="review_sp">
                                                        <div>
                                                            <p class="ten_san_pham"><%=e.getKey().getName()%>
                                                            </p>
                                                            <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                                            </p>
                                                        </div>
                                                        <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <div class="container_bottom">
                                                    <div class="thong_tin">
                                                        <p class="trang_thai">Trạng thái:
                                                            <span><%=order.getStatus()%></span></p>
                                                        <p class="tong_tien">Tổng số tiền: <span
                                                                class="tien"><%=order.getAmount()%>VND</span></p>
                                                    </div>
                                                    <div class="buttons">
                                                        <button class="mua_lai">Mua lại</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                            <%} else {%>
                                            <div class="container empty">
                                                <p>Không có đơn hàng nào</p>
                                            </div>
                                            <%}%></div>
                                        <div id="tabs-6">
                                            <%
                                                listchild = Util.getOrdersByStatus(list, "Đã hủy");
                                                if (listchild.size() != 0) {
                                                    for (Order order : listchild) {
                                                        if (!order.equals(listchild.get(listchild.size() - 1))) {
                                            %>
                                            <div class="container">
                                                <%} else {%>
                                                <div class="container last">
                                                    <%}%>
                                                    <%for (Map.Entry<Product, Integer> e : order.getListPd().entrySet()) {%>
                                                    <div class="container_top" style="margin-bottom: 1rem ">
                                                        <img class="anh_san_pham" src="<%=e.getKey().getImg()%>"
                                                             alt="san_pham">
                                                        <div class="review_sp">
                                                            <div>
                                                                <p class="ten_san_pham"><%=e.getKey().getName()%>
                                                                </p>
                                                                <p class="so_luong">Số lượng: x<%=e.getValue()%>
                                                                </p>
                                                            </div>
                                                            <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                        </div>
                                                    </div>
                                                    <%}%>
                                                    <div class="container_bottom">
                                                        <div class="thong_tin">
                                                            <p class="trang_thai">Trạng thái:
                                                                <span><%=order.getStatus()%></span></p>
                                                            <p class="tong_tien">Tổng số tiền: <span
                                                                    class="tien"><%=order.getAmount()%>VND</span></p>
                                                        </div>
                                                        <div class="buttons">
                                                            <button class="mua_lai">Mua lại</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <%} else {%>
                                                <div class="container empty">
                                                    <p>Không có đơn hàng nào</p>
                                                </div>
                                                <%}%>
                                            </div>

                                        </div>
                                        <div id="tab1">
                                            <div class="top">
                                                <p>HỒ SƠ CỦA TÔI</p>
                                                <p>Quản lí thông tin hồ sơ để bảo mật tài khoản</p>
                                            </div>
                                            <div class="bottom">
                                                <form action="/ChangeInfoUserServlet">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <label for="ten">Tên:</label>
                                                            </td>
                                                            <td>
                                                                <input type="text" name="name" value="<%=user.getName()%>" id="ten">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label for="email">Email:</label>
                                                            </td>
                                                            <td>
                                                                <input type="email" name="email"
                                                                       value="<%=user.getEmail()%>"
                                                                       id="email">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label for="phone_number">Số điện thoại:</label>
                                                            </td>
                                                            <td>
                                                                <input type="tel" name="phone"
                                                                       value="<%=user.getPhone()%>"
                                                                       pattern="[0]{1}[0-9]{9}"
                                                                       placeholder="gồm 10 số và bắt đầu bằng số 0"
                                                                       id="phone_number"
                                                                       title="gồm 10 số và bắt đầu bằng số 0">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label for="male">Giới tính:</label>
                                                            </td>
                                                            <td>
                                                                <%if (user.getGender().equals("nam")) {%>
                                                                <input type="radio" name="gender" id="male" value="nam"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="male" value="nam"
                                                                       class="gt"><%}%>
                                                                <label for="male">Nam</label>
                                                                <%if (user.getGender().equals("nu")) {%>
                                                                <input type="radio" name="gender" id="female" value="nu"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="female" value="nu"
                                                                       class="gt"><%}%>
                                                                <label for="female">Nữ</label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label for="datepicker">Ngày sinh:</label>
                                                            </td>
                                                            <td>
                                                                <input type="text" name="birthDay" id="datepicker"
                                                                       value="<%=user.getBirthday()%>">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>
                                                                <input type="submit" value="Lưu" id="submit">
                                                                <button id="changePassBT">Đổi mật khẩu</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="chooseAvatar">
                                                        <img src="<%=user.getImg()%>" alt="" class="avatar">
                                                        <input type="file" name="avatar" value="<%=user.getImg()%>"
                                                               accept="image/*"
                                                               id="file">
                                                        <input type="button"  class="fileBT" value="Chọn ảnh">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div id="tab3">
                                            <div class="thong_bao_control">
                                                <button class="delete">Xóa tất cả thông báo</button>
                                                <button class="readed">Đánh dấu đã đọc tất cả</button>
                                            </div>
                                            <div class="thong-bao-container">
                                                <div class="thong_bao_div unread">
                                                    <img src="../phone_thuan/images/products/cucsac1.jpg"
                                                         alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Giao hàng thành công</p>
                                                        <p class="thong_bao_chitiet">Kiện hàng ABC123XYZ đã giao thành
                                                            công
                                                            đến bạn</p>
                                                        <p class="thoi_gian">12:00 17/03/2021</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                                <div class="thong_bao_div unread">
                                                    <img src="../phone_thuan/images/products/cuongluc.jpg"
                                                         alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Giao hàng thành công</p>
                                                        <p class="thong_bao_chitiet">Kiện hàng ABC456XYZ đã giao thành
                                                            công
                                                            đến bạn</p>
                                                        <p class="thoi_gian">11:50 17/03/2021</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                                <div class="thong_bao_div unread">
                                                    <img src="../phone_thuan/images/products/ap.png" alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Giao hàng thất bại</p>
                                                        <p class="thong_bao_chitiet">Kiện hàng JOHNYDANG đã giao thất
                                                            bại</p>
                                                        <p class="thoi_gian">00:00 14/03/2021</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                                <div class="thong_bao_div">
                                                    <img src="../phone_thuan/images/products/gay2.jpg" alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Giao hàng thành công</p>
                                                        <p class="thong_bao_chitiet">Kiện hàng KHOAPUG đã giao thành
                                                            công
                                                            đến bạn</p>
                                                        <p class="thoi_gian">12:10 13/03/2021</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                                <div class="thong_bao_div unread">
                                                    <img src="../phone_thuan/images/products/tainghe5.jpg"
                                                         alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Hủy đơn hàng thành công</p>
                                                        <p class="thong_bao_chitiet">Đơn hàng NYSIEUXINHDEP đã được
                                                            hủy</p>
                                                        <p class="thoi_gian">03:00 17/03/2020</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                                <div class="thong_bao_div">
                                                    <img src="../phone_thuan/images/products/gay5.jpg" alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head">Đặt hàng thành công</p>
                                                        <p class="thong_bao_chitiet">Đơn hàng LAPTOPUSAPRO đã được đặt
                                                            thành
                                                            công</p>
                                                        <p class="thoi_gian">09:45 17/03/2019</p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <button>Xem chi tiết đơn hàng</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="tab4">
                                            <div class="navBar">
                                                <p class="tab active" id="voucherTab1">Tất cả</p>
                                                <p class="tab" id="voucherTab2">Mới nhất</p>
                                                <p class="tab" id="voucherTab3">Sắp hết hạn</p>
                                                <p class="tab" id="voucherTab4">Giảm giá</p>
                                                <p class="tab" id="voucherTab5">Miễn phí vận chuyển</p>
                                            </div>
                                            <div class="container 1">
                                                <%
                                                    List<Voucher> vouchers = DataDB.getVouchers(user.getId());
                                                    if (vouchers.size() != 0) {
                                                %>
                                                <table>
                                                    <%for (int i = 0; i < vouchers.size(); i += 2) {%>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (vouchers.get(i).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=vouchers.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=vouchers.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=vouchers.get(i).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=vouchers.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <%if (vouchers.get(i).getStartDate().compareTo(new Date()) == 1) {%>
                                                                    <p class="thoiGian">Có tác dụng
                                                                        sau: <%=LocalDateTime.now().getDayOfMonth() - vouchers.get(i).getStartDate().getDate()%>
                                                                        ngày</p><%} else {%>
                                                                    <p class="thoiGian">Hết hạn
                                                                        sau: <%=Util.minusDate(vouchers.get(i).getEndDate(), new java.sql.Date(new Date().getTime()))%>
                                                                        ngày</p>
                                                                    <%}%>
                                                                </div>
                                                                <div class="use">
                                                                    <p> Chi tiết ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <%if (i + 1 < vouchers.size()) {%>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (vouchers.get(i+1).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=vouchers.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=vouchers.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=vouchers.get(i + 1).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=vouchers.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <%if (vouchers.get(i + 1).getStartDate().compareTo(new Date()) == 1) {%>
                                                                    <p class="thoiGian">Có tác dụng
                                                                        sau: <%=LocalDateTime.now().getDayOfMonth() - vouchers.get(i + 1).getStartDate().getDate()%>
                                                                        ngày</p><%} else {%>
                                                                    <p class="thoiGian">Hết hạn
                                                                        sau: <%=Util.minusDate(vouchers.get(i).getEndDate(), new java.sql.Date(new Date().getTime()))%>
                                                                        ngày</p>
                                                                    <%}%>
                                                                </div>
                                                                <div class="use">
                                                                    <p> Chi tiết ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <%}%>
                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                            <div class="container 2">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có hiệu lực sau: 7 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Cho mọi đơn hàng</p>
                                                                    <p class="thoiGian">Có hiệu lực sau: 6 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 7 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 6 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="container 3">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn tác dụng trong: 10
                                                                        giờ 6
                                                                        phút</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn tác dụng trong: 1
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn hiệu lực trong: 3
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Cho mọi đơn hàng</p>
                                                                    <p class="thoiGian conLai">Còn hiệu lực trong: 5
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="container 4">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn tác dụng trong: 10
                                                                        giờ 6
                                                                        phút</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 6 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 7 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn tác dụng trong: 1
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/voucherGiamGia.png"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Giảm 10k VND </p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có tác dụng sau: 5 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="container 5">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian conLai">Còn hiệu lực trong: 3
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Cho mọi đơn hàng</p>
                                                                    <p class="thoiGian">Có hiệu lực sau: 6 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có hiệu lực sau: 3 giờ 5
                                                                        phút</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Cho mọi đơn hàng</p>
                                                                    <p class="thoiGian conLai">Còn hiệu lực trong: 5
                                                                        ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="../phone_thuan/images/mienpivanchuyen.png"
                                                                         alt="Voucher Giam Gia"
                                                                         class="freeship">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri">Miễn phí vận chuyển</p>
                                                                    <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                                                    <p class="thoiGian">Có hiệu lực sau: 7 ngày</p>
                                                                </div>
                                                                <div class="use">
                                                                    <p>Dùng ngay ></p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <div id="changePassTab">
                                            <div class="container_top">
                                                <p>ĐỔI MẬT KHẨU</p>
                                            </div>
                                            <div class="container_bottom">
                                                <form action="" method="dialog">
                                                    <table>
                                                        <tr>
                                                            <td><label for="passcr">Mật khẩu hiện tại</label></td>
                                                            <td><input type="password" name="passcr" id="passcr"></td>
                                                        </tr>
                                                        <tr>
                                                            <td><label for="newpass">Mật khẩu mới</label></td>
                                                            <td><input type="password" id="newpass" name="newpass"
                                                                       minlength="8"></td>
                                                        </tr>
                                                        <tr>
                                                            <td><label for="confirmPass">Xác nhận mật khẩu</label></td>
                                                            <td><input type="password" name="confirmPass"
                                                                       id="confirmPass"
                                                                       minlength="8">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>
                                                                <input type="submit" value="Lưu mật khẩu">
                                                                <button id="back">Trở về</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Facility Section -->
                            <!-- <section class="facility__section section" id="facility">
                              <div class="container">
                                <div class="facility__contianer">
                                  <div class="facility__box">
                                    <div class="facility-img__container">
                                      <svg>
                                        <use xlink:href="./images/sprite.svg#icon-airplane"></use>
                                      </svg>
                                    </div>
                                    <p>FREE SHIPPING WORLD WIDE</p>
                                  </div>

                                  <div class="facility__box">
                                    <div class="facility-img__container">
                                      <svg>
                                        <use xlink:href="./images/sprite.svg#icon-credit-card-alt"></use>
                                      </svg>
                                    </div>
                                    <p>100% MONEY BACK GUARANTEE</p>
                                  </div>

                                  <div class="facility__box">
                                    <div class="facility-img__container">
                                      <svg>
                                        <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
                                      </svg>
                                    </div>
                                    <p>MANY PAYMENT GATWAYS</p>
                                  </div>

                                  <div class="facility__box">
                                    <div class="facility-img__container">
                                      <svg>
                                        <use xlink:href="./images/sprite.svg#icon-headphones"></use>
                                      </svg>
                                    </div>
                                    <p>24/7 ONLINE SUPPORT</p>
                                  </div>
                                </div>
                              </div>
                            </section> -->
</main>

<!-- Footer -->
<footer id="footer" class="section footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer-top__box">
                <h3>BỔ SUNG</h3>
                <a href="/phone_nam/htmlfooter/nhanhieu.html">Nhãn hiệu</a>
                <a href="/phone_nam/htmlfooter/phieuquatang.html">Phiếu quà tặng</a>
                <a href="/phone_nam/htmlfooter/chinhanh.html">Chi nhánh</a>
                <a href="#">Đặc biệt</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>THÔNG TIN</h3>
                <a href="/phone_nam/htmlfooter/vechungtoi.html">Về chúng tôi</a>
                <a href="/phone_nam/htmlfooter/chinhsachbaomat.html">Chính sách bảo mật</a>
                <a href="/phone_nam/htmlfooter/dieukhoanvadieukien.html">Các điều khoản và điều kiện</a>
                <a href="/phone_nam/htmlfooter/lienhechungtoi.html">Liên hệ chúng tôi</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TÀI KHOẢN CỦA TÔI</h3>
                <a href="/html/user.html">Tài khoản của tôi</a>
                <a href="/html/user.html">Lịch sử đơn hàng</a>
                <a href="/phone_chuong/cart.html">Danh sách mong muốn</a>
                <a href="#">Cung cấp thông tin</a>
                <a href="/html/homelogin.html">Quay lại</a>
            </div>
            <div class="footer-top__box">
                <h3>CONTACT US</h3>
                <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-location"></use>
              </svg>
            </span>
                    <a
                            href="https://www.google.com/maps/dir/10.8840587,106.7833045/t%C3%B2a+b5+ktx+khu+b+%C4%91hqg+tphcm/@10.8838766,106.7809145,17z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3174d890227de92d:0x99150888f275361b!2m2!1d106.7829712!2d10.8839777">
                        Tòa B5, KTX_B ĐHQG TPHCM, Linh Trung, Thủ Đức, TPHCM</a>
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
                    JC-PHONEcompany@gmail.com
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
                    08.999.999.99
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-paperplane"></use>
              </svg>
            </span>
                    TOÀN VIỆT NAM
                </div>
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="footer-bottom__box">

        </div>
        <div class="footer-bottom__box">

        </div>
    </div>
    </div>
</footer>

<!-- End Footer -->

<!-- Go To -->

<a href="#header" class="goto-top scroll-link">
    <svg>
        <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
</a>

<!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->
<script src="../../../../../Nhom17_GTNM_THAYTOAN/Nhom17_GTNM_THAYTOAN/phone_nam/js/products.js"></script>
<script src="../../../../../Nhom17_GTNM_THAYTOAN/Nhom17_GTNM_THAYTOAN/phone_nam/js/index.js"></script>
<script src="../../../../../Nhom17_GTNM_THAYTOAN/Nhom17_GTNM_THAYTOAN/phone_nam/js/slider.js"></script>
</body>

</html>