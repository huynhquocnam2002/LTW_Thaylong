<%--
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Admin--%>
<%--  Date: 11/26/2022--%>
<%--  Time: 12:03 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>


<%@ page import="vn.edu.hcmuaf.fit.DB.DBConnect" %>

<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>

<%@ page import="vn.edu.hcmuaf.fit.model.Producer" %>

<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>

<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Review" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.*" %>


<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%--  <jsp:useBean id="pu" class="vn.edu.hcmuaf.fit.model.ProductDao" scope="request" />--%>

    <%--  <jsp:useBean id="pd" class="vn.edu.hcmuaf.fit.model.ProducerDao" scope="request" />--%>

    <%--  <jsp:useBean id="c" class="vn.edu.hcmuaf.fit.model.CategoryDao" scope="request" />--%>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="image/images/favicon.ico" type="image/x-icon"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <!-- Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>

    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="/css/cssProduct.css"/>


    <link rel="stylesheet" href="icon/fontawesome-free-5.15.4-web/css/all.min.css">

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
                        <use xlink:href="image/images/sprite.svg#icon-menu"></use>
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
                                <use xlink:href="image/images/sprite.svg#icon-cross"></use>
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
                                        <use xlink:href="image/images/sprite.svg#icon-search"></use>
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

                <div class="nav__icons">
                    <a href="/phone_thuan/user.html" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="image/images/sprite.svg#icon-user"></use>
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
                            <use xlink:href="image/images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total">4</span>
                    </a>
                    <a href="/phone_chuong/cart.html" class="nav__link_giohang">Giỏ Hàng</a>
                </div>
            </nav>
        </div>
    </div>
</header>
<!-- Header_danhmuc -->


<!-- Phần main chi tiết sản phẩm-->


<div class="block-breadcrumbs">

    <div class="prefix">
        <ul>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633">
                <path id="home"
                      d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z"
                      transform="translate(-1.471 -3.053)" fill="#d70018"></path>
            </svg>
            <li>Trang chủ
            <li class="item"></li>
            </li>
            <li>
                    <%=CategoryDAO.getCategorysObject(request.getParameter("idProduct")).getName()%>
            <li class="item"></li>
            </li>

            <li> <%=ProducerDAO.getProducersOject(request.getParameter("idProduct")).getName()%>
            <li class="item"></li>
            </li>



            <li><%=ProductDAO.getProductById(request.getParameter("idProduct")).getName()%>
            </li>


        </ul>
    </div>
</div>
<h2 id="section__title__product"><%=ProductDAO.getProductById(request.getParameter("idProduct")).getName()%>
</h2>

