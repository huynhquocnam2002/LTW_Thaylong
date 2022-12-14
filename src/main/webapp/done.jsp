<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Order" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/9/2022
  Time: 12:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

    <link rel="shortcut icon" href="../phone_chuong/images/favicon.ico" type="image/x-icon" />

    <!-- Carousel -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css" />
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css" />

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />


    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="../css/cssDone.css" />

    <title>JC Phone Shop</title>
</head>
<%User user= UserDAO.getUserBySessionID((String) session.getAttribute("user"));
    Order order = (Order) request.getAttribute("order");
%>
<body>
<!-- Header -->
<!-- Header_top -->
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
                            <a href="index.jsp" class="nav__link scroll-link">Trang ch???</a>
                        </li>
                        <li class="nav__item">
                            <a href="index.jsp#product" class="nav__link scroll-link">S???n ph???m</a>
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
                    <a href="cart.jsp" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total">0</span>
                    </a>
                    <a href="cart.jsp" class="nav__link_giohang">Gi??? H??ng</a>
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
<div class="block-breadcrumbs">

    <div class="prefix">

        <ul>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633"><path id="home" d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z" transform="translate(-1.471 -3.053)" fill="#d70018"></path></svg>
            <li>Trang ch??? <li class ="item"></li></li>

            <li>Gi??? h??ng<li class ="item"></li></li>

            <li>Thanh to??n<li class ="item"></li></li>


            <li>Th??nh c??ng</li>
        </ul>
    </div>
</div>


<!-- Ph???n main c???a th??ng b??o th??nh c??ng -->

<main id="main">
    <section class="section cart__area">
        <div class="container">
            <div class="responsive__cart-area">



                <div class="cart__totals">
                    <h3 class="thanhtoan">Thanh To??n Th??nh C??ng!</h3>
                    <ul>
                        <li>
                            T??n Kh??ch h??ng
                            <span><%=request.getAttribute("name")%></span>
                        </li>
                        <li>
                            ?????a ch???
                            <span><%=request.getAttribute("address")%></span>
                        </li>
                        <li>
                            S??? ??i???n tho???i
                            <span><%=request.getAttribute("phone")%></span>
                        </li>
                        <li>
                            T???ng ti???n
                            <span class="new__price"><%=request.getAttribute("amount")%></span>
                        </li>
                        <li>
                            M?? s??? ????n h??ng
                            <span><%=request.getAttribute("idorder")%></span>
                        </li>
                    </ul>
                    <a href="/">Ti???p T???c Mua H??ng </a>

                </div>
            </div>
        </div>
    </section>

    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
        <div class="container">
            <div class="facility__contianer">
                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-airplane"></use>
                        </svg>
                    </div>
                    <p>MI???N PH?? V???N CHUY???N TO??N C???U</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-credit-card-alt"></use>
                        </svg>
                    </div>
                    <p>?????M B???O HO??N TI???N 100%</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
                        </svg>
                    </div>
                    <p>THANH TO??N B???NG TH???</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-headphones"></use>
                        </svg>
                    </div>
                    <p>H??? TR??? TR???C TUY???N 24/7</p>
                </div>
            </div>
        </div>
    </section>
</main>

<!-- Footer -->
<footer id="footer" class="section footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer-top__box">
                <h3>B??? SUNG</h3>
                <a href="/phone_nam/htmlfooter/nhanhieu.html">Nh??n hi???u</a>
                <a href="/phone_nam/htmlfooter/phieuquatang.html">Phi???u qu?? t???ng</a>
                <a href="/phone_nam/htmlfooter/chinhanh.html">Chi nh??nh</a>
                <a href="#">?????c bi???t</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TH??NG TIN</h3>
                <a href="/phone_nam/htmlfooter/vechungtoi.html">V??? ch??ng t??i</a>
                <a href="/phone_nam/htmlfooter/chinhsachbaomat.html">Ch??nh s??ch b???o m???t</a>
                <a href="/phone_nam/htmlfooter/dieukhoanvadieukien.html">C??c ??i???u kho???n v?? ??i???u ki???n</a>
                <a href="/phone_nam/htmlfooter/lienhechungtoi.html">Li??n h??? ch??ng t??i</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>T??I KHO???N C???A T??I</h3>
                <a href="/html/user.html">T??i kho???n c???a t??i</a>
                <a href="/html/user.html">L???ch s??? ????n h??ng</a>
                <a href="/html/cart.html">Danh s??ch mong mu???n</a>
                <a href="#">Cung c???p th??ng tin</a>
                <a href="/phone_nam/homelogin.html">Quay l???i</a>
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
                        T??a B5, KTX_B ??HQG TPHCM, Linh Trung, Th??? ?????c, TPHCM</a>
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

<!-- Go To -->

<a href="#header" class="goto-top scroll-link">
    <svg>
        <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
</a>

<!-- Glide Carousel Script -->
<script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>

<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->
<script src="../js/products.js"></script>
<script src="../js/index.js"></script>
<script src="../js/slider.js"></script>
</body>

</html>