<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon"/>


    <!-- Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>

    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="/css/styles.css"/>


    <title>JC Phone Shop</title>
</head>

<body>
<!-- Header -->
<!-- Header_top -->
<header id="header" class="header">
    <div class="navigation">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-menu"></use>
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
                                <use xlink:href="phone_nam/images/sprite.svg#icon-cross"></use>
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
                            <input class="input_seach" id="input_seach" type="text" placeholder="seach...">
                            <div class="nav__icons">
                                <a href="#" class="icon__item" id="icon__item_seach">
                                    <svg class="icon__search">
                                        <use xlink:href="phone_nam/images/sprite.svg#icon-search"></use>
                                    </svg>
                                </a>
                            </div>
                        </li>
                        <li class="nav__item">

                            <div class="nav__item_hotro">
                                <a href="#hotro" class="nav__link scroll-link">HOTLINE HỖ TRỢ</a> <br>
                                <a href="#hotro" class="nav__link scroll-link">0999.999.999</a>
                            </div>
                        </li>

                    </ul>
                </div>
                <%if (session.getAttribute("user") == null) {%>
                <div class="nav__icons">
                    <a href="/LoginServlet" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="phone_nam/images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>

                    <div class="nav__item_user" id="nav__item_user">
                        <a href="/LoginServlet" class="nav__link scroll-link">Đăng Nhập /</a>
                        <a href="register.jsp" class="nav__link scroll-link">Đăng Ký</a><br>
                        <a href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>
                <%
                } else {
                    User user = (User) session.getAttribute("user");
                %>
                <div class="nav__icons">
                    <a href="/html/user.html" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
                        <img src="<%=user.getImg()%>"
                             style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
                    </a>

                    <div class="nav__item_user" style="font-size: 1.2rem" id="nav__item_user1">
                        <a href="html/user.html" class="nav__link scroll-link"
                           style="line-height: 2"><%=user.getName()%>
                        </a><br>
                        <a href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>
                <%}%>

                <%
                    if (session.getAttribute("user") != null) {
                        User u = (User) session.getAttribute("user");
                        int numOfCartItems= DataDB.getCartItems(u).size();
                %>
                <div class="nav__icons" id="nav__item_giohang">
                    <a href="/phone_nam/login.html" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="phone_nam/images/sprite.svg#icon-shopping-basket"></use>
                        </svg>

                        <span id="cart__total"><%=numOfCartItems%></span>
                    </a>
                    <a href="/phone_nam/login.html" class="nav__link_giohang">Giỏ Hàng</a>
                </div>
                <%}%>
            </nav>
        </div>
    </div>
</header>
<!-- Header_danhmuc -->
<header id="Header_danhmuc" class="Header_danhmuc">
    <div class="navigation_danhmuc">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-menu"></use>
                    </svg>
                </div>

                <ul class="nav__list" id="nav__list_DANHMUC">


                    <div class="nav__icons_danhmuc">
                        <a href="../html/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="../html/indexseach.html" class="scroll-linkDANHMUC">ỐP LƯNG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">SẠC DỰ PHÒNG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TAI NGHE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">CỤC SẠC</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">KÍNH CƯỜNG LỰC</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PHỤ KIỆN APPLE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">GIÁ ĐỠ ĐIỆN THOẠI</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TÚI CHỐNG NƯỚC</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/khac.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PHỤ KIỆN KHÁC</a>
                        </li>
                    </div>


                </ul>

            </nav>
        </div>
    </div>


    <!-- Hero -->
    <div class="hero">
        <div class="glide" id="glide_1">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <li class="glide__slide">
                        <div class="hero__center">
                            <div class="hero__left">
                                <span class="">Nguồn cảm hứng năm 2022</span>
                                <h1 class="">PIN DỰ PHÒNG DÀNH CHO BẠN!</h1>
                                <p>Mẫu Sạc Dự Phòng Bán Chạy nhất của năm</p>
                                <a href="/phone_chuong/product.html">
                                    <button class="hero__btn">MUA NGAY</button>
                                </a>
                            </div>
                            <div class="hero__right">
                                <div class="hero__img-container">
                                    <img class="banner_01" src="phone_nam/images/sacduphong1.png" alt="banner2"/>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="hero__center">
                            <div class="hero__left">
                                <span>Nguồn cảm hứng năm 2022</span>
                                <h1>ARIPODS 2 CHÍNH HÃNG APPLE</h1>
                                <p>Giảm Ngay 30% Khi Mua Hàng Trước Ngày 22/12/2022</p>
                                <a href="/phone_chuong/product.html">
                                    <button class="hero__btn">MUA NGAY</button>
                                </a>
                            </div>
                            <div class="hero__right">
                                <img class="banner_02" src="phone_nam/images/tainghe6.png" alt="banner2"/>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="glide__bullets" data-glide-el="controls[nav]">
                <button class="glide__bullet" data-glide-dir="=0"></button>
                <button class="glide__bullet" data-glide-dir="=1"></button>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
                <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-left2"></use>
                    </svg>
                </button>
                <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-right2"></use>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</header>
