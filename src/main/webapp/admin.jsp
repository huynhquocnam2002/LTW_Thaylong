<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.*" %>
<%@ page import="org.w3c.dom.UserDataHandler" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- font awesome -->
    <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"/>
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="style/cssheader.css"/>
    <link rel="stylesheet" href="style/admin.css"/>

    <title>Admin JC Shop</title>
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
            <jsp:include page="common/product.jsp"/>
            <jsp:include page="common/order.jsp"/>
            <jsp:include page="common/category.jsp"/>
            <jsp:include page="common/producer.jsp"/>
            <jsp:include page="common/user.jsp"/>
            <jsp:include page="common/voucher.jsp"/>
            <jsp:include page="common/doanhso.jsp"/>
        </div>
    </div>
</section>

<!--    --------------------JS-------------------------------->
<script>
    let abc=1;
    console.log("Thuan hello")
</script>
<script src="js/admin.js"></script>
</body>
</html>
