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
                            <a href="/" class="nav__link scroll-link">Trang ch???</a>
                        </li>
                        <li class="nav__item">
                            <a href="/#product" class="nav__link scroll-link">S???n ph???m</a>
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
                                <a href="#hotro" class="nav__link scroll-link">HOTLINE H??? TR???</a> <br>
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
                           class="nav__link scroll-link"><%=user.getStatus() == 1 ? "Th??nh vi??n" : user.getStatus() == -1 ? "???? kh??a" : "Ch??a k??ch ho???t"%>
                        </a>
                    </div>
                </div>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="giohang" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total"><%=((Cart) session.getAttribute("cart")).getSize()%></span>
                    </a>
                    <a href="giohang" class="nav__link_giohang">Gi??? H??ng</a>
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
                        <p class="changeTop">S???a h??? s??</p>
                    </div>
                </div>
                <div class="navbody">
                    <div class="item">
                        <img src="image/images_thuan/account.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 1">T??i kho???n c???a t??i</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/donHang.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 2">????n mua</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/notification.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 3">Th??ng b??o</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/images_thuan/coupon.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 4">Kho Voucher</p>
                        </div>
                    </div>
                    <div>
                        <a href="/">
                            <a href="/LogoutServlet">
                                <button class="DangXuat">????ng Xu???t</button>
                            </a>
                        </a>
                    </div>
                </div>
            </div>
            <div class="rightContent">
                <div id="tabs">
                    <ul>
                        <li><a href="#tabs-1">T???t c???</a></li>
                        <li><a href="#tabs-2">Ch??? x??c nh???n</a></li>
                        <li><a href="#tabs-3">Ch??? l???y h??ng</a></li>
                        <li><a href="#tabs-4">??ang giao</a></li>
                        <li><a href="#tabs-5">???? giao</a></li>
                        <li><a href="#tabs-6">???? h???y</a></li>
                    </ul>
                        <%List<Order> list = OrderDAO.getOrderByUserId(user.getId());%>
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
                                            <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                            </p>
                                        </div>
                                        <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                    </div>
                                </div>
                                <%}%>
                                <div class="container_bottom">
                                    <div class="thong_tin">
                                        <p class="trang_thai">Tr???ng th??i: <span><%=order.getStatus()%></span></p>
                                        <p class="tong_tien">T???ng s??? ti???n: <span
                                                class="tien"><%=order.getAmount()%>VND</span></p>
                                    </div>
                                    <div class="buttons">
                                        <%if (order.getStatus().equals("Ch??? x??c nh???n")) {%>
                                        <a href="/ChangeStatusOrderServlet?id=<%=order.getId()%>&status=5"><button class="phan_hoi">H???y ????n</button></a>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            } else {%>
                            <div class="container empty">
                                <p>Kh??ng c?? ????n h??ng n??o</p>
                            </div>
                            <%}%>
                        </div>
                        <div id="tabs-2">
                                <%
                                List<Order> listchild = Util.getOrdersByStatus(list, "Ch??? x??c nh???n");
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
                                                <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                                </p>
                                            </div>
                                            <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                        </div>
                                    </div>
                                    <%}%>
                                    <div class="container_bottom">
                                        <div class="thong_tin">
                                            <p class="trang_thai">Tr???ng th??i: <span><%=order.getStatus()%></span></p>
                                            <p class="tong_tien">T???ng s??? ti???n: <span
                                                    class="tien"><%=order.getAmount()%>VND</span></p>
                                        </div>
                                        <div class="buttons">
                                            <a href="/ChangeStatusOrderServlet?id=<%=order.getId()%>&status=5"><button class="phan_hoi">H???y ????n</button></a>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                } else {%>
                                <div class="container empty">
                                    <p>Kh??ng c?? ????n h??ng n??o</p>
                                </div>
                                <%}%>
                            </div>
                            <div id="tabs-3">
                                <%
                                    listchild = Util.getOrdersByStatus(list, "Ch??? l???y h??ng");
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
                                                    <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                                    </p>
                                                </div>
                                                <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                            </div>
                                        </div>
                                        <%}%>
                                        <div class="container_bottom">
                                            <div class="thong_tin">
                                                <p class="trang_thai">Tr???ng th??i: <span><%=order.getStatus()%></span>
                                                </p>
                                                <p class="tong_tien">T???ng s??? ti???n: <span
                                                        class="tien"><%=order.getAmount()%>VND</span></p>
                                            </div>
                                            <div class="buttons">
                                                <button class="mua_lai">Mua l???i</button>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <div class="container empty">
                                        <p>Kh??ng c?? ????n h??ng n??o</p>
                                    </div>
                                    <%}%>
                                </div>
                                <div id="tabs-4">
                                    <%
                                        listchild = Util.getOrdersByStatus(list, "??ang giao");
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
                                                        <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                                        </p>
                                                    </div>
                                                    <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="container_bottom">
                                                <div class="thong_tin">
                                                    <p class="trang_thai">Tr???ng th??i:
                                                        <span><%=order.getStatus()%></span></p>
                                                    <p class="tong_tien">T???ng s??? ti???n: <span
                                                            class="tien"><%=order.getAmount()%>VND</span></p>
                                                </div>
                                                <div class="buttons">
                                                    <button class="mua_lai">Mua l???i</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <div class="container empty">
                                            <p>Kh??ng c?? ????n h??ng n??o</p>
                                        </div>
                                        <%}%>
                                    </div>
                                    <div id="tabs-5">
                                        <%
                                            listchild = Util.getOrdersByStatus(list, "???? giao");
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
                                                            <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                                            </p>
                                                        </div>
                                                        <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <div class="container_bottom">
                                                    <div class="thong_tin">
                                                        <p class="trang_thai">Tr???ng th??i:
                                                            <span><%=order.getStatus()%></span></p>
                                                        <p class="tong_tien">T???ng s??? ti???n: <span
                                                                class="tien"><%=order.getAmount()%>VND</span></p>
                                                    </div>
                                                    <div class="buttons">
                                                        <button class="mua_lai">Mua l???i</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                            <%} else {%>
                                            <div class="container empty">
                                                <p>Kh??ng c?? ????n h??ng n??o</p>
                                            </div>
                                            <%}%></div>
                                        <div id="tabs-6">
                                            <%
                                                listchild = Util.getOrdersByStatus(list, "???? h???y");
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
                                                                <p class="so_luong">S??? l?????ng: x<%=e.getValue()%>
                                                                </p>
                                                            </div>
                                                            <p class="gia_tien"><%=e.getKey().getPrice()%>VND x1</p>
                                                        </div>
                                                    </div>
                                                    <%}%>
                                                    <div class="container_bottom">
                                                        <div class="thong_tin">
                                                            <p class="trang_thai">Tr???ng th??i:
                                                                <span><%=order.getStatus()%></span></p>
                                                            <p class="tong_tien">T???ng s??? ti???n: <span
                                                                    class="tien"><%=order.getAmount()%>VND</span></p>
                                                        </div>
                                                        <div class="buttons">
                                                            <button class="mua_lai">Mua l???i</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <%} else {%>
                                                <div class="container empty">
                                                    <p>Kh??ng c?? ????n h??ng n??o</p>
                                                </div>
                                                <%}%>
                                            </div>

                                        </div>
                                        <div id="tab1">
                                            <div class="top">
                                                <p>H??? S?? C???A T??I</p>
                                                <p>Qu???n l?? th??ng tin h??? s?? ????? b???o m???t t??i kho???n</p>
                                            </div>
                                            <div class="bottom">
                                                <form action="/ChangeInfoUserServlet" method="post"
                                                      enctype="multipart/form-data" id="info-form">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <label for="ten">T??n:</label>
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
                                                                <label for="phone_number">S??? ??i???n tho???i:</label>
                                                            </td>
                                                            <td>
                                                                <input type="tel" name="phone"
                                                                       value="<%=user.getPhone()%>"
                                                                       pattern="[0]{1}[0-9]{9}"
                                                                       placeholder="g???m 10 s??? v?? b???t ?????u b???ng s??? 0"
                                                                       id="phone_number"
                                                                       title="g???m 10 s??? v?? b???t ?????u b???ng s??? 0">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label for="male">Gi???i t??nh:</label>
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
                                                                <label for="female">N???</label>
                                                                <%if (user.getGender().equalsIgnoreCase("???n")) {%>
                                                                <input type="radio" name="gender" id="unset" value="ukn"
                                                                       class="gt" checked><%} else {%>
                                                                <input type="radio" name="gender" id="unset" value="ukn"
                                                                       class="gt"><%}%>
                                                                <label for="female">???n</label>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <label for="birthDay">Ng??y sinh:</label>
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
                                                                <input type="submit" value="L??u" id="submit">
                                                                <button id="changePassBT">?????i m???t kh???u</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="chooseAvatar">
                                                        <img src="<%=user.getImg()%>" alt="" class="avatar">
                                                        <input type="file" name="avatar" value="<%=user.getImg()%>"
                                                               accept="image/*"
                                                               id="file">
                                                        <input type="button" class="fileBT" value="Ch???n ???nh">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>

                                        <div id="tab3">
                                            <div class="thong_bao_control">
                                                <form action="/AnnouncementServlet">
                                                    <input type="hidden" name="method" value="deleteAll">
                                                    <button class="delete">X??a t???t c??? th??ng b??o</button>
                                                </form>
                                                <form action="/AnnouncementServlet">
                                                    <input type="hidden" name="method" value="readAll">
                                                    <button class="readed">????nh d???u ???? ?????c t???t c???</button>
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
<%--                                                            <button>Xem chi ti???t ????n h??ng</button>--%>
                                                        </form>
                                                    </div>
                                                </div>
                                                <%}%>
                                            </div>
                                        </div>
                                        <div id="tab4">
                                            <div class="navBar">
                                                <p class="tab active" id="voucherTab1">T???t c???</p>
                                                <p class="tab" id="voucherTab2">M???i nh???t</p>
                                                <p class="tab" id="voucherTab3">S???p h???t h???n</p>
                                                <p class="tab" id="voucherTab4">Gi???m gi??</p>
                                                <p class="tab" id="voucherTab5">Mi???n ph?? v???n chuy???n</p>
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
                                                                    <%if (vouchers.get(i).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=vouchers.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=vouchers.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < vouchers.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (vouchers.get(i + 1).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=vouchers.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=vouchers.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <%if (newest.get(i).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=newest.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=newest.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < newest.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (newest.get(i + 1).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=newest.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=newest.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <%if (old.get(i).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=old.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=old.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <%if (i + 1 < old.size()) {%>
                                                            <div class="voucher">
                                                                <div class="voucherIcon">
                                                                    <%if (old.get(i + 1).getType().equals("Mi???n ph?? v???n chuy???n")) {%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=old.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=old.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=discount.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=discount.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=discount.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=discount.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=fs.get(i).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=fs.get(i).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                                    <p class="donToiThieu">????n t???i
                                                                        thi???u <%=fs.get(i + 1).getMinPrice()%>k
                                                                        VND</p>
                                                                    <p class="thoiGian"><%=fs.get(i + 1).getVoucherDescription()%>
                                                                    </p>
                                                                </div>
                                                                <div class="use">
<%--                                                                    <p> Chi ti???t ></p>--%>
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
                                                <p>?????I M???T KH???U</p>
                                            </div>
                                            <div class="container_bottom">
                                                <form action="/ChangePassServlet" method="post" id="changePassForm">
                                                    <table>
                                                        <tr>
                                                            <td><label for="passcr">M???t kh???u hi???n t???i</label></td>
                                                            <td><input type="password" name="passcr" id="passcr"></td>
                                                        </tr>
                                                        <tr>
                                                            <td><label for="newpass">M???t kh???u m???i</label></td>
                                                            <td><input type="password" id="newpass" name="newPass"
                                                                       minlength="8"></td>
                                                        </tr>
                                                        <tr>
                                                            <td><label for="confirmPass">X??c nh???n m???t kh???u</label></td>
                                                            <td><input type="password" name="confirmPass"
                                                                       id="confirmPass"
                                                                       minlength="8">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>
                                                                <input type="submit" value="L??u m???t kh???u"
                                                                       id="submitChangePass">
                                                                <button id="back">Tr??? v???</button>
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
                <h3>B??? SUNG</h3>
                <a href="nhanhieu">Nh??n hi???u</a>
                <a href="phieuquatang">Phi???u qu?? t???ng</a>
                <a href="chinhanh">Chi nh??nh</a>
                <a href="#">?????c bi???t</a>
                <a href="sodoweb">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TH??NG TIN</h3>
                <a href="vechungtoi">V??? ch??ng t??i</a>
                <a href="chinhsachbaomat">Ch??nh s??ch b???o m???t</a>
                <a href="dieukhoanvadieukien">C??c ??i???u kho???n v?? ??i???u ki???n</a>
                <a href="lienhechungtoi">Li??n h??? ch??ng t??i</a>
                <a href="sodoweb">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>T??I KHO???N C???A T??I</h3>
                <a href="UserServlet">T??i kho???n c???a t??i</a>
                <a href="UserServlet">L???ch s??? ????n h??ng</a>
                <a href="/">Danh s??ch mong mu???n</a>
                <a href="/">Cung c???p th??ng tin</a>
                <a href="/">Quay l???i</a>
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
                        T??a B5, KTX_B ??HQG TPHCM, Linh Trung, Th??? ?????c, TPHCM</a>
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
                    TO??N VI???T NAM
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