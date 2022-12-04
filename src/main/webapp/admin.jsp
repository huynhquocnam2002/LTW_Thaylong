<!--
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- font awesome -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="../css/cssheader.css"/>
    <link rel="stylesheet" href="../css/admin.css"/>

    <title>Admin JC Shop</title>
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
                    <a href="/phone_nam/home.html" class="scroll-link"> JC SHOP </a>
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
                            <a href="/phone_nam/home.html" class="nav__link scroll-link"
                            >Trang chủ</a
                            >
                        </li>
                        <li class="nav__item_seach">
                            <input
                                    class="input_seach"
                                    id="input_seach"
                                    type="text"
                                    placeholder="seach..."
                            />
                            <div class="nav__icons">
                                <a href="#" class="icon__item" id="icon__item_seach">
                                    <svg class="icon__search">
                                        <use xlink:href="./images/sprite.svg#icon-search"></use>
                                    </svg>
                                </a>
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
                        <a href="#login" class="nav__link scroll-link">Hello </a>
                        <a href="#register" class="nav__link scroll-link">Minh Thuan</a
                        ><br/>
                        <a href="" class="nav__link scroll-link">Admin</a>
                    </div>
                </div>
            </nav>
        </div>

        <!--1-->
    </div>
</header>

<section id="admin-content" class="section">
    <div class="container">
        <!--            left-menu-->
        <div id="leftContainer">
            <ul class="list-tab">
                <li class="list-tab-li home-li tab-active">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-solid fa-house"></i>
                            <p class="li-container-text">Trang chủ</p>
                        </div>
                    </div>
                </li>
                <li class="list-tab-li product-li">
                    <div class="tab-li-container">
                        <div
                                class="tab-li-container-name menu-left-show"
                                onclick="showChild(this,2)"
                        >
                            <i class="icon-tab fa-solid fa-bag-shopping"></i>
                            <p class="li-container-text">Sản phẩm</p>
                        </div>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child product-list-tab">
                        <li class="list-child-item product-list-li-item left-menu-item">
                            Quản lí sản phẩm
                        </li>
                        <li class="list-child-item product-list-li-item left-menu-item">
                            Thêm sản phẩm mới
                        </li>
                    </ul>
                </li>
                <li class="list-tab-li order-li">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-regular fa-file-lines"></i>
                            <p class="li-container-text">Đơn hàng</p>
                        </div>
                    </div>
                </li>
                <li class="list-tab-li category-li">
                    <div class="tab-li-container">
                        <div
                                class="tab-li-container-name menu-left-show"
                                onclick="showChild(this,2)"
                        >
                            <i class="icon-tab fa-solid fa-bookmark"></i>
                            <p class="li-container-text">Danh mục</p>
                        </div>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child order-list-tab">
                        <li
                                class="list-child-item category-list-li-item left-menu-item"
                        >
                            Quản lí danh mục
                        </li>
                        <li
                                class="list-child-item category-list-li-item left-menu-item"
                        >
                            Thêm danh mục mới
                        </li>
                    </ul>
                </li>
                <li class="list-tab-li producer-li">
                    <div class="tab-li-container">
                        <div
                                class="tab-li-container-name menu-left-show"
                                onclick="showChild(this,2)"
                        >
                            <i class="icon-tab fa-solid fa-industry"></i>
                            <p class="li-container-text">Nhà sản xuất</p>
                        </div>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child order-list-tab">
                        <li
                                class="list-child-item producer-list-li-item left-menu-item"
                        >
                            Quản lí NSX
                        </li>
                        <li
                                class="list-child-item producer-list-li-item left-menu-item"
                        >
                            Thêm NSX mới
                        </li>
                    </ul>
                </li>
                <li class="list-tab-li user-li">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-solid fa-user"></i>
                            <p class="li-container-text">Tài khoản khách</p>
                        </div>
                    </div>
                </li>
                <li class="list-tab-li voucher-li">
                    <div class="tab-li-container">
                        <div
                                class="tab-li-container-name menu-left-show"
                                onclick="showChild(this,2)"
                        >
                            <i class="icon-tab fa-solid fa-bullhorn"></i>
                            <p class="li-container-text">Voucher</p>
                        </div>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child order-list-tab">
                        <li class="list-child-item voucher-list-li-item left-menu-item">
                            Quản lí Voucher
                        </li>
                        <li class="list-child-item voucher-list-li-item left-menu-item">
                            Thêm voucher mới
                        </li>
                    </ul>
                </li>
                <li class="list-tab-li turnover-li">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-regular fa-credit-card"></i>
                            <p class="li-container-text">Doanh số</p>
                        </div>
                    </div>
                </li>
                <li class="list-tab-li history-li">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-solid fa-clock-rotate-left"></i>
                            <p class="li-container-text">Lịch sử chỉnh sửa</p>
                        </div>
                    </div>
                </li>
                <li class="list-tab-li design-li" style="display: none">
                    <div class="tab-li-container">
                        <div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-solid fa-shop"></i>
                            <p class="li-container-text">Thiết kế trang web</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!--            right-menu-->
        <div id="rightContainer">
            <!--            home-->
            <div class="right-tab home-tab active-right-tab">
                <h1 class="tab-name">Thông tin của bạn</h1>
                <p class="home-talking">
                    Bạn có toàn quyền kiểm soát chỉ một thứ duy nhất trong vũ trụ này,
                    đó là suy nghĩ của bạn.
                </p>
                <div class="home-container right-tab-container">
                    <form action="" method="get" onsubmit="return false">
                        <table class="info-table">
                            <tr class="table-row">
                                <td class="label-input">
                                    <label for="admin-name">Tên:</label>
                                </td>
                                <td class="input-field">
                                    <input
                                            type="text"
                                            disabled
                                            class="input-info-admin admin-name"
                                            value="Thuận than thở"
                                            id="admin-name"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-input">
                                    <label for="admin-email">Email:</label>
                                </td>
                                <td class="input-field">
                                    <input
                                            type="email"
                                            disabled
                                            class="input-info-admin admin-email"
                                            name="email"
                                            value="abcxyz@st.hcmuaf.edo.aa"
                                            id="admin-email"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-input">
                                    <label for="admin-phone-number">Số điện thoại:</label>
                                </td>
                                <td class="input-field">
                                    <input
                                            type="tel"
                                            disabled
                                            class="input-info-admin admin-phone-number"
                                            name="phone_number"
                                            value="0359123456"
                                            pattern="[0]{1}[0-9]{9}"
                                            placeholder="gồm 10 số và bắt đầu bằng số 0"
                                            id="admin-phone-number"
                                            title="gồm 10 số và bắt đầu bằng số 0"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-input">
                                    <label for="gender-field">Giới tính:</label>
                                </td>
                                <td class="input-field" id="gender-field">
                                    <input
                                            type="radio"
                                            disabled
                                            name="gender"
                                            value="male"
                                            class="gender"
                                            id="male"
                                            checked
                                    />
                                    <label for="male">Nam</label>
                                    <input
                                            type="radio"
                                            disabled
                                            name="gender"
                                            value="female"
                                            class="gender"
                                            id="female"
                                    />
                                    <label for="female">Nữ</label>
                                    <input
                                            type="radio"
                                            disabled
                                            name="gender"
                                            value="other"
                                            class="gender"
                                            id="other"
                                    />
                                    <label for="other">Khác</label>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-input">
                                    <label for="admin-birthday">Ngày sinh:</label>
                                </td>
                                <td class="input-field">
                                    <input
                                            type="date"
                                            disabled
                                            class="input-info-admin admin-birthday"
                                            name="date"
                                            id="admin-birthday"
                                            value="2007-01-01"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td></td>
                                <td>
                                    <button class="change-info">Sửa đổi</button>
                                    <button id="changePassBT">Đổi mật khẩu</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <div class="more-info">
                        <p>
                            Lưu ý: Thành công và hạnh phúc nằm trong bàn tay bạn. Quyết
                            tâm gìn giữ hạnh phúc và niềm vui sẽ đồng hành cùng bạn để
                            hình thành đạo quân bất khả chiến bại chống lại mọi nghịch
                            cảnh
                        </p>
                    </div>
                </div>
            </div>
            <!--            change password tab-->
            <div class="change-pass">
                <h1 class="tab-name">Đổi mật khẩu</h1>
                <div class="change-pass-container right-tab-container">
                    <form action="" method="" onsubmit="return false">
                        <table class="change-pass-table">
                            <tr>
                                <td>
                                    <label for="current-pass">Mật khẩu hiện tại:</label>
                                </td>
                                <td>
                                    <input type="password" name="passcr" id="current-pass"/>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="new-pass">Mật khẩu mới:</label></td>
                                <td>
                                    <input
                                            type="password"
                                            name="newpass"
                                            minlength="8"
                                            id="new-pass"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="confirm-pass">Xác nhận mật khẩu:</label>
                                </td>
                                <td>
                                    <input
                                            type="password"
                                            name="confirmPass"
                                            id="confirm-pass"
                                            minlength="8"
                                    />
                                </td>
                            </tr>
                            <tr class="change-pass-buttons">
                                <td></td>
                                <td>
                                    <button id="back">Trở về</button>
                                    <button class="save-change">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--                manage products-->
            <div class="right-tab manage-products">
                <h1 class="tab-name">Quản lí sản phẩm</h1>
                <button class="add-new-product">Thêm sản phẩm mới</button>
                <div class="flex flex-manage-products">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đang bán<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Sắp bán<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Dừng bán<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã xóa<span class="quantity">0</span></p>
                    </div>
                </div>
                <!--                filter-div-->
                <div class="manage-products-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-product-filter-div">
                                <input
                                        type="text"
                                        placeholder="Tên sản phẩm hoặc ID"
                                        name="id-product-filter"
                                        class="id-product-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="price-filter"
                                    class="price-filter-select filter-select"
                            >
                                <option value="0" class="price-filter-option">Giá</option>
                                <option value="1" class="price-filter-option">
                                    < 500.000 VND
                                </option>
                                <option value="2" class="price-filter-option">
                                    500.000 - <1.000.000 VND
                                </option>
                                <option value="3" class="price-filter-option">
                                    1.000.000 - <2.000.000 VND
                                </option>
                                <option value="4" class="price-filter-option">
                                    2.000.000 - <3.000.000 VND
                                </option>
                                <option value="5" class="price-filter-option">
                                    >3.000.000 VND
                                </option>
                            </select>
                            <select
                                    name="category-filter"
                                    class="category-filter-select filter-select"
                            >
                                <option value="0" class="category-filter-option" selected>
                                    Danh mục
                                </option>
                                <option value="Ốp lưng" class="category-filter-option">
                                    Ốp lưng
                                </option>
                                <option value="Sạc" class="category-filter-option">
                                    Sạc
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 3
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 4
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 5
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 6
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 7
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 8
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 9
                                </option>
                            </select>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-products-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button selling-button" disabled>
                                Bắt đầu bán
                            </button>
                            <button class="tool-button stop-selling-button" disabled>
                                Dừng bán
                            </button>
                            <button class="tool-button delete-button" disabled>
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>
                <!--                all-products-->
                <div
                        class="manage-all-products-tab manage-products-flex-tab active-product-tab"
                >
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Ốp lưng</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                            <p class="add-type-proceed">Thêm loại</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="6">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                selling-product-->
                <div class="manage-all-products-tab manage-products-flex-tab">
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
                                Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Ốp lưng</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                            <p class="add-type-proceed">Thêm loại</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="6">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                upcoming-product-->
                <div class="manage-all-products-tab manage-products-flex-tab">
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Sạc</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="313"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                            <p class="add-type-proceed">Thêm loại</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end product-row">
                                    <td></td>
                                    <td colspan="6">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                stop-selling-product-->
                <div class="manage-all-products-tab manage-products-flex-tab">
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product"></div>
                    </div>
                </div>
                <!--                deleted-product-->
                <div class="manage-all-products-tab manage-products-flex-tab">
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Ốp lưng</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                            <p class="add-type-proceed">Thêm loại</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="2000000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="6">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Sạc</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="313"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                            <p class="add-type-proceed">Thêm loại</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="1"
                                      disabled
                              >
