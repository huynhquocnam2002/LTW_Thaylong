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
    <script src="lib/jquery-ui-1.13.0.custom/jquery-ui.js"></script>
    <script src="js/mainUser.js"></script>
    <link rel="stylesheet" href="style/userstyles.css"/>
    <link rel="stylesheet" href="style/mainUser.css">
    <link rel="stylesheet" href="style/jquery-ui-user.css">
    <link rel="stylesheet" href="style/cssheader.css">

    <title>Phone Shop</title>
</head>

<body>
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
                            <a href="#header" class="nav__link scroll-link">Trang chủ</a>
                        </li>
                        <li class="nav__item">
                            <a href="#category" class="nav__link scroll-link">Sản phẩm</a>
                        </li>
                        <li class="nav__item_seach">
                            <input class="input_seach"  id="input_seach" type="text" placeholder="seach...">
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
                                <a  href="#hotro" class="nav__link scroll-link">HOTLINE HỖ TRỢ</a> <br>
                                <a  href="#hotro" class="nav__link scroll-link">0797.74.76.76</a>
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
                        <a  href="#login" class="nav__link scroll-link">Xin chào</a>
                        <a  href="#register" class="nav__link scroll-link">Minh Thuận</a><br>
                        <a  href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="/cart.html" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total">4</span>
                    </a>
                    <a  href="#login" class="nav__link_giohang">Giỏ Hàng</a>
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
                    <img src="images/avatar.jpg" alt="avatar" class="avatar">
                    <div class="nameAccount">
                        <p class="userName">Thuận than thở</p>
                        <p class="changeTop">Sửa hồ sơ</p>
                    </div>
                </div>
                <div class="navbody">
                    <div class="item">
                        <img src="images/account.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 1">Tài khoản của tôi</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/donHang.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 2">Đơn mua</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/notification.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 3">Thông báo</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/coupon.png" alt="" class="itemIcon">
                        <div>
                            <p class="itemContent 4">Kho Voucher</p>
                        </div>
                    </div>
                    <div>
                        <a href="/index.html">
                            <button class="DangXuat">Đăng Xuất</button>
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
                    <div id="tabs-1">
                        <div class="container">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/capsac1.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Cáp sạc rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">990.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đã giao</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">1.000.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/cucsac1.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Củ sạc rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">490.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đã hủy</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">500.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                        <div class="container last">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/cuongluc.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Cường lực rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">990.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đang giao</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">1.000.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-2">
                        <div class="container empty">
                            <p>Không có đơn hàng nào</p>
                        </div>
                    </div>
                    <div id="tabs-3">
                        <div class="container empty">
                            <p>Không có đơn hàng nào</p>
                        </div>
                    </div>
                    <div id="tabs-4">
                        <div class="container last">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/cuongluc.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Cường lực rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">990.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đang giao</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">1.000.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-5">
                        <div class="container last">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/capsac1.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Cáp sạc rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">990.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đã giao</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">1.000.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-6">
                        <div class="container last">
                            <div class="container_top">
                                <img class="anh_san_pham" src="images/products/cucsac1.jpg" alt="san_pham">
                                <div class="review_sp">
                                    <div>
                                        <p class="ten_san_pham">Củ sạc rất xịn</p>
                                        <p class="so_luong">Số lượng: x1</p>
                                    </div>
                                    <p class="gia_tien">490.000VND</p>
                                </div>
                            </div>
                            <div class="container_bottom">
                                <div class="thong_tin">
                                    <p class="trang_thai">Trạng thái: <span>Đã hủy</span></p>
                                    <p class="tong_tien">Tổng số tiền: <span class="tien">500.000VND</span></p>
                                </div>
                                <div class="buttons">
                                    <button class="mua_lai">Mua lại</button>
                                    <button class="phan_hoi">Phản hồi</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div id="tab1">
                    <div class="top">
                        <p>HỒ SƠ CỦA TÔI</p>
                        <p>Quản lí thông tin hồ sơ để bảo mật tài khoản</p>
                    </div>
                    <div class="bottom">
                        <form action="#logoJCTop" method="dialog">
                            <table>
                                <tr>
                                    <td>
                                        <label for="ten">Tên:</label>
                                    </td>
                                    <td>
                                        <input type="text" value="Thuận than thở" id="ten">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="email">Email:</label>
                                    </td>
                                    <td>
                                        <input type="email" name="email" value="abcxyz@st.hcmuaf.edo.aa" id="email">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="phone_number">Số điện thoại:</label>
                                    </td>
                                    <td>
                                        <input type="tel" name="phone_number" value="0359123456"
                                               pattern="[0]{1}[0-9]{9}"
                                               placeholder="gồm 10 số và bắt đầu bằng số 0" id="phone_number"
                                               title="gồm 10 số và bắt đầu bằng số 0">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="male">Giới tính:</label>
                                    </td>
                                    <td>
                                        <input type="radio" name="gt" id="male" value="nam" class="gt" checked>
                                        <label for="male">Nam</label>
                                        <input type="radio" name="gt" id="female" value="nu" class="gt">
                                        <label for="female">Nữ</label>
                                        <input type="radio" name="gt" id="othermale" value="khac" class="gt">
                                        <label for="othermale">Khác</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="datepicker">Ngày sinh:</label>
                                    </td>
                                    <td>
                                        <input type="text" name="date" id="datepicker" value="01/01/2007">
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
                                <img src="images/avatar.jpg" alt="" class="avatar">
                                <input type="file" value="http://127.0.0.1:5500/img/avatar.jpg" accept="image/*"
                                       id="file">
                                <input type="button" class="fileBT" value="Chọn ảnh">
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
                            <img src="images/products/cucsac1.jpg" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Giao hàng thành công</p>
                                <p class="thong_bao_chitiet">Kiện hàng ABC123XYZ đã giao thành công đến bạn</p>
                                <p class="thoi_gian">12:00 17/03/2021</p>
                            </div>
                            <div class="thong_bao_bt">
                                <button>Xem chi tiết đơn hàng</button>
                            </div>
                        </div>
                        <div class="thong_bao_div unread">
                            <img src="images/products/cuongluc.jpg" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Giao hàng thành công</p>
                                <p class="thong_bao_chitiet">Kiện hàng ABC456XYZ đã giao thành công đến bạn</p>
                                <p class="thoi_gian">11:50 17/03/2021</p>
                            </div>
                            <div class="thong_bao_bt">
                                <button>Xem chi tiết đơn hàng</button>
                            </div>
                        </div>
                        <div class="thong_bao_div unread">
                            <img src="images/products/ap.png" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Giao hàng thất bại</p>
                                <p class="thong_bao_chitiet">Kiện hàng JOHNYDANG đã giao thất bại</p>
                                <p class="thoi_gian">00:00 14/03/2021</p>
                            </div>
                            <div class="thong_bao_bt">
                                <button>Xem chi tiết đơn hàng</button>
                            </div>
                        </div>
                        <div class="thong_bao_div">
                            <img src="images/products/gay2.jpg" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Giao hàng thành công</p>
                                <p class="thong_bao_chitiet">Kiện hàng KHOAPUG đã giao thành công đến bạn</p>
                                <p class="thoi_gian">12:10 13/03/2021</p>
                            </div>
                            <div class="thong_bao_bt">
                                <button>Xem chi tiết đơn hàng</button>
                            </div>
                        </div>
                        <div class="thong_bao_div unread">
                            <img src="images/products/tainghe5.jpg" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Hủy đơn hàng thành công</p>
                                <p class="thong_bao_chitiet">Đơn hàng NYSIEUXINHDEP đã được hủy</p>
                                <p class="thoi_gian">03:00 17/03/2020</p>
                            </div>
                            <div class="thong_bao_bt">
                                <button>Xem chi tiết đơn hàng</button>
                            </div>
                        </div>
                        <div class="thong_bao_div">
                            <img src="images/products/gay5.jpg" alt="san_pham">
                            <div class="thong_bao_content">
                                <p class="thong_bao_head">Đặt hàng thành công</p>
                                <p class="thong_bao_chitiet">Đơn hàng LAPTOPUSAPRO đã được đặt thành công</p>
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
                        <table>
                            <tr>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 10 giờ 6 phút</p>
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 1 ngày</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 3 ngày</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian">Có hiệu lực sau: 3 giờ 5 phút</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Cho mọi đơn hàng</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 5 ngày</p>
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                    <div class="container 2">
                        <table>
                            <tr>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 10 giờ 6 phút</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 1 ngày</p>
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 3 ngày</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Cho mọi đơn hàng</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 5 ngày</p>
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 10 giờ 6 phút</p>
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Giảm 10k VND </p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn tác dụng trong: 1 ngày</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/voucherGiamGia.png" alt="Voucher Giam Gia">
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 3 ngày</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Đơn tối thiểu 10k VND</p>
                                            <p class="thoiGian">Có hiệu lực sau: 3 giờ 5 phút</p>
                                        </div>
                                        <div class="use">
                                            <p>Dùng ngay ></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="voucher">
                                        <div class="voucherIcon">
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
                                                 class="freeship">
                                        </div>
                                        <div class="voucherInfo">
                                            <p class="giaTri">Miễn phí vận chuyển</p>
                                            <p class="donToiThieu">Cho mọi đơn hàng</p>
                                            <p class="thoiGian conLai">Còn hiệu lực trong: 5 ngày</p>
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
                                            <img src="images/mienpivanchuyen.png" alt="Voucher Giam Gia"
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
                                    <td><input type="password" id="newpass" name="newpass" minlength="8"></td>
                                </tr>
                                <tr>
                                    <td><label for="confirmPass">Xác nhận mật khẩu</label></td>
                                    <td><input type="password" name="confirmPass" id="confirmPass" minlength="8"></td>
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
                <a href="#">Nhãn hiệu</a>
                <a href="#">Phiếu quà tặng</a>
                <a href="#">Chi nhánh</a>
                <a href="#">Đặc biệt</a>
                <a href="#">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>THÔNG TIN</h3>
                <a href="#">Về chúng tôi</a>
                <a href="#">Chính sách bảo mật</a>
                <a href="#">Các điều khoản và điều kiện</a>
                <a href="#">Liên hệ chúng tôi</a>
                <a href="#">Sơ đồ trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TÀI KHOẢN CỦA TÔI</h3>
                <a href="#">Tài khoản của tôi</a>
                <a href="#">Lịch sử đơn hàng</a>
                <a href="#">Danh sách mong muốn</a>
                <a href="#">Cung cấp thông tin</a>
                <a href="#">Quay lại</a>
            </div>
            <div class="footer-top__box">
                <h3>LIÊN HỆ CHÚNG TÔI</h3>
                <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-location"></use>
              </svg>
            </span>
                    Tòa B5, KTX_B ĐHQG TPHCM, Linh Trung, Thủ Đức, TPHCM
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