<!-- End Header -->

<!-- Main -->
<main id="main">
    <div class="container">
        <!-- Collection -->
        <section id="collection" class="section collection">
            <div class="collection__container" data-aos="fade-up" data-aos-duration="1200">
                <div class="collection__box">
                    <div class="img__container">
                        <img class="collection_02" src="phone_nam/images/collection_02.png" alt="">
                    </div>
                    <div class="collection__content">
                        <div class="collection__data">
                            <span>Ra mắt với nhiều màu sắc mới</span>
                            <h1>HEADPHONES</h1>
                            <a href="/phone_chuong/product.html">MUA NGAY</a>
                        </div>
                    </div>
                </div>
                <div class="collection__box">
                    <div class="img__container">
                        <img class="collection_01" src="phone_nam/images/sacnhanh1.png" alt="">
                    </div>
                    <div class="collection__content">
                        <div class="collection__data">
                            <span>Đặt trước sãn phẩm</span>
                            <h1>SẠC SIÊU NHANH</h1>
                            <a href="/phone_chuong/product.html">MUA NGAY</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- DANH MUC SÃN PHẨM -->
        <section class="section section-danhmuc">
            <div>

                <ul class="nav__list" id="nav__list_DANHMUC11">


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">ỐP LƯNG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">SẠC DỰ PHÒNG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TAI NGHE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">CỤC SẠC</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">KÍNH CƯỜNG LỰC</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PHỤ KIỆN APPLE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">GIÁ ĐỠ ĐIỆN THOẠI</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TÚI CHỐNG NƯỚC</a>
                        </li>
                    </div>


                </ul>
            </div>
            <div>

                <ul class="nav__list" id="nav__list_DANHMUC1">


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">THẺ NHỚ</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">CÁP CHUYỂN ĐỔI</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">MIC PHỤ</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">ĐÈN MINI</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">KHĂN LAU MÀN HÌNH</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href=/phone_nam/indexseach.html" class="scroll-linkDANHMUC">MIẾNG DÁN DECOR</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">DỤNG CỤ VỆ SINH</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">BÚT CẢM ỨNG</a>
                        </li>
                    </div>

                </ul>
            </div>
        </section>


        <!-- Latest Products -->
        <section class="section latest__products" id="latest">
            <div class="title__container">
                <div class="section__title active" data-id="Latest Products">
                    <span class="dot"></span>
                    <h1 class="primary__title">SÃN PHẨM HOT</h1>
                </div>
            </div>
            <div class="container" id="containersale" data-aos="fade-up" data-aos-duration="1200">
                <div class="glide" id="glide_2">
                    <div class="Flashsale">
                        <div class="Flashsale-left">
                            <div class="Flashsale-phukien">Phụ Kiện</div>
                            <div class="Flashsale-title">Flash Sale</div>
                        </div>
                        <div class="Flashsale-time">
                            <ul class="Flashsale-time_list">
                                <li class="Flashsale-time_list_cham">Bắt đầu sau</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">00</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">36</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">29</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">57</li>
                            </ul>
                        </div>
                    </div>
                    <div class="glide__track" data-glide-el="track">
                        <ul class="glide__slides latest-center">
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/gay1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Gậy tự sướng nhập khẩu</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>500.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/taingh6.webp" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Tai Nghe Không Dây</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>9.800.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/sacdp1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Sạc Dự Phòng Phiển Bản Giới Hạn</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>3.200.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/gay2.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Gậy Tự Sướng China</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>700.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/op1.webp" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Ốp Lưng Siêu Cứng</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>900.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/cuongluc1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Kính Cường Lực KingKong</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>600.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/tainghe5.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Tại Nghe Dành Cho Điện Thoại</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>6.600.000</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/sacdp3.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Sạc Dự Phòng Nhập Khẩu</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>5.500.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/op3.png" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Ốp Lưng Trong suốt</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price" style="color: red">
                                            <h4>2.100.000 VNĐ</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                        </ul>
                    </div>

                    <div class="glide__arrows" data-glide-el="controls">
                        <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-left2"></use>
                            </svg>
                        </button>
                        <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-right2"></use>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </section>
    <% Set<Product> rs = DataDB.getProducts(); %>
        <section class="category__section section" id="category">
            <div class="tab__list">
                <div class="title__container tabs">
                    <div class="section__titles category__titles ">
                        <div class="section__title filter-btn active" data-id="All Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">Tất cả</h1>
                        </div>
                    </div>
                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Trending Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">Xu hướng</h1>
                        </div>
                    </div>

                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Special Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">Đặc biệt</h1>
                        </div>
                    </div>

                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Featured Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">Bán chạy</h1>
                        </div>
                    </div>

                </div>
            </div>
            <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
                <div class="category__center">
                    <%for(Product pr: rs){ %>
                    <div class="product category__products">
                        <div class="product__header">
                            <img src="<%=pr.getImg()%>" alt="product">
                        </div>
                        <div class="product__footer">
                            <h3><%=pr.getName()%></h3>
                            <div class="rating">
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                                </svg>
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                                </svg>
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                                </svg>
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                                </svg>
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                                </svg>
                            </div>
                            <div class="product__price" style="color: red">

                                <h4><%=pr.getPrice()+" VND"%></h4>
                            </div>
                            <a href="#" style="opacity: 0;"><button type="submit" class="product__btn">THÊM VÀO GIỎ HÀNG</button></a>
                        </div>
                        <ul>
                            <li>
                                <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                    <svg>
                                        <use xlink:href="./images/sprite.svg#icon-eye"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a data-tip="Add To Wishlist" data-place="left" href="#">
                                    <svg>
                                        <use xlink:href="./images/sprite.svg#icon-heart-o"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a data-tip="Add To Compare" data-place="left" href="#">
                                    <svg>
                                        <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <%}%>
                </div>
            </div>

        </section>

        <!-- Facility Section -->
        <section class="facility__section section" id="facility">
            <div class="container">
                <div class="facility__contianer" data-aos="fade-up" data-aos-duration="1200">
                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-airplane"></use>
                            </svg>
                        </div>
                        <p>MIỄN PHÍ VẬN CHUYỂN TOÀN CẦU</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card-alt"></use>
                            </svg>
                        </div>
                        <p>HOÀN TIỀN 100%</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card"></use>
                            </svg>
                        </div>
                        <p>NHIỀU HÌNH THỨC THANH TOÁN</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-headphones"></use>
                            </svg>
                        </div>
                        <p>HỖ TRỢ 24/7</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section -->
        <section class="section testimonial" id="testimonial">
            <div class="testimonial__container">
                <div class="glide" id="glide_4">
                    <div class="glide__track" data-glide-el="track">
                        <ul class="glide__slides">
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>Sử dụng mã giảm 80% phí vận chuyển (tối đa 15K) đơn hàng từ 0Đ cho sản phẩm thuộc
                                        gian hàng Freeship Extra.
                                        Đơn vị vận chuyển khả dụng: Nhanh
                                        Áp dụng trên ứng dụng JC SHOP.
                                        Mã chỉ được hoàn theo quy định của JC SHOP.
                                        Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi
                                        hoặc
                                        khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/profile.php?id=100015179019358">
                                            <h3>GIẢM 15%</h3>
                                        </a>
                                        <span>đến hết ngày 22/11/2022</span>
                                    </div>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>Sử dụng mã giảm 50% phí vận chuyển (tối đa 30K) đơn hàng từ 0Đ cho sản phẩm thuộc
                                        gian hàng Freeship Extra.
                                        Đơn vị vận chuyển khả dụng: Nhanh
                                        Áp dụng trên ứng dụng JC SHOP.
                                        Mã chỉ được hoàn theo quy định của JC SHOP.
                                        Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi
                                        hoặc
                                        khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/Nam.74.76.76">
                                            <h3>GIẢM 30k</h3>
                                        </a>
                                        <span>đến hết ngày 22/12/2022</span>
                                    </div>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>Mã CCBDPBL1022A hoàn 5% tối đa 100K Xu cho đơn hàng hợp lệ từ 50K từ shop Hoàn Xu
                                        Xtra trên ứng dụng Shopee. HSD: 28/10/2022 23:59. Số lượng có hạn. Mỗi khách
                                        hàng
                                        chỉ sử dụng 1 lần. Số Shopee Xu hoàn được tính trên giá trị đơn hàng (sau khi
                                        trừ
                                        khuyến mãi, số Shopee Xu và không bao gồm phí vận chuyển).</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/canh.nguyenhua">
                                            <h3>GIẢM 100k</h3>
                                        </a>
                                        <span>đến hết ngày 22/12/2022</span>
                                    </div>
                                </div>

                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="">
                                    </div>
                                    <p>Sử dụng mã miễn phí vận chuyển cho sản phẩm thuộc gian hàng FreeShip Xtra:
                                        + Miễn phí vận chuyển tối đa 15,000đ cho đơn hàng từ 50,000đ.
                                        + Miễn phí vận chuyển tối đa 25,000đ cho đơn hàng từ 150,000đ dành riêng gian
                                        hàng
                                        quốc tế.
                                        + Miễn phí vận chuyển tối đa 70,000đ cho đơn hàng từ 300,000đ.
                                        + Miễn phí vận chuyển tối đa 25,000đ cho đơn hàng từ 200,000đ dành riêng gian
                                        hàng
                                        trong nước ( chỉ áp dụng vào thứ 4 hàng tuần ).
                                        Đơn vị vận chuyển khả dụng: Nhanh
                                        Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi
                                        hoặc
                                        khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/profile.php?id=100024761910958">
                                            <h3>MIỄN PHÍ VẪN CHUYỂN</h3>
                                        </a>
                                        <span>đến hết ngày 22/12/2022</span>
                                    </div>
                                </div>
                            </li>

                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="">
                                    </div>
                                    <p>Sử dụng mã miễn phí vận chuyển cho đơn hàng thỏa điều kiện ưu đãi tại ứng
                                        dụng
                                        JC SHOP .
                                        Kênh vận chuyển khả dụng: Nhanh.
                                        Chỉ áp dụng cho một số người bán tham gia chương trình Hoàn Xu Xtra, Freeship
                                        Xtra,
                                        JC SHOP Mall.
                                        Mã chỉ được hoàn theo quy định của JC SHOP
                                        Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi
                                        hoặc
                                        khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/songchongtao.thichet/">
                                            <h3>MIỄN PHÍ 1 ĐƠN HÀNG</h3>
                                        </a>
                                        <span>diễn ra vào ngày 30 hàng tháng</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="glide__bullets" data-glide-el="controls[nav]">
                        <button class="glide__bullet" data-glide-dir="=0"></button>
                        <button class="glide__bullet" data-glide-dir="=1"></button>
                        <button class="glide__bullet" data-glide-dir="=2"></button>
                        <button class="glide__bullet" data-glide-dir="=3"></button>
                        <button class="glide__bullet" data-glide-dir="=4"></button>
                    </div>
                </div>
            </div>
        </section>

        <!--New Section  -->
        <section class="section news" id="news">
            <div class="container">
                <div class="title__container">
                    <div class="section__titles">
                        <div class="section__title active">
                            <span class="dot"></span>
                            <h1 class="primary__title">Tin Tức</h1>
                        </div>
                    </div>
                </div>
                <div class="news__container">
                    <div class="glide" id="glide_5">
                        <div class="glide__track" data-glide-el="track">
                            <ul class="glide__slides">
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news1.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Trương Tưng Bừng Sale Cực Lớn</h3>
                                            <span>By Admin Nam</span>
                                            <p>Sự nhiệt tình và quy cách phục vụ chuyên nghiệp tại
                                                JC PHONE khiến ca nghệ sĩ rất hài lòng. Các nghệ sĩ nổi tiếng cho biết
                                                rất
                                                là an tâm hơn,...</p>
                                            <a href="#">
                                                <button>Xem Thêm</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news2.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Trương Tưng Bừng Sale Cực Lớn</h3>
                                            <span>By Admin Cảnh</span>
                                            <p>Sự nhiệt tình và quy cách phục vụ chuyên nghiệp tại
                                                JC PHONE khiến ca nghệ sĩ rất hài lòng. Các nghệ sĩ nổi tiếng cho biết
                                                rất
                                                là an tâm hơn,...</p>
                                            <a href="#">
                                                <button>Xem Thêm</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news3.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Trương Tưng Bừng Sale Cực Lớn</h3>
                                            <span>By Admin Thuận</span>
                                            <p>Sự nhiệt tình và quy cách phục vụ chuyên nghiệp tại
                                                JC PHONE khiến ca nghệ sĩ rất hài lòng. Các nghệ sĩ nổi tiếng cho biết
                                                rất
                                                là an tâm hơn,...</p>
                                            <a href="#">
                                                <button>Xem Thêm</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news4.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Trương Tưng Bừng Sale Cực Lớn</h3>
                                            <span>By Admin Biên</span>
                                            <p>Sự nhiệt tình và quy cách phục vụ chuyên nghiệp tại
                                                JC PHONE khiến ca nghệ sĩ rất hài lòng. Các nghệ sĩ nổi tiếng cho biết
                                                rất
                                                là an tâm hơn,...</p>
                                            <a href="#">
                                                <button>Xem Thêm</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news5.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Trương Tưng Bừng Sale Cực Lớn</h3>
                                            <span>By Admin Hoài</span>
                                            <p>Sự nhiệt tình và quy cách phục vụ chuyên nghiệp tại
                                                JC PHONE khiến ca nghệ sĩ rất hài lòng. Các nghệ sĩ nổi tiếng cho biết
                                                rất
                                                là an tâm hơn,...</p>
                                            <a href="#">
                                                <button>Xem Thêm</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>


                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- NewsLetter -->
        <section class="section newsletter" id="contact">
            <div class="container">
                <div class="newsletter__content">
                    <div class="newsletter__data">
                        <h3>THEO DÕI BẢN TIN JC-TEAM</h3>
                        <p>Hãy đăng ký để có thể biết được những voucher, những sản phẩm mới sớm nhất!!</p>
                    </div>
                    <form action="#">
                        <input type="email" placeholder="Nhập địa chỉ Email của bạn" class="newsletter__email">
                        <a class="newsletter__link" href="#">Đăng Ký</a>
                    </form>
                </div>
            </div>
        </section>

    </div>
