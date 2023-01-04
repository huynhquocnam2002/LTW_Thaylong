<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="common/head.jsp"/>
</head>

<%User ad = UserDAO.getUserBySessionID((String) request.getSession().getAttribute("user"));%>

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
                    <a href="/" class="scroll-link"> JC SHOP </a>
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
                            <a href="/" class="nav__link scroll-link">Trang chủ</a>
                        </li>
                        <li class="nav__item_seach">
                            <input class="input_seach"
                                    id="input_seach"
                                    type="text"
                                    placeholder="seach..."/>
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
                    <a href="/UserServlet" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="./images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>
                    <div class="nav__item_user" id="nav__item_user">
                        <a href="#login" class="nav__link scroll-link">Hello </a>
                        <a href="#register" class="nav__link scroll-link"><%=ad.getName()%></a><br/>
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
                <li class="list-tab-li product-li tab-active">
                    <div class="tab-li-container">
                        <a href="/AdminProductServlet"><div class="tab-li-container-name menu-left-show" onclick="showChild(this,2)">
                            <i class="icon-tab fa-solid fa-bag-shopping"></i>
                            <p class="li-container-text">Sản phẩm</p>
                        </div></a>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child product-list-tab">
                        <a href="/AdminProductServlet"><li class="list-child-item product-list-li-item left-menu-item">
                            Quản lí sản phẩm
                        </li></a>
                        <a href="/AddProductServlet"><li class="list-child-item product-list-li-item left-menu-item">
                            Thêm sản phẩm mới
                        </li></a>
                    </ul>
                </li>
                <li class="list-tab-li order-li">
                    <div class="tab-li-container">
                        <a href="/AdminOrderServlet"><div class="tab-li-container-name left-menu-item">
                            <i class="icon-tab fa-regular fa-file-lines"></i>
                            <p class="li-container-text">Đơn hàng</p>
                        </div></a>
                    </div>
                </li>
                <li class="list-tab-li category-li">
                    <div class="tab-li-container">
                        <a href="/AdminCategoryServlet"><div class="tab-li-container-name menu-left-show" onclick="showChild(this,2)">
                            <i class="icon-tab fa-solid fa-bookmark"></i>
                            <p class="li-container-text">Danh mục</p>
                        </div></a>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child order-list-tab">
                        <a href="/AdminCategoryServlet"><li class="list-child-item category-list-li-item left-menu-item">
                            Quản lí danh mục
                        </li></a>
                        <a href="/AddCategoryServlet"><li class="list-child-item category-list-li-item left-menu-item">
                            Thêm danh mục mới
                        </li></a>
                    </ul>
                </li>
                <li class="list-tab-li producer-li">
                    <div class="tab-li-container">
                        <a href="/AdminProducerServlet"><div class="tab-li-container-name menu-left-show" onclick="showChild(this,2)">
                            <i class="icon-tab fa-solid fa-industry"></i>
                            <p class="li-container-text">Nhà sản xuất</p>
                        </div></a>
                        <div class="icon-up-down">
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down" onclick="showChild(this,3)"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child order-list-tab">
                        <a href="/AdminProducerServlet"><li class="list-child-item producer-list-li-item left-menu-item">
                            Quản lí NSX
                        </li></a>
                        <a href="/AddProductServlet"><li class="list-child-item producer-list-li-item left-menu-item">
                            Thêm NSX mới
                        </li></a>
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
            <!--                manage products-->
            <%
                Set<Product> allProduct = ProductDAO.getProducts();
                Set<Product> sellingProduct = ProductDAO.getProductsByStatus(1);
                Set<Product> upcomingProduct = ProductDAO.getProductsByStatus(0);
                Set<Product> stopingProduct = ProductDAO.getProductsByStatus(2);
                Set<Product> deletedProduct = ProductDAO.getProductsByStatus(-1);
            %>
            <div class="right-tab manage-products active-right-tab">
                <h1 class="tab-name">Quản lí sản phẩm</h1>
                <button class="add-new-product">Thêm sản phẩm mới</button>
                <div class="flex flex-manage-products">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity"><%=allProduct.size()%></span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đang bán<span class="quantity"><%=sellingProduct.size()%></span></p>
                    </div>
                    <div class="flex-item">
                        <p>Sắp bán<span class="quantity"><%=upcomingProduct.size()%></span></p>
                    </div>
                    <div class="flex-item">
                        <p>Dừng bán<span class="quantity"><%=stopingProduct.size()%></span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã xóa<span class="quantity"><%=deletedProduct.size()%></span></p>
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
                            <select name="price-filter"
                                    class="price-filter-select filter-select">
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
                                <%List<Category> categories= CategoryDAO.getCategory();
                                for (Category c: categories){%>
                                <option value="<%=c.getId()%>" class="category-filter-option">
                                    <%=c.getName()%>
                                </option><%}%>

                            </select>
                            <select name="other-filter" class="other-filter-select filter-select">
                                <option value="0" class="other-filter-option" selected>
                                    Sắp xếp
                                </option>
                                <option value="decrease-price" class="other-filter-option">
                                    Giá giảm dần
                                </option>
                                <option value="increase-price" class="other-filter-option">
                                    Giá tăng dần
                                </option>
                                <option value="decrease-quantity" class="other-filter-option">
                                    Số lượng giảm dần
                                </option>
                                <option value="increase-quantity" class="other-filter-option">
                                    Số lượng tăng dần
                                </option>
                            </select>
                            <button class="reset-filter-button">Đặt lại</button>
                        </div>
                    </div>
                </div>
                <!--                all-products-->
                <div class="manage-all-products-tab manage-products-flex-tab active-product-tab">
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input type="checkbox" name="check_all" class="check-all"/>
                                    </th>
                                    <th>Sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <%for (Product p : allProduct) {%>
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
                                                <img src="<%=p.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p class="product-name"><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=p.getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=p.getCategory()%>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input type="text"
                                                    pattern="^\d+$"
                                                    value="<%=p.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled/>

                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=p.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>

                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (p.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (p.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%for (Option op : p.getOptions()) {%>
                                <tr class="row-table row-table-child product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input type="checkbox"
                                                    name="is-check"
                                                    class="is-check"/>
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img src="<%=op.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: <%=op.getId()%>
                                                    </p>
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
                                                    value="<%=op.getValue()%>"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=op.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=op.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (op.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (op.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                            class="min-product">Thu nhỏ</span>
                                        <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <%}%>
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
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <%for (Product p : sellingProduct) {%>
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
                                                <img src="<%=p.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=p.getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=p.getCategory()%>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=p.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=p.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (p.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (p.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%for (Option op : p.getOptions()) {%>
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
                                                <img src="<%=op.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: <%=op.getId()%>
                                                    </p>
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
                                                    value="<%=op.getValue()%>"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=op.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=op.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (op.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (op.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                            class="min-product">Thu nhỏ</span>
                                        <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <%}%>
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
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <%for (Product p : upcomingProduct) {%>
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
                                                <img src="<%=p.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=p.getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=p.getCategory()%>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=p.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=p.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (p.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (p.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%for (Option op : p.getOptions()) {%>
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
                                                <img src="<%=op.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: <%=op.getId()%>
                                                    </p>
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
                                                    value="<%=op.getValue()%>"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=op.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=op.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (op.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (op.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                            class="min-product">Thu nhỏ</span>
                                        <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <%}%>
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
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <%for (Product p : stopingProduct) {%>
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
                                                <img src="<%=p.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=p.getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=p.getCategory()%>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=p.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=p.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (p.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (p.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%for (Option op : p.getOptions()) {%>
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
                                                <img src="<%=op.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: <%=op.getId()%>
                                                    </p>
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
                                                    value="<%=op.getValue()%>"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=op.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=op.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (op.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (op.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                            class="min-product">Thu nhỏ</span>
                                        <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <%}%>
                        </div>
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
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>
                        <div class="table-row-div table-row-div-product">
                            <%for (Product p : deletedProduct) {%>
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
                                                <img src="<%=p.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=p.getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=p.getCategory()%>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=p.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=p.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (p.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (p.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (p.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%for (Option op : p.getOptions()) {%>
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
                                                <img src="<%=op.getImg()%>" alt=""/>
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=p.getName()%>
                                                    </p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">ID: <%=op.getId()%>
                                                    </p>
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
                                                    value="<%=op.getValue()%>"
                                                    class="product-type editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=op.getQuantity()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p><%=op.getPrice()%><span><u>đ</u></span></p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <%if (op.getStatus() == -1) {%>
                                            <p class="delete-p status active-status">Đã xóa</p>
                                            <%} else {%>
                                            <p class="delete-p status">Đã xóa</p>
                                            <%}%>
                                            <%if (op.getStatus() == 0) {%>
                                            <p class="upcoming-p status active-status">Sắp mở bán</p>
                                            <%} else {%>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 1) {%>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <%} else {%>
                                            <p class="selling-p status">Đang bán</p>
                                            <%}%>
                                            <%if (op.getStatus() == 2) {%>
                                            <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                            <%} else {%>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <%}%>
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
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="row-table row-table-end">
                                    <td></td>
                                    <td colspan="5">
                                        <p class="quantity-typeof-product">
                                            Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                                        </p>
                                    </td>
                                    <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                            class="min-product">Thu nhỏ</span>
                                        <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                                        <i class="icon-up fa-solid fa-chevron-up"></i>
                                    </td>
                                </tr>
                            </table>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--    --------------------JS-------------------------------->
<script>
    let abc=1;
    console.log("Thuan hello")
    let list_icon_up = document.querySelectorAll('#admin-content #leftContainer .icon-up')
    let list_extend_button = document.querySelectorAll('#admin-content #rightContainer .row-table-end .show-all-type-product')
    let list_product_tab = document.querySelectorAll('#admin-content #rightContainer .manage-products-flex-tab')
    let list_product_tab_head = document.querySelectorAll('#admin-content #rightContainer .flex-manage-products .flex-item')
    let list_checkbox_all_product = document.querySelectorAll('#admin-content #rightContainer .check-all')
    let list_checkbox_product = document.querySelectorAll('#admin-content #rightContainer .is-check')
    let list_checkbox_main_product = document.querySelectorAll('#admin-content #rightContainer .row-table-main .is-check')
    let list_checkbox_child_product = document.querySelectorAll('#admin-content #rightContainer .row-table-child .is-check')
    let quantity_checked_product = document.querySelector('#admin-content #rightContainer .manage-products .manage-products-filter-container .quantity')
    let search_product_button = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div button .search-icon').parentElement
    let search_product_input = document.querySelector('#admin-content #rightContainer .manage-products .input-filter .id-product-filter-div .id-product-filter').parentElement
    let list_copy_button = document.querySelectorAll('#admin-content #rightContainer .copy-icon')


    function showChild(li, num) {
        let parent = li
        for (let i = 0; i < num; i++) {
            parent = parent.parentElement
        }
        let list = parent.querySelectorAll('li')
        for (let i of list) {
            i.style.display = 'list-item'
        }
        let down = parent.querySelector('.icon-down')
        let up = parent.querySelector('.icon-up')
        down.style.display = 'none'
        up.style.display = 'var(--fa-display,inline-block)'
    }

    for (let i of list_icon_up) {
        i.onclick = function () {

            let parent = i.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('li')
            for (let j of list) {
                j.style.display = 'none'
            }
            let down = parent.querySelector('.icon-down')
            let up = parent.querySelector('.icon-up')
            up.style.display = 'none'
            down.style.display = 'var(--fa-display,inline-block)'
        }
    }

    for (let i of list_extend_button) {
        i.onclick = function () {
            let parent = i.parentElement.parentElement
            let list = parent.querySelectorAll('.row-table-child')
            let down = i.querySelector('.icon-down')
            let up = i.querySelector('.icon-up')
            let ex = i.querySelector('.extend-product')
            let min = i.querySelector('.min-product')

            if (down.style.display == 'var(--fa-display,inline-block)' || down.style.display == '') {
                for (let j of list) {
                    j.style.display = 'table-row'
                }
                down.style.display = 'none'
                up.style.display = 'var(--fa-display,inline-block)'
                ex.style.display = 'none'
                min.style.display = 'unset'
            } else {
                for (let j of list) {
                    j.style.display = 'none'
                }
                up.style.display = 'none'
                down.style.display = 'var(--fa-display,inline-block)'
                min.style.display = 'none'
                ex.style.display = 'unset'
            }
        }
    }

    for (let i = 0; i < list_product_tab_head.length; i++) {
        list_product_tab_head[i].onclick = function () {
            let active_tab_head = document.querySelector('#admin-content #rightContainer .manage-products .active-tab')
            let active_tab = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab')
            active_tab_head.className = active_tab_head.className.slice(0, active_tab_head.className.indexOf('active-tab'))
            active_tab.className = active_tab.className.slice(0, active_tab.className.indexOf('active-product-tab'))
            list_product_tab_head[i].className += ' active-tab'
            list_product_tab[i].className += ' active-product-tab'
        }
    }

    for (let i of list_checkbox_all_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('.is-check')
            if (i.checked)
                for (let j of list)
                    j.checked = true
            else
                for (let j of list)
                    j.checked = false
        }
    }
    for (let i of list_checkbox_child_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement
            let checkAll = parent.querySelector('.row-table-main .is-check')
            let list = parent.querySelectorAll('.row-table-child .is-check')
            let isCheckAll = true
            for (let j of list) {
                isCheckAll = isCheckAll && j.checked
                if (!isCheckAll) break
            }
            if (isCheckAll) checkAll.checked = true
            else checkAll.checked = false
            let check_all = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-head-table .check-all')
            if (!i.checked) {
                check_all.checked = false
            } else {
                let list_all_checkbox = parent.parentElement.querySelectorAll('.row-table-child .is-check')
                let is_checked_all = true
                for (let j of list_all_checkbox) {
                    is_checked_all = is_checked_all && j.checked
                    if (!j.checked) break
                }
                if (is_checked_all) check_all.checked = true
                else check_all.checked = false
            }
        }
    }
    for (let i of list_checkbox_main_product) {
        i.onchange = function () {
            let parent = i.parentElement.parentElement.parentElement.parentElement.parentElement
            let list = parent.querySelectorAll('.row-table-child .is-check')
            if (i.checked)
                for (let j of list)
                    j.checked = true

            else
                for (let j of list)
                    j.checked = false
            let check_all = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab .table-row-div-head-table .check-all')
            let is_check_all = true
            for (let j of list_checkbox_main_product) {
                is_check_all = is_check_all && j.checked
                if (!j.checked) break
            }
            if (is_check_all) check_all.checked = true
            else check_all.checked = false

        }
    }

    numOfCheckedProduct()
    for (let i of list_copy_button) {
        i.onclick = function () {
            let parent = i.parentElement
            navigator.clipboard.writeText(parent.querySelector('.id-span').innerHTML + '')
        }
    }

    function resetFilter() {
        price_filter_input.value = '0'
        category_filter_input.value = '0'
        sort_filter_input.value = '0'
        filterByPrice()
        filterByCategory()
        sortByFilter()
    }
    function filterByPrice() {
        let input = document.querySelector('#admin-content #rightContainer .manage-products .price-filter-select')
        let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
        let list_end = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-end')
        for (let i of list_main) {
            let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
            for (let j of list_extend) {
                let up = j.querySelector('.icon-up')
                if (up.style.display == 'var(--fa-display,inline-block)') j.click()
            }
        }
        switch (input.value) {
            case '0':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].className.indexOf('price-hide') != -1) {
                        list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                        list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                    }
                }
                break
            case '1':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].style.display != 'none') {
                        let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                        if (price >= 500000) {
                            if (list_main[i].className.indexOf('price-hide') == -1) {
                                list_main[i].className += ' price-hide'
                                list_end[i].className += ' price-hide'
                            }
                            console.log(1)
                        } else {
                            if (list_main[i].className.indexOf('price-hide') != -1) {
                                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                            }
                        }
                    }
                }
                break
            case '2':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].style.display != 'none') {
                        let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                        if (price < 500000 || price >= 1000000) {
                            if (list_main[i].className.indexOf('price-hide') == -1) {
                                list_main[i].className += ' price-hide'
                                list_end[i].className += ' price-hide'
                            }
                        } else {
                            if (list_main[i].className.indexOf('price-hide') != -1) {
                                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                            }
                        }
                    }
                }
                break
            case '3':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].style.display != 'none') {
                        let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                        if (price < 1000000 || price >= 2000000) {
                            if (list_main[i].className.indexOf('price-hide') == -1) {
                                list_main[i].className += ' price-hide'
                                list_end[i].className += ' price-hide'
                            }
                        } else {
                            if (list_main[i].className.indexOf('price-hide') != -1) {
                                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                            }
                        }
                    }
                }
                break
            case '4':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].style.display != 'none') {
                        let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                        if (price < 2000000 || price >= 3000000) {
                            if (list_main[i].className.indexOf('price-hide') == -1) {
                                list_main[i].className += ' price-hide'
                                list_end[i].className += ' price-hide'
                            }
                        } else {
                            if (list_main[i].className.indexOf('price-hide') != -1) {
                                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                            }
                        }
                    }
                }
                break
            case '5':
                for (let i = 0; i < list_main.length; i++) {
                    if (list_main[i].style.display != 'none') {
                        let price = parseInt(list_main[i].querySelector('.product-unit-price').value)
                        if (price < 3000000) {
                            if (list_main[i].className.indexOf('price-hide') == -1) {
                                list_main[i].className += ' price-hide'
                                list_end[i].className += ' price-hide'
                            }
                        } else {
                            if (list_main[i].className.indexOf('price-hide') != -1) {
                                list_main[i].className = list_main[i].className.slice(0, list_main[i].className.indexOf('price-hide') - 1) + list_main[i].className.slice(list_main[i].className.indexOf('price-hide') + 10, list_main[i].className.length)
                                list_end[i].className = list_end[i].className.slice(0, list_end[i].className.indexOf('price-hide') - 1) + list_end[i].className.slice(list_end[i].className.indexOf('price-hide') + 10, list_end[i].className.length)
                            }
                        }
                    }

                }
                break
        }
    }

    function sortByFilter() {
        let input_sort = document.querySelector('#admin-content #rightContainer .manage-products .other-filter-select').value
        let container = document.querySelector('#admin-content #rightContainer .manage-products .table-row-div-product')
        let list = document.querySelectorAll('#admin-content #rightContainer .manage-products .table-row-div-product .manage-products-table')
        let list_main = document.querySelectorAll('#admin-content #rightContainer .manage-products .row-table-main')
        let arr = []
        for (let i of list_main) {
            let list_extend = i.parentElement.querySelectorAll('.row-table-end .show-all-type-product')
            for (let j of list_extend) {
                let up = j.querySelector('.icon-up')
                if (up.style.display == 'var(--fa-display,inline-block)') j.click()
            }
        }
        for (let i of list)
            arr.push(i)
        switch (input_sort) {
            case '0':
                arr.sort((a, b) => {
                    if (parseInt(a.querySelector('.row-table-main .product-name').innerHTML) < parseInt(b.querySelector('.row-table-main .product-name').innerHTML)) {
                        return -1
                    } else return 1
                })
                for (let i of arr) {
                    container.appendChild(i)
                }
                break
            case 'decrease-price':
                arr.sort((a, b) =>
                    -parseInt(a.querySelector('.row-table-main .product-unit-price').value) + parseInt(b.querySelector('.row-table-main .product-unit-price').value)
                )
                for (let i of arr) {
                    container.appendChild(i)
                }
                break
            case 'increase-price':
                arr.sort((a, b) =>
                    parseInt(a.querySelector('.row-table-main .product-unit-price').value) - parseInt(b.querySelector('.row-table-main .product-unit-price').value)
                )
                for (let i of arr) {
                    container.appendChild(i)
                }
                break
            case 'decrease-quantity':
                arr.sort((a, b) =>
                    -parseInt(a.querySelector('.row-table-main .product-quantity').value) + parseInt(b.querySelector('.row-table-main .product-quantity').value)
                )
                for (let i of arr) {
                    container.appendChild(i)
                }
                break
            case 'increase-quantity':
                arr.sort((a, b) =>
                    parseInt(a.querySelector('.row-table-main .product-quantity').value) - parseInt(b.querySelector('.row-table-main .product-quantity').value)
                )
                for (let i of arr) {
                    container.appendChild(i)
                }
                break
        }

    }

    function findProductByNameOrId(input_text) {
        let manage_products = document.querySelector('.manage-products')
        let list_product = manage_products.querySelectorAll('.active-product-tab .table-row-div-product .row-table-main')
        for (let i of list_product) {
            let name = i.querySelector('.product-name').innerHTML.toLowerCase()
            let id = i.querySelector('.product-id .id-span').innerHTML
            if (name.indexOf(input_text.toLowerCase()) == -1 && id.indexOf(input_text) == -1) {
                i.parentElement.parentElement.style.display = 'none'
            } else {
                i.parentElement.parentElement.style.display = 'table'
            }
        }
    }

    search_product_button.onclick = function () {
        let parent = search_product_button.parentElement
        let input_text = parent.querySelector('.id-product-filter').value
        findProductByNameOrId(input_text)
    }
    search_product_input.onkeydown = function (event) {
        if (event.key == 'Enter') {
            let parent = search_product_input.parentElement
            let input_text = parent.querySelector('.id-product-filter').value
            findProductByNameOrId(input_text)
        }
    }

    function numOfCheckedProduct() {
        let res = 0
        let active_tab = document.querySelector('#admin-content #rightContainer .manage-products .active-product-tab')
        let list_checkbox = active_tab.querySelectorAll('.row-table-child input[type=checkbox]')
        for (let i of list_checkbox)
            if (i.checked) res++
        quantity_checked_product.innerHTML = res + ''
        return res
    }

</script>
</body>
</html>