<section id="section-detailsProduct">

    <div class="section__container__product">

        <hr>


        <div class="product-detail__left">

            <div class="container--image">
                <div class="hero">
                    <div class="glide" id="glide_1">
                        <div class="glide__track" data-glide-el="track">
                            <ul class="glide__slides ">
                                <li class="glide__slide">
                                    <div class="hero__center">
                                        <div class="hero__left">
                                            <h1>TÍNH NĂNG NỔI BẬT</h1>

                                            <img src="<%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>
                                            "

                                                 alt="img__product" id="image__detail__product">

                                            <div class="desktop">
                                                Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các <br>thiết bị <br>


                                                Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo <br>


                                                Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C<br>


                                                Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần <br> dòng sạc
                                                thấp

                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="hero__center">
                                        <div class="hero__left">

                                            <img src="
                                                <%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>"
                                                 style="width:375px!important;height: 375px !important; position: relative;top:-22px;padding: 10px;border-radius: 10px !important;">

                                        </div>

                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="hero__center">
                                        <div class="hero__left">

                                            <img src="
                                                <%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>"
                                                 style="width:375px!important;height: 375px !important; position: relative;top:-22px;padding: 10px;border-radius: 10px !important;">
                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="glide__bullets" data-glide-el="controls[nav]">
                            <button class="glide__bullet" data-glide-dir="=0"></button>
                            <button class="glide__bullet" data-glide-dir="=1"></button>
                            <button class="glide__bullet" data-glide-dir="=2"></button>
                        </div>

                        <div class="glide__arrows" data-glide-el="controls">
                            <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-arrow-left2"></use>
                                </svg>
                            </button>
                            <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-arrow-right2"></use>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>


                <div class="swiper-wrapper">

                    <div class="swiper-slide swiper-slide-visible1">


                        <img src="
                               data:image/jpeg;base64,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"
                             alt="" id="swiper-slide-visible1__image">

                        <p>Tính năng <br> nổi bật</p>


                    </div>

                    <div class="swiper-slide swiper-slide-visible2">

                        <img src=
                                     "https://cdn2.cellphones.com.vn/50x/media/catalog/product/p/i/pin-sac-du-phong-anker-powercore-iii-sense-slim-a1244-10000mah.jpg"
                             alt="" id="swiper-slide-visible2__image">


                    </div>
                    <div class="swiper-slide swiper-slide-visible3">

                        <img src="
                                https://cdn2.cellphones.com.vn/50x/media/catalog/product/p/i/pin-sac-du-phong-anker-powercore-iii-sense-slim-a1244-10000mah-1.png"
                             alt="" id="swiper-slide-visible3__image">
                    </div>
                </div>
            </div>

            <img style="position: absolute; bottom: -50px; "
                 src="https://cdn2.cellphones.com.vn/x/https://dashboard.cellphones.com.vn/storage/teasing-Camp-100-product.gif"
                 alt="">
        </div>

        <div class="product-detail__center">


            <h3 style="color: red; "><%=ProductDAO.getProductById(request.getParameter("idProduct")).getPrice()%> đ


                <p style="color:#707070; position: relative; left:90px; bottom:25px;">
                    <del>1.000.000</del>
                    <u>đ</u></p>
            </h3>

            <p>Chọn màu để xem giá và chi nhánh có hàng</p>

            <div class="product__item">

                <img
                        src="<%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>"
                        alt="" style="width: 33px; height: 35px; object-fit: cover;">

                <div class="product__title__item">
                    <strong>Đen</strong>

                    <span>900.000<u>đ</u></span>

                </div>


            </div>


            <div class="input-counter">


                <span>Số lượng:</span>
                <div>
                    <button class="minus-btn" onclick="minus()">
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-minus"></use>
                        </svg>
                    </button>
                    <input type="text" value="1" class="counter-btn" id="amount">
                    <button class="plus-btn" onclick="plus()">
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-plus"></use>
                        </svg>
                    </button>
                </div>
            </div>

            <%--    Tang giam so luong         --%>
            <%--            js--%>



            </li>


            <div class="title">
                <li>


                    <span>Giá:</span>
                    <a href="#" class="new__price"><%=ProductDAO.getProductById(request.getParameter("idProduct")).getPrice()%>VNĐ</a>

                </li>
                <li>
                    <span>Hãng:</span>
                    <a href="#"><%=ProducerDAO.getProducersOject(request.getParameter("idProduct")).getName()%>
                    </a>


                </li>

                <li>
                    <span>Loại sản phẩm:</span>
                    <a href="#"><%= CategoryDAO.getCategorysObject(request.getParameter("idProduct")).getName()%> </a>

                </li>
                <li>
                    <span>Hiện có:</span>
                    <a href="#" class="in-stock">Trong kho (<%=ProductDAO.getProductById(request.getParameter("idProduct")).getQuantity()%> sản phẩm)</a>
                </li>
                </ul>
                <div class="product-info__btn">
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-crop"></use>
                </svg>
              </span>&nbsp;
                        HƯỚNG DẪN KÍCH THƯỚC
                    </a>
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-truck"></use>
                </svg>
              </span>&nbsp;
                        VẬN CHUYỂN
                    </a>
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-envelope-o"></use>
                </svg>&nbsp;
              </span>
                        HỎI VỀ SẢN PHẨM
                    </a>

                </div>


                <div class="product__bonus">

                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu_Db-7oZT6WVbPR9ouktyhihrr-PCyf0lle3zrMQ_dEpQpp5UfVbwNflLldcQ-H5-fGs&usqp=CAU"
                         alt="" style="width:25px;height:25px;position:absolute; top: -15px; left: 35px;z-index: 9;">
                    <span style="color: #be1e2d;text-align:center; width: 115px; background-color:white;position:absolute; top: -15px; left: 60px;">Khuyến mãi</span>

                    <li>Duy nhất <b>Thứ 5</b>: Giá chỉ <span style="color:red;">940.000đ.</span></li>
                    <li>Tặng thêm cáp sạc 20cm Bagi</li>
                    <li>Giảm thêm 30% (Tối đa <span style="color:red;">600.000đ</span> khi mở thẻ TPBank EVO</li>

                    <hr>

                    <span style="margin:20px 0 0 15px;">ƯU ĐÃI THÊM</span>

                    <p style="margin:5px 0 0 15px;">Giảm thêm 5% tối đa 1 triệu khi thanh toán qua Kredivo</p>

                    <p style="margin:5px 0 0 15px;">Giảm thêm 30% tối đa 600.000đ khi mở thẻ TPBank</p>

                </div>

                <div class="button">
                    <button class="button__pay" id="button__cart"> THÊM VÀO <strong>GIỎ</strong> HÀNG</button>

                    <button class="button__pay" id="button__buy">MUA NGAY</button>

                </div>


            </div>

            <div class="product-detail__right">


                <strong>Bộ sản phẩm</strong>

                <p style="color:#333333; font-size:14px;">Bộ sản phẩm bao gồm: Hộp Pin dự phòng, <br>Sách HDSD</p>

                <strong>Bảo hành </strong>

                <p style="color:#333333; font-size:14px;">Bảo hành:<b<%=ProductDAO.getProductById(request.getParameter("idProduct")).getIns()%> tháng></b> chính hãng Energiner</p>



            </div>
        </div>

    </div>
</section>

<div class="product-detail__bottom">
    <div class="title__container tabs">

        <div class="section__titles category__titles ">
            <div class="section__title detail-btn active" data-id="description">
                <span class="dot"></span>
                <h1 class="primary__title">Mô tả</h1>
            </div>
        </div>

        <div class="section__titles">
            <div class="section__title detail-btn" data-id="reviews">
                <span class="dot"></span>
                <h1 class="primary__title">Đánh giá</h1>
            </div>
        </div>

        <div class="section__titles">
            <div class="section__title detail-btn" data-id="shipping">
                <span class="dot"></span>
                <h1 class="primary__title">Chi tiết vận chuyển</h1>
            </div>
        </div>
    </div>

    <div class="detail__content">
        <div class="content active" id="description">

            <h2>Đặc điểm nổi bật</h2>
            <ul>
                <li>Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị</li>
                <li>Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo</li>
                <li>Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C</li>
                <li>Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp</li>
            </ul>
            <h2>Pin sạc dự phòng Anker PowerSlim 10000mAh PD A1244 – Mỏng nhẹ và nhanh chóng</h2>
            <ul>
                <li>Các sản phẩm pin sạc dự phòng Anker luôn là lựa chọn hàng đầu của nhiều người dùng về chất lượng
                    cũng như kiểu dáng.
                </li>
                <li><span style="color:#D70018;font-weight: 200;">Pin sạc dự phòng </span>Anker PowerSlim 10000mAh PD
                    A1244 với kiểu dáng mỏng nhẹ số 1 thế giới, hỗ trợ sạc 3 chế độ,…
                </li>
                <li>chính là một phụ kiện vô cùng hợp lý.</li>

            </ul>
            <h2>Kiểu dáng mỏng nhẹ hàng đầu với nguồn sức mạnh to lớn 10000mAh</h2>
            <p>Pin sạc dự phòng Anker PowerSlim 10000mAh PD A1244 có kiểu dáng giống với tên gọi “PowerSlim” của mình –
                mỏng nhẹ

                <span id="dots">...</span></p>


            <img style="width:100% ;height: 495.23px; object-fit: cover; "
                 src="<%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>"
                 alt="">

            <p>Hỗ trợ 3 chế độ sạc và công nghệ PD tiết kiệm thời gian sạc
                Pin sạc dự phòng Anker PowerSlim 10000mAh PD A1244 cung cấp <br> cho người dùng 3 chế độ sạc bao gồm sạc
                nhanh 20W USB-C,sạc 12W USB-A cùng công nghệ PowerIQ, cuối cùng là sạc nhỏ giọt<br> Trickle-Charging phù
                hợp với những thiết bị có dòng sạc thấp.</p>
            <!--

                 <br>



                 <div id="more" style="position: relative;" >

                  <p style="  width:100%;
                  height:500px;
                  background-color: #D70018;
                  position:relative;"> Lorem ipsum dolor sit amet consectetur adipisicing elit.
                 Unde, saepe magnam earum eaque, iure accusantium quo eligendi quas quae,
                 ab doloribus. Laboriosam fugiat consectetur corrupti neque quis impedit quisquam
                 praesentium.</p>

               </div>

               </p>





                  <button  style="cursor: pointer; " id="btn__more" onclick="btnMore()"> Xem thêm


                  </button> -->


        </div>
        <div class="content" id="reviews">
            <h1>Đánh giá của khách hàng</h1>


            <div class="container__rating">

                <div class="container__rating__left">

                    <h6>5/5</h6>

                    <div class="rating">

                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                            <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                        </svg>
                    </div>

                    <p><strong>7</strong> đánh giá và nhận xét </p>

                </div>

                <div class="container__rating__right">

                    <table>

                        <tr>
                            <td>5
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                </svg>
                            </td>

                            <td><input type="range" min="0" max="100" value="100" disabled></td>
                            <td><h6>7 đánh giá</h6></td>
                        </tr>
                        <tr>
                            <td>4
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                </svg>
                            </td>
                            <td><input type="range" min="0" max="100" value="0" disabled></td>
                            <td><h6>0 đánh giá</h6></td>
                        </tr>
                        <tr>
                            <td>3
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                </svg>
                            </td>
                            <td><input type="range" min="0" max="100" value="0" disabled></td>
                            <td><h6>0 đánh giá</h6></td>
                        </tr>
                        <tr>
                            <td>2
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                </svg>
                            </td>
                            <td><input type="range" min="0" max="100" value="0" disabled></td>
                            <td><h6>0 đánh giá</h6></td>
                        </tr>
                        <tr>
                            <td>1
                                <svg>
                                    <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                </svg>
                            </td>
                            <td><input type="range" min="0" max="100" value="0" disabled></td>
                            <td><h6>0 đánh giá</h6></td>
                        </tr>
                    </table>

                </div>

            </div>

            <h6 style="position: relative; bottom:280px; left: 235px;">Bạn đánh giá sao sản phẩm này</h6>

            <button class="button__rating" style="position: relative; bottom:250px; left: 235px;">Đánh giá ngay


            </button>

            <div class="container__feedback">

                <% List<Review> listreview = ReviewDAO.getReview(request.getParameter("idProduct")); %>
                <% for (int i = 0; i < listreview.size() ; i++) { %>

                <div class="container__feedback__name">

                    <div class="container__name__image" style="display: flex;align-items: center; ">
                        <img class="container__feedback__name--border"
                             src="<%=UserDAO.getUserById(listreview.get(i).getId_user()).getImg()%>"
                             alt="">
                        <h6> <%=UserDAO.getUserById(listreview.get(i).getId_user()).getName()%></h6>
                    </div>

                    <h6> <%=listreview.get(i).getReview_date()%></h6>
                </div>

                <div class="container__feedback__title">

                    <h6 style="display: flex;">Đánh giá
                        <div class="rating">

                            <svg>
                                <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                            </svg>
                            <svg>
                                <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                            </svg>
                            <svg>
                                <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                            </svg>
                            <svg>
                                <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                            </svg>
                            <svg>
                                <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                            </svg>
                        </div>
                    </h6>

                    <h6><strong>Nhận xét:</strong> <%=listreview.get(i).getContent()%></h6>
                </div>
           <%}%>

            </div>
        </div>
        <div class="content" id="shipping">
            <h3>Chính sách trả hàng</h3>
            <p>Bạn có thể trả lại hầu hết các mặt hàng mới,
                chưa mở trong vòng 30 ngày kể từ ngày giao hàng để được hoàn tiền đầy đủ.
                Chúng tôi cũng sẽ thanh toán chi phí vận chuyển trả lại nếu việc trả lại là
                do lỗi của chúng tôi (bạn nhận được một mặt hàng không chính xác hoặc bị lỗi, v.v.).</p>
            <p>Bạn sẽ nhận được tiền hoàn lại trong vòng bốn tuần kể từ khi
                đưa gói hàng của mình cho người gửi trả hàng, tuy nhiên, trong nhiều trường hợp,
                bạn sẽ nhận được tiền hoàn lại nhanh chóng hơn. Khoảng thời gian này bao gồm thời gian
                vận chuyển để chúng tôi nhận được hàng trả lại của bạn từ người gửi hàng (5 đến 10 ngày làm việc),
                thời gian chúng tôi xử lý đơn hàng trả lại của bạn khi chúng tôi nhận được hàng (3 đến 5 ngày làm việc)
                và thời gian ngân hàng của bạn để xử lý yêu cầu hoàn lại tiền của chúng tôi (5 đến 10 ngày làm việc).
            </p>
            <p>Nếu bạn cần trả lại một mặt hàng, chỉ cần đăng
                nhập vào tài khoản của bạn, xem đơn đặt hàng bằng liên kết
                'Hoàn tất đơn đặt hàng' trong menu Tài khoản của tôi và nhấp
                vào nút Trả lại (các) Mặt hàng. Chúng tôi sẽ thông báo cho bạn
                qua e-mail về khoản tiền hoàn lại của bạn sau khi chúng tôi đã
                nhận và xử lý mặt hàng bị trả lại.
            </p>
            <h3>Vận chuyển</h3>
            <p>Chúng tôi có thể gửi đến hầu như bất kỳ địa chỉ
                nào trên thế giới. Lưu ý rằng có những hạn chế đối
                với một số sản phẩm và một số sản phẩm không thể được
                vận chuyển đến các điểm đến quốc tế.</p>
            <p>Khi bạn đặt hàng, chúng tôi sẽ ước tính ngày vận chuyển
                và giao hàng cho bạn dựa trên sự sẵn có của các mặt hàng
                của bạn và các tùy chọn giao hàng mà bạn chọn. Tùy thuộc
                vào nhà cung cấp dịch vụ vận chuyển mà bạn chọn, ước tính
                ngày giao hàng có thể xuất hiện trên trang báo giá vận chuyển.
            </p>
            <p>Cũng xin lưu ý rằng phí vận chuyển cho nhiều
                mặt hàng chúng tôi bán dựa trên trọng lượng.
                Trọng lượng của bất kỳ mục nào như vậy có thể
                được tìm thấy trên trang chi tiết của nó. Để phản
                ánh chính sách của các công ty vận chuyển mà chúng
                tôi sử dụng, tất cả các trọng lượng sẽ được làm tròn thành pound tiếp theo.
            </p>
        </div>
    </div>
</div>
</section>

<!-- Related Products -->
<section class="section related__products">
    <div class="title__container">
        <div class="section__title filter-btn active">
            <span class=" dot"></span>
            <h1 class="primary__title">Sản phẩm liên quan</h1>
        </div>
    </div>
    <div class="container" data-aos="fade-up" data-aos-duration="1200">
        <div class="glide" id="glide_3">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides latest-center">
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="<%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3><%=ProductDAO.getProductById(request.getParameter("idProduct")).getName()%>
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4><%=ProductDAO.getProductById(request.getParameter("idProduct")).getPrice()%> VNĐ</h4>
                                </div>
                                <a href="CartServlet?command=insert&idProduct=<%=ProductDAO.getProductById(request.getParameter("idProduct")).getId()%>&cartID=<%=System.currentTimeMillis()%>">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="<%=ProductDAO.getProductById("PR36").getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>
                                    <%=ProductDAO.getProductById("PR36").getName()%>
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4><%=ProductDAO.getProductById("PR36").getPrice()%> VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="  <%=data.getProductById("PR42").getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3><%=data.getProductById("PR42").getName()%>
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4><%=data.getProductById("PR42").getPrice()%> VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="  <%=data.getProductById("PR7").getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3><%=data.getProductById("PR7").getName()%>
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4><%=ProductDAO.getProductById("PR7").getPrice()%> VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//s/a/sac-du-phong-mazer-infinite-boost-supermini-pocket-8.0-v2-8000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Mazer </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-mophie-snap_-powerstation-stand-10000-mah-didongviet_1.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>
                                    Pin sạc dự phòng Mophie
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>1.320.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-basix-slim-pd-n99-10000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>250.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-10000mah-pb-n83s-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
                <button style="position: absolute; left:0; top:50%;" class="glide__arrow glide__arrow--left"
                        data-glide-dir="<">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-arrow-left2"></use>
                    </svg>
                </button>
                <button style="position: absolute; left:96%; top:50%;" class="glide__arrow glide__arrow--right"
                        data-glide-dir=">">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-arrow-right2"></use>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</section>
<!-- Latest Products -->
<section class="section latest__products">
    <div class="title__container">
        <div class="section__title filter-btn active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Sản phẩm mới nhất</h1>
        </div>
    </div>
    <div class="container" data-aos="fade-up" data-aos-duration="1200">
        <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides latest-center">
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//s/a/sac-du-phong-mazer-infinite-boost-supermini-pocket-8.0-v2-8000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Mazer </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-mophie-snap_-powerstation-stand-10000-mah-didongviet_1.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>
                                    Pin sạc dự phòng Mophie
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>1.320.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-basix-slim-pd-n99-10000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>250.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-10000mah-pb-n83s-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//s/a/sac-du-phong-mazer-infinite-boost-supermini-pocket-8.0-v2-8000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Mazer </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-mophie-snap_-powerstation-stand-10000-mah-didongviet_1.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>
                                    Pin sạc dự phòng Mophie
                                </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>1.320.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-basix-slim-pd-n99-10000mah-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>250.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-10000mah-pb-n83s-didongviet.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3>Pin sạc dự phòng Aukey </h3>
                                <div class="rating">
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-empty"></use>
                                    </svg>
                                </div>
                                <div class="product__price">
                                    <h4>550.000 VNĐ</h4>
                                </div>
                                <a href="#">
                                    <button type="submit" class="product__btn">Thêm vào giỏ hàng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="/phone_chuong/product.html">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-heart-o"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Compare" data-place="left" href="#">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-loop2"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                </ul>

            </div>

            <div class="glide__arrows" data-glide-el="controls">
                <button style="position: absolute; left:0; top:50%;" class="glide__arrow glide__arrow--left"
                        data-glide-dir="<">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-arrow-left2"></use>
                    </svg>
                </button>
                <button style="position: absolute; left: 96% ; top:50%;" class="glide__arrow glide__arrow--right"
                        data-glide-dir=">">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-arrow-right2"></use>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</section>
</div>
<!-- Facility Section -->
<section class="facility__section section" id="facility">
    <div class="container">
        <div class="facility__contianer">
            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-airplane"></use>
                    </svg>
                </div>
                <p>MIỄN PHÍ VẬN CHUYỂN TOÀN CẦU</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-credit-card-alt"></use>
                    </svg>
                </div>
                <p>ĐẢM BẢO HOÀN TIỀN 100%</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-credit-card"></use>
                    </svg>
                </div>
                <p>THANH TOÁN BẰNG THẺ</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-headphones"></use>
                    </svg>
                </div>
                <p>HỖ TRỢ TRỰC TUYẾN 24/7</p>
            </div>
        </div>
    </div>
</section>
</main>


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
                <a href="/phone_thuan/user.html">Tài khoản của tôi</a>
                <a href="/phone_thuan/user.html">Lịch sử đơn hàng</a>
                <a href="/phone_chuong/cart.html">Danh sách mong muốn</a>
                <a href="#">Cung cấp thông tin</a>
                <a href="/phone_nam/indexLogin.html">Quay lại</a>
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

<a href="#header" class="goto-top scroll-link">
    <svg>
        <use xlink:href="image/images/sprite.svg#icon-arrow-up"></use>
    </svg>
</a>


<script>

    let amountElement = document.getElementById('amount');

    let amount = amountElement.value;
    let render = function (amount) {

        amountElement.value = amount;


    }

    let minus = function () {

        if (amount > 1)
            amount--
        render(amount);

    }

    let plus = function () {


        amount++
        render(amount);
    }

    amountElement.addEventListener('input', () => {

        amount = amountElement.value;

        amount = parseInt(amount);

        amount = (isNaN(amount) || amount == 0) ? 1 : amount;

        render(amount);

        console.log(amount);


    });


</script>

<!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->
<script src="./js/products.js"></script>
<%--<script src="./js/index.js"></script>--%>
<script src="./js/slider.js"></script>


</body>

</html>