</main>

<!-- End Main -->

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
                <a href="/css/login.css">Tài khoản của tôi</a>
                <a href="/css/login.css">Lịch sử đơn hàng</a>
                <a href="/css/login.css">Danh sách mong muốn</a>
                <a href="#">Cung cấp thông tin</a>
                <a href="/html/home.html">Quay lại</a>
            </div>
            <div class="footer-top__box">
                <h3>CONTACT US</h3>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-location"></use>
              </svg>
            </span>
                    <a
                            href="https://www.google.com/maps/dir/10.8840587,106.7833045/t%C3%B2a+b5+ktx+khu+b+%C4%91hqg+tphcm/@10.8838766,106.7809145,17z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3174d890227de92d:0x99150888f275361b!2m2!1d106.7829712!2d10.8839777">
                        Tòa B5, KTX_B ĐHQG TPHCM, Linh Trung, Thủ Đức, TPHCM</a>
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
                    JC-PHONEcompany@gmail.com
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
                    08.999.999.99
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-paperplane"></use>
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

<!-- PopUp -->
<div class="popup hide__popup">
    <div class="popup__content">
        <div class="popup__close">
            <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-cross"></use>
            </svg>
        </div>
        <div class="popup__left">
            <div class="popup-img__container">
                <img class="popup__img" src="phone_nam/images/popup.jpg" alt="popup">
            </div>
        </div>
        <div class="popup__right">
            <div class="right__content">
                <h1>Nhận phiếu giảm <span>30%</span> giá</h1>
                <p>Đăng ký nhận bản tin của JC-Team và tiết kiệm 30% cho lần mua hàng tiếp theo. Không có thư rác, Hứa
                    luôn á,
                    nói láo sún răng luôn ớoo!!
                </p>
                <form action="#">
                    <input type="email" placeholder="Nhập Email của bạn..." class="popup__form">
                    <a href="#">Đăng ký</a>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Go To -->

<a href="#header" class="goto-top scroll-link">
    <svg>
        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-up"></use>
    </svg>
</a>

<!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->
<%--<script src="phone_nam/js/products.js"></script>--%>
<%--<script src="phone_nam/js/index.js"></script>--%>
<script src="js/slider.js"></script>

</body>

</html>