Sản phẩm 1 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: 0123456789</p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <input
                                                    type="text"
                                                    name="product-type"
                                                    value="Đỏ"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="213"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="[0-9]"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end product-row">
                                    <td></td>
                                    <td colspan="6">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            add new product-->
            <div class="right-tab add-new-product add-tab">
                <h1 class="tab-name">Thêm sản phẩm mới</h1>
                <div class="right-tab-container">
                    <form action="" onsubmit="return false">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-name">Tên sản phẩm:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="name"
                                            id="new-product-name"
                                            class="new-product-name-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-unit-price">Đơn giá:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="unitPrice"
                                            id="new-product-unit-price"
                                            class="new-product-unit-price-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-brief-description"
                                    >Mô tả sơ lược:</label
                                    >
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="briefDescription"
                                            id="new-product-brief-description"
                                            class="new-product-brief-description-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-category">Danh mục:</label>
                                </td>
                                <td class="input-col">
                                    <select
                                            name="category"
                                            id="new-product-category"
                                            class="new-product-category-input input-field"
                                    >
                                        <option value="1" class="new-product-category-option">
                                            Tai nghe
                                        </option>
                                        <option value="2" class="new-product-category-option">
                                            Ốp lưng
                                        </option>
                                        <option value="3" class="new-product-category-option">
                                            Củ sạc
                                        </option>
                                        <option value="4" class="new-product-category-option">
                                            Cáp sạc
                                        </option>
                                        <option value="5" class="new-product-category-option">
                                            Cường lực
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-producer">Nhà sản xuất:</label>
                                </td>
                                <td class="input-col">
                                    <select
                                            name="producer"
                                            id="new-product-producer"
                                            class="new-product-producer-input input-field"
                                    >
                                        <option value="1" class="new-product-producer-option">
                                            Samsung
                                        </option>
                                        <option value="2" class="new-product-producer-option">
                                            Apple
                                        </option>
                                        <option value="3" class="new-product-producer-option">
                                            Huawei
                                        </option>
                                        <option value="4" class="new-product-producer-option">
                                            AMD
                                        </option>
                                        <option value="5" class="new-product-producer-option">
                                            Intel
                                        </option>
                                        <option value="6" class="new-product-producer-option">
                                            Logitech
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-status"
                                    >Trạng thái sản phẩm:</label
                                    >
                                </td>
                                <td class="input-col">
                                    <select
                                            name="status"
                                            id="new-product-status"
                                            class="new-product-status-input input-field"
                                    >
                                        <option value="-1" class="new-product-status-option">
                                            Đã xóa
                                        </option>
                                        <option
                                                value="0"
                                                class="new-product-status-option"
                                                selected
                                        >
                                            Sắp mở bán
                                        </option>
                                        <option value="1" class="new-product-status-option">
                                            Đang bán
                                        </option>
                                        <option value="2" class="new-product-status-option">
                                            Dừng kinh doanh
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-quantity">Nhà sản xuất:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="producer"
                                            id="new-product-quantity"
                                            class="new-product-quantity-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-detail">Mô tả chi tiết:</label>
                                </td>
                                <td class="input-col">
                      <textarea
                              type="text"
                              name="producer"
                              id="new-product-detail"
                              class="new-product-detail-input input-field"
                              rows="4"
                      ></textarea>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-imgs">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="file"
                                            name="producer"
                                            id="new-product-imgs"
                                            class="new-product-detail-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button class="cancel-button">Trở lại</button>
                                    <button class="confirm-button">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>

            <!--            manage-order-->
            <div class="right-tab manage-orders">
                <h1 class="tab-name">Quản lí đơn hàng</h1>
                <div class="flex flex-manage-orders">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Chờ xác nhận<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đang giao<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Thành công<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Yêu cầu hủy<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã hủy<span class="quantity">0</span></p>
                    </div>
                </div>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-order-filter-div">
                                <input
                                        type="text"
                                        placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
                                        name="id-product-filter"
                                        class="id-order-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="price-filter"
                                    class="price-filter-select filter-select"
                            >
                                <option value="0" class="price-filter-option">Giá</option>
                                <option value="1" class="price-filter-option">
                                    < 500.000 VND
                                </option>
                                <option value="2" class="price-filter-option">
                                    500.000 - <1.000.000 VND
                                </option>
                                <option value="3" class="price-filter-option">
                                    1.000.000 - <2.000.000 VND
                                </option>
                                <option value="4" class="price-filter-option">
                                    2.000.000 - <3.000.000 VND
                                </option>
                                <option value="5" class="price-filter-option">
                                    >3.000.000 VND
                                </option>
                            </select>
                            <select
                                    name="category-filter"
                                    class="category-filter-select filter-select"
                            >
                                <option value="0" class="category-filter-option" selected>
                                    Danh mục
                                </option>
                                <option value="Ốp lưng" class="category-filter-option">
                                    Ốp lưng
                                </option>
                                <option value="Sạc" class="category-filter-option">
                                    Sạc
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 3
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 4
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 5
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 6
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 7
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 8
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 9
                                </option>
                            </select>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-orders-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button delete-button" disabled>
                                Hủy
                            </button>
                        </div>
                    </div>
                </div>
                <!--                all-order-->
                <div
                        class="manage-all-orders-tab manage-orders-flex-tab active-order-tab"
                >
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name">Sản phẩm 1 DHNL tphcm</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status active-status">
                                                Chờ xác nhận
                                            </p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status active-status">
                                                Chờ xác nhận
                                            </p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status active-status">
                                                Yêu cầu hủy
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="accept-proceed">Chấp nhận hủy</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                waiting-order-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status active-status">
                                                Chờ xác nhận
                                            </p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status active-status">
                                                Chờ xác nhận
                                            </p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                delivering-order-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status active-status">
                                                Đang giao
                                            </p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="delete-proceed">Hủy đơn</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                completed-order-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <!--                cancel-request-order-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status active-status">
                                                Yêu cầu hủy
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="accept-proceed">Chấp nhận hủy</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <!--                canceled-order-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status">Hoàn thành</p>
                                            <p class="cancel-request status">Yêu cầu hủy</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            manage-category-->
            <div class="right-tab manage-categorys">
                <h1 class="tab-name">Quản lí danh mục</h1>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-order-filter-div">
                                <input
                                        type="text"
                                        placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
                                        name="id-product-filter"
                                        class="id-order-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-orders-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button delete-button" disabled>
                                Hủy kích hoạt
                            </button>
                        </div>
                    </div>
                </div>
                <div
                        class="manage-all-orders-tab manage-orders-flex-tab active-order-tab"
                >
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã danh mục</th>
                                    <th>Ảnh</th>
                                    <th>Tên danh mục</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Sạc
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Sạc
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Sạc
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            add new category-->
            <div class="right-tab add-new-category add-tab">
                <h1 class="tab-name">Thêm sản phẩm mới</h1>
                <div class="right-tab-container">
                    <form action="" onsubmit="return false">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-name">Tên sản phẩm:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="name"
                                            id="new-category-name"
                                            class="new-product-name-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-status"
                                    >Trạng thái sản phẩm:</label
                                    >
                                </td>
                                <td class="input-col">
                                    <select
                                            name="status"
                                            id="new-category-status"
                                            class="new-product-status-input input-field"
                                    >
                                        <option value="-1" class="new-category-status-option">
                                            Đã ẩn
                                        </option>
                                        <option
                                                value="1"
                                                class="new-category-status-option"
                                                selected
                                        >
                                            Đang hoạt động
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-imgs">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="file"
                                            name="producer"
                                            id="new-category-imgs"
                                            class="new-product-detail-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button class="cancel-button">Trở lại</button>
                                    <button class="confirm-button">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--            manage producer-->
            <div class="right-tab manage-producer">
                <h1 class="tab-name">Quản lí nhà sản xuất</h1>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-order-filter-div">
                                <input
                                        type="text"
                                        placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
                                        name="id-product-filter"
                                        class="id-order-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-orders-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button delete-button" disabled>
                                Hủy kích hoạt
                            </button>
                        </div>
                    </div>
                </div>
                <div
                        class="manage-all-orders-tab manage-orders-flex-tab active-order-tab"
                >
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã NSX</th>
                                    <th>Ảnh</th>
                                    <th>Tên NSX</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Samsung
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Samsung
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <img
                                                    src="../phone_thuan/images/avatar.jpg"
                                                    alt=""
                                                    class="category-img"
                                            />
                                            <input
                                                    type="file"
                                                    name=""
                                                    class="input-category-img"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                Samsung
                                            </p>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status active-status">Đã ẩn</p>
                                            <p class="selling-p status">Đang hoạt động</p>
                                            <select
                                                    name="category-status"
                                                    class="category-status editable"
                                            >
                                                <option class="delete-option" value="-1" selected>
                                                    Đã ẩn
                                                </option>
                                                <option class="selling-option" value="1">
                                                    Đang hoạt động
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            add new producer-->
            <div class="right-tab add-new-producer add-tab">
                <h1 class="tab-name">Thêm nhà sản xuất mới</h1>
                <div class="right-tab-container">
                    <form action="" onsubmit="return false">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-name">Tên nhà sản xuất:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="name"
                                            id="new-producer-name"
                                            class="new-product-name-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-status">Trạng thái NSX:</label>
                                </td>
                                <td class="input-col">
                                    <select
                                            name="status"
                                            id="new-producer-status"
                                            class="new-product-status-input input-field"
                                    >
                                        <option value="-1" class="new-category-status-option">
                                            Đã ẩn
                                        </option>
                                        <option
                                                value="1"
                                                class="new-category-status-option"
                                                selected
                                        >
                                            Đang hoạt động
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-imgs">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="file"
                                            name="producer"
                                            id="new-producer-imgs"
                                            class="new-product-detail-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button class="cancel-button">Trở lại</button>
                                    <button class="confirm-button">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--            manage user-->
            <div class="right-tab manage-users">
                <h1 class="tab-name">Quản lí tài khoản khách</h1>
                <div class="flex flex-manage-orders">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã kích hoạt<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Chưa kích hoạt<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã khóa<span class="quantity">0</span></p>
                    </div>
                </div>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-order-filter-div">
                                <input
                                        type="text"
                                        placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
                                        name="id-product-filter"
                                        class="id-order-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="price-filter"
                                    class="price-filter-select filter-select"
                            >
                                <option value="0" class="price-filter-option">Giá</option>
                                <option value="1" class="price-filter-option">
                                    < 500.000 VND
                                </option>
                                <option value="2" class="price-filter-option">
                                    500.000 - <1.000.000 VND
                                </option>
                                <option value="3" class="price-filter-option">
                                    1.000.000 - <2.000.000 VND
                                </option>
                                <option value="4" class="price-filter-option">
                                    2.000.000 - <3.000.000 VND
                                </option>
                                <option value="5" class="price-filter-option">
                                    >3.000.000 VND
                                </option>
                            </select>
                            <select
                                    name="category-filter"
                                    class="category-filter-select filter-select"
                            >
                                <option value="0" class="category-filter-option" selected>
                                    Danh mục
                                </option>
                                <option value="Ốp lưng" class="category-filter-option">
                                    Ốp lưng
                                </option>
                                <option value="Sạc" class="category-filter-option">
                                    Sạc
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 3
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 4
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 5
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 6
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 7
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 8
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 9
                                </option>
                            </select>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-orders-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button delete-button" disabled>
                                Hủy
                            </button>
                        </div>
                    </div>
                </div>
                <!--                all-user-->
                <div
                        class="manage-all-orders-tab manage-orders-flex-tab active-order-tab"
                >
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Khách hàng</th>
                                    <th>Số ĐT</th>
                                    <th>Ngày lập</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/avatar.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Nguyễn Minh Thuận</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681217</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/nam.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Huỳnh Quốc Nam</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken28ueqw</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681218</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/chuong.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Đỗ Phú Nguyên Chương</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken39azzh</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681219</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                actived-user-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Khách hàng</th>
                                    <th>Số ĐT</th>
                                    <th>Ngày lập</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/avatar.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Nguyễn Minh Thuận</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681217</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                unactived-user-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Khách hàng</th>
                                    <th>Số ĐT</th>
                                    <th>Ngày lập</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/avatar.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Nguyễn Minh Thuận</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681217</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                locked-user-->
                <div class="manage-all-orders-tab manage-orders-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Khách hàng</th>
                                    <th>Số ĐT</th>
                                    <th>Ngày lập</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/avatar.jpg" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="user-name">Nguyễn Minh Thuận</p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="user-name-div">
                                            <p class="phone-number-p">
                                                <span class="id-span">0359681217</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã khóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="lock">Khóa tài khoản</p>
                                            <p class="unlock">Mở khóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <p class="user-email">
                                                <b>Email:</b> 20130426@st.hcmuaf.edu.vn
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><b>Giới tính:</b> Nam</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col" colspan="2">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p"><b>Ngày sinh:</b> 16/08/2002</p>
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="4">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            manage voucher-->
            <div class="right-tab manage-vouchers">
                <h1 class="tab-name">Quản lí mã giảm giá</h1>
                <div class="flex flex-manage-orders">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã kích hoạt<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Chưa kích hoạt<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã khóa<span class="quantity">0</span></p>
                    </div>
                </div>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <div class="id-order-filter-div">
                                <input
                                        type="text"
                                        placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
                                        name="id-product-filter"
                                        class="id-order-filter"
                                />
                                <button>
                                    <i class="search-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            <select
                                    name="price-filter"
                                    class="price-filter-select filter-select"
                            >
                                <option value="0" class="price-filter-option">Giá</option>
                                <option value="1" class="price-filter-option">
                                    < 500.000 VND
                                </option>
                                <option value="2" class="price-filter-option">
                                    500.000 - <1.000.000 VND
                                </option>
                                <option value="3" class="price-filter-option">
                                    1.000.000 - <2.000.000 VND
                                </option>
                                <option value="4" class="price-filter-option">
                                    2.000.000 - <3.000.000 VND
                                </option>
                                <option value="5" class="price-filter-option">
                                    >3.000.000 VND
                                </option>
                            </select>
                            <select
                                    name="category-filter"
                                    class="category-filter-select filter-select"
                            >
                                <option value="0" class="category-filter-option" selected>
                                    Danh mục
                                </option>
                                <option value="Ốp lưng" class="category-filter-option">
                                    Ốp lưng
                                </option>
                                <option value="Sạc" class="category-filter-option">
                                    Sạc
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 3
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 4
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 5
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 6
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 7
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 8
                                </option>
                                <option value="" class="category-filter-option">
                                    danh mục 9
                                </option>
                            </select>
                            <select
                                    name="other-filter"
                                    class="other-filter-select filter-select"
                            >
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option
                                        value="decrease-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng giảm dần
                                </option>
                                <option
                                        value="increase-quantity"
                                        class="other-filter-option"
                                >
                                    Số lượng tăng dần
                                </option>
                                <option value="" class="other-filter-option">
                                    Lọc theo tao
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                        <div class="manage-orders-tools-container">
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button delete-button" disabled>
                                Hủy
                            </button>
                        </div>
                    </div>
                </div>
                <!--                all-voucher-->
                <div
                        class="manage-all-orders-tab manage-vouchers-flex-tab active-voucher-tab"
                >
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã giảm giá</th>
                                    <th>Giá trị giảm</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                actived-voucher-->
                <div class="manage-all-orders-tab manage-vouchers-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã giảm giá</th>
                                    <th>Giá trị giảm</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                unactived-voucher-->
                <div class="manage-all-orders-tab manage-vouchers-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã giảm giá</th>
                                    <th>Giá trị giảm</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <!--                locked-voucher-->
                <div class="manage-all-orders-tab manage-vouchers-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã giảm giá</th>
                                    <th>Giá trị giảm</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                              <textarea
                                      name="product-name"
                                      class="product-name editable"
                                      rows="2"
                                      disabled
                              >
