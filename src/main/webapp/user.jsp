<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.controller.Util" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.OrderDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.AnnouncementDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.VoucherDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <!-- Custom StyleSheet -->
    <%--    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>--%>
    <script src="jquery/jquery-ui-1.13.0.custom/external/jquery/jquery.js"></script>
    <script src="jquery/jquery-ui-1.13.0.custom/jquery-ui.js"></script>
    <script src="js/mainUser.js"></script>
    <link rel="stylesheet" href="css/userstyles.css"/>
    <link rel="stylesheet" href="css/mainUser.css">
    <link rel="stylesheet" href="jquery/jquery-ui-user.css">
    <link rel="stylesheet" href="css/cssheader.css">
    <script>
        console.log(1)
    </script>

    <title>Phone Shop</title>
</head>

<body>
<%
    User user = UserDAO.getUserBySessionID(session.getAttribute("user")+"");
%>
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
                    <a href="/" class="scroll-link">
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
                            <a href="index.jsp" class="nav__link scroll-link">Trang chủ</a>
                        </li>
                        <li class="nav__item">
                            <a href="index.jsp#product" class="nav__link scroll-link">Sản phẩm</a>
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
                    <a href="/UserServlet" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
                        <img src="<%=user.getImg()%>"
                             style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
                    </a>
                    <div class="nav__item_user" id="nav__item_user">
                        <a href="#" class="nav__link scroll-link" style="line-height: 2">Hello <%=user.getName()%>
                        </a> <br>
                        <a href="#"
                           class="nav__link scroll-link"><%=user.getStatus() == 1 ? "Thành viên" : user.getStatus() == -1 ? "Đã khóa" : "Chưa kích hoạt"%>
                        </a>
                    </div>
                </div>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="cart.jsp" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total"><%=((Cart) session.getAttribute("cart")).getSize()%></span>
                    </a>
                    <a href="cart.jsp" class="nav__link_giohang">Giỏ Hàng</a>
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
                        <img src="image/images_thuan/account.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 1">Tài khoản của tôi</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/donHang.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 2">Đơn mua</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/notification.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 3">Thông báo</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/coupon.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 4">Kho Voucher</p>
                        </div>
                    </div>
                    <div>
                        <a href="/index.jsp">
                            <a href="/LogoutServlet">
                                <button class="DangXuat">Đăng Xuất</button>
                            </a>
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
                        <%List<Order> list = OrderDAO.getOrders(user.getId());%>
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
                                                <form action="/ChangeInfoUserServlet" method="post"
                                                      enctype="multipart/form-data" id="info-form">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <label for="ten">Tên:</label>
                                                            </td>
                                                            <td>
                                                                <input type="text" name="name"
                                                                       value="<%=user.getName()%>" required id="ten">

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
                                                                <%if (user.getGender().equalsIgnoreCase("nam")) {%>
                                                                <input type="radio" name="gender" id="male" value="nam"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="male" value="nam"
                                                                       class="gt"><%}%>
                                                                <label for="male">Nam</label>
                                                                <%if (user.getGender().equalsIgnoreCase("nu")) {%>
                                                                <input type="radio" name="gender" id="female" value="nu"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="female" value="nu"
                                                                       class="gt"><%}%>
                                                                <label for="female">Nữ</label>
                                                                <%if (user.getGender().equalsIgnoreCase("Ẩn")) {%>
                                                                <input type="radio" name="gender" id="unset" value="ukn"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="unset" value="ukn"
                                                                       class="gt"><%}%>
                                                                <label for="female">Ẩn</label>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <label for="birthDay">Ngày sinh:</label>
                                                            </td>
                                                            <td>
                                                                <input type="date" name="birthDay" id="birthDay"
                                                                       value="<%=user.getBirthday()%>"
                                                                       style="width: 90%; padding: 7px; border-radius: 3px; border: 1px solid #c5c5c5">
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
                                                        <input type="button" class="fileBT" value="Chọn ảnh">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>

                                        <div id="tab3">
                                            <div class="thong_bao_control">
                                                <form action="/AnnouncementServlet">
                                                    <input type="hidden" name="method" value="deleteAll">
                                                    <button class="delete">Xóa tất cả thông báo</button>
                                                </form>
                                                <form action="/AnnouncementServlet">
                                                    <input type="hidden" name="method" value="readAll">
                                                    <button class="readed">Đánh dấu đã đọc tất cả</button>
                                                </form>
                                            </div>
                                            <%List<Announcement> listAnm = AnnouncementDAO.getAnnounmentByUserId(user.getId());%>
                                            <div class="thong-bao-container">
                                                <%for (Announcement a : listAnm) {%>
                                                <div class="thong_bao_div <%=a.getStatus()==0?"unread":""%>">
                                                    <img src="<%=a.getImg()%>"
                                                         alt="san_pham">
                                                    <div class="thong_bao_content">
                                                        <p class="thong_bao_head"><%=a.getName()%>
                                                        </p>
                                                        <p class="thong_bao_chitiet"><%=a.getContent()%>
                                                        </p>
                                                        <p class="thoi_gian"><%=a.getTimeString()%>
                                                        </p>
                                                    </div>
                                                    <div class="thong_bao_bt">
                                                        <form action="/AnnouncementServlet">
                                                            <input type="hidden" name="method" value="read">
                                                            <input type="hidden" name="orderId"
                                                                   value="<%=a.getOrderID()%>">
                                                            <input type="hidden" name="anmId" value="<%=a.getId()%>">
<%--                                                            <button>Xem chi tiết đơn hàng</button>--%>
                                                        </form>
                                                    </div>
                                                </div>
                                                <%}%>
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
                                                    List<Voucher> vouchers = VoucherDAO.getVouchers(user.getId());
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
                                                                    <p class="thoiGian"><%=vouchers.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < vouchers.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (vouchers.get(i + 1).getType().equals("Miễn phí vận chuyển")) {%>
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
                                                                    <p class="thoiGian"><%=vouchers.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                            <div class="container 2">
                                                <%
                                                    List<Voucher> newest = VoucherDAO.getNewestVouchers(user.getId());
                                                    if (newest.size() != 0) {
                                                %>
                                                <table>
                                                    <%for (int i = 0; i < newest.size(); i += 2) {%>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (newest.get(i).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=newest.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=newest.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=newest.get(i).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=newest.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=newest.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < newest.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (newest.get(i + 1).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=newest.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=newest.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=newest.get(i + 1).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=newest.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=newest.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                            <div class="container 3">
                                                <%
                                                    List<Voucher> old = VoucherDAO.getOldVouchers(user.getId());
                                                    if (old.size() != 0) {
                                                %>
                                                <table>
                                                    <%for (int i = 0; i < old.size(); i += 2) {%>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (old.get(i).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=old.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=old.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=old.get(i).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=old.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=old.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < old.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (old.get(i + 1).getType().equals("Miễn phí vận chuyển")) {%>
                                                                    <img src="<%=old.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400"><%} else {%>
                                                                    <img src="<%=old.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                    <%}%>
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=old.get(i + 1).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=old.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=old.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                            <div class="container 4">
                                                <%
                                                    List<Voucher> discount = VoucherDAO.getDiscountVouchers(user.getId());
                                                    if (discount.size() != 0) {
                                                %>
                                                <table>
                                                    <%for (int i = 0; i < discount.size(); i += 2) {%>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="<%=discount.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=discount.get(i).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=discount.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=discount.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < discount.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="<%=discount.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=discount.get(i + 1).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=discount.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=discount.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                            <div class="container 5">
                                                <%
                                                    List<Voucher> fs = VoucherDAO.getFreeshipVouchers(user.getId());
                                                    if (fs.size() != 0) {
                                                %>
                                                <table>
                                                    <%for (int i = 0; i < fs.size(); i += 2) {%>
                                                    <tr>
                                                        <td>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="<%=fs.get(i).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=fs.get(i).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=fs.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=fs.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < fs.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <img src="<%=fs.get(i+1).getImg()%>"
                                                                         alt="Voucher Giam Gia"
                                                                         style="border-color: #ffa400">
                                                                </div>
                                                                <div class="voucherInfo">
                                                                    <p class="giaTri"><%=fs.get(i + 1).getName()%>
                                                                    </p>
                                                                    <p class="donToiThieu">Đơn tối
                                                                        thiểu <%=fs.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=fs.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi tiết ></p>--%>
                                                                </div>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr>
                                                    <%}%>
                                                </table>
                                                <%}%>
                                            </div>
                                        </div>
                                        <div id="changePassTab">
                                            <div class="container_top">
                                                <p>ĐỔI MẬT KHẨU</p>
                                            </div>
                                            <div class="container_bottom">
                                                <form action="/ChangePassServlet" method="post" id="changePassForm">
                                                    <table>
                                                        <tr>
                                                            <td><label for="passcr">Mật khẩu hiện tại</label></td>
                                                            <td><input type="password" name="passcr" id="passcr"></td>
                                                        </tr>
                                                        <tr>
                                                            <td><label for="newpass">Mật khẩu mới</label></td>
                                                            <td><input type="password" id="newpass" name="newPass"
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
                                                                <input type="submit" value="Lưu mật khẩu"
                                                                       id="submitChangePass">
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

</main>

<!-- Footer -->
<footer id="footer" class="section footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer-top__box">
                <h3>BỔ SUNG</h3>
                <a href="nhanhieu.jsp">Nhãn hiệu</a>
                <a href="phieuquatang.jsp">Phiếu quà tặng</a>
                <a href="chinhanh.jsp">Chi nhánh</a>
                <a href="#">Đặc biệt</a>
                <a href="sodoweb.jsp">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>THÔNG TIN</h3>
                <a href="vechungtoi.jsp">Về chúng tôi</a>
                <a href="chinhsachbaomat.jsp">Chính sách bảo mật</a>
                <a href="dieukhoanvadieukien.jsp">Các điều khoản và điều kiện</a>
                <a href="lienhechungtoi.jsp">Liên hệ chúng tôi</a>
                <a href="sodoweb.jsp">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TÀI KHOẢN CỦA TÔI</h3>
                <a href="/css/login.css">Tài khoản của tôi</a>
                <a href="/css/login.css">Lịch sử đơn hàng</a>
                <a href="/css/login.css">Danh sách mong muốn</a>
                <a href="#">Cung cấp thông tin</a>
                <a href="index.jsp">Quay lại</a>
            </div>
            <div class="footer-top__box">
                <h3>CONTACT US</h3>
                <div>
            <span>
              <svg>
                <use xlink:href="image/images/sprite.svg#icon-location"></use>
              </svg>
            </span>
                    <a
                            href="https://www.google.com/maps/dir/10.8840587,106.7833045/t%C3%B2a+b5+ktx+khu+b+%C4%91hqg+tphcm/@10.8838766,106.7809145,17z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3174d890227de92d:0x99150888f275361b!2m2!1d106.7829712!2d10.8839777">
                        Tòa B5, KTX_B ĐHQG TPHCM, Linh Trung, Thủ Đức, TPHCM</a>
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="image/images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
                    JC-PHONEcompany@gmail.com
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="image/images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
                    08.999.999.99
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="image/images/sprite.svg#icon-paperplane"></use>
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

<script>
    let form = document.querySelector("#info-form")
    form.onsubmit = (e) => {
        let smt = e.submitter;
        if (smt.id == "submit") return true;
        else return false;
    }
    let form2 = document.querySelector("#changePassForm")
    form2.onsubmit = (e) => {
        let smt = e.submitter;
        if (smt.id == "submitChangePass") return true;
        else return false;
    }
</script>
</body>

</html>