Sản phẩm 2 DHNL tphcm</textarea
                              >
                                                    <i class="edit-button fa-solid fa-pen-clip"></i>
                                                    <i class="ok-button fa-solid fa-check"></i>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">ken3983q1</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="number-phone-col">
                                        <div class="discount-div">
                                            <input
                                                    type="text"
                                                    value="600000"
                                                    pattern="^\d+$"
                                                    name="product-unit-price"
                                                    class="product-unit-price editable"
                                                    disabled
                                            /><span><u>đ</u></span>
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherStartDate"
                                                    value="2022-10-10"
                                                    class="voucher-start-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <input
                                                    type="date"
                                                    disabled
                                                    name="voucherEndDate"
                                                    value="2022-11-10"
                                                    class="voucher-end-date editable"
                                            />
                                            <i class="edit-button fa-solid fa-pen-clip"></i>
                                            <i class="ok-button fa-solid fa-check"></i>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="selling-p status active-status">
                                                Đã kích hoạt
                                            </p>
                                            <p class="stop-selling-p status">Chưa kích hoạt</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                                    disabled
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Chưa kích hoạt
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đã kích hoạt
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit">Chỉnh sửa</p>
                                            <p class="delete">Xóa</p>
                                            <p class="unlock">Hủy kích hoạt</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="6">
                                        <div class="product-name-container">
                                            <p class="condition-voucher">
                                                <b>Điều kiện:</b> Tổng giá trị đơn hàng phải lớn hơn
                                                500000đ
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product"></p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--            add new voucher-->
            <div class="right-tab add-new-product add-tab">
                <h1 class="tab-name">Thêm mã giảm giá mới</h1>
                <div class="right-tab-container">
                    <form action="" onsubmit="return false">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-voucher-name">Tên mã giảm giá:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="name"
                                            id="new-voucher-name"
                                            class="new-product-name-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-discount">Giá trị giảm:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="unitPrice"
                                            id="new-discount"
                                            class="new-product-unit-price-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-start-date">Ngày bắt đầu:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="date"
                                            name="warrantyTime"
                                            id="new-start-date"
                                            class="new-product-warranty-time-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-end-date">Ngày kết thúc:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="date"
                                            name="briefDescription"
                                            id="new-end-date"
                                            class="new-product-brief-description-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-voucher-status"
                                    >Trạng thái voucher:</label
                                    >
                                </td>
                                <td class="input-col">
                                    <select
                                            name="status"
                                            id="new-voucher-status"
                                            class="new-product-status-input input-field"
                                    >
                                        <option
                                                value="0"
                                                class="new-voucher-status-option"
                                                selected
                                        >
                                            Chưa kích hoạt
                                        </option>
                                        <option value="1" class="new-voucher-status-option">
                                            Đã kích hoạt
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-voucher-condition">Điều kiện:</label>
                                </td>
                                <td class="input-col">
                      <textarea
                              type="text"
                              name="producer"
                              id="new-voucher-condition"
                              class="new-product-detail-input input-field"
                              rows="4"
                      ></textarea>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-voucher-imgs">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="file"
                                            name="producer"
                                            id="new-voucher-imgs"
                                            class="new-product-detail-input input-field"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button class="cancel-button">Trở lại</button>
                                    <button class="confirm-button">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--            manage turnover-->
            <div class="right-tab manage-turnover">
                <h1 class="tab-name">Quản lí doanh số</h1>
                <!--                filter-div-->
                <div class="manage-orders-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <p class="total-order">
                                <b>Tổng số đơn hàng hoàn thành:</b> 4
                            </p>
                            <p class="total-money">
                                <b>Tổng doanh thu:</b> 8000000<u>đ</u>
                            </p>
                        </div>
                    </div>
                </div>
                <!--                turnover-->
                <div class="manage-all-orders-tab manage-turnover-flex-tab">
                    <div class="table-manage-order-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-order-table-head">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Mã đơn hàng</th>
                                    <th>Người đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày lập đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-order">
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <table class="manage-order-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="order-id-col">
                                        <div class="order-id-div">
                                            <p class="order-id">
                                                <span class="id-span">DH0100001</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="user-name-col">
                                        <div class="user-name-div">
                                            <p class="user-name">Nguyễn Minh Thuận</p>
                                            <p class="user-id id-text">
                                                ID: <span class="id-span">20130426</span>
                                            </p>
                                            <i class="fa-regular fa-copy copy-icon"></i>
                                        </div>
                                    </td>
                                    <td class="unit-price-col">
                                        <div class="unit-price-block">
                                            <p class="product-unit-price editable" disabled>
                                                2000000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="update-date-col">
                                        <div class="update-date-div">
                                            <p class="product-update-date">
                                                26/10/2022<br/>00:10
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã hủy</p>
                                            <p class="upcoming-p status">Chờ xác nhận</p>
                                            <p class="selling-p status">Đang giao</p>
                                            <p class="stop-selling-p status active-status">
                                                Hoàn thành
                                            </p>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div"></div>
                                    </td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="row-table row-table-child">
                                    <td></td>
                                    <td class="product-name-col" colspan="2">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="../phone_thuan/images/addImage.png" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name editable">
                                                        Sản phẩm 1 DHNL tphcm
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span">0123456789</span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type">Màu: Đỏ</p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="product-quantity-div">
                                            <p class="quantity-p">Số lượng: 1</p>
                                        </div>
                                    </td>
                                    <td class="product-price-col">
                                        <div class="product-price-div">
                                            <p class="product-price">2000000<u>đ</u></p>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type">0</span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                                        <i
                                                class="icon-down fa-sharp fa-solid fa-chevron-down"
                                        ></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--    --------------------JS-------------------------------->
<script src="../js/mainAdmin.js"></script>
</body>
</html>
