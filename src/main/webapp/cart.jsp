<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/3/2022
  Time: 12:26 PM
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
    <link rel="stylesheet" href="/css/cssCart.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
                                <a  href="#hotro" class="nav__link scroll-link">0999.999.999</a>
                            </div>
                        </li>

                    </ul>
                </div>

                <div class="nav__icons">
                    <a href="/html/user.html" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="./images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>
                    <div class="nav__item_user" id="nav__item_user">
                        <a  href="#login" class="nav__link scroll-link">Hello Minh Thuận</a> <br>
                        <!-- <a  href="#register" class="nav__link scroll-link">Đăng Ký</a><br> -->
                        <a  href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="/html/cart.html" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                        </svg>
                        <span id="cart__total">4</span>
                    </a>
                    <a href="/html/cart.html" class="nav__link_giohang">Giỏ Hàng</a>
                </div>
            </nav>
        </div>
    </div>
</header>

<div class="block-breadcrumbs">

    <div class="prefix">

        <ul>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633"><path id="home" d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z" transform="translate(-1.471 -3.053)" fill="#d70018"></path></svg>
            <li>Trang chủ <li class ="item"></li></li>

            <li>Giỏ hàng</li>
        </ul>
    </div>
</div>


<!-- Phần main của giỏ hàng -->

<main id="main">
    <section class="section cart__area">
        <div class="container">
            <div class="responsive__cart-area">
                <form class="cart__form">
                    <div class="cart__table table-responsive">
                        <table width="100%" class="table">
                            <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Tên</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Tổng tiền</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="product__thumbnail">
                                    <a href="#">
                                        <img src="https://cdn.didongviet.vn/pub/media/catalog/product//s/a/sac-du-phong-mazer-infinite-boost-supermini-pocket-8.0-v2-8000mah-didongviet.jpg" alt="">
                                    </a>
                                </td>
                                <td class="product__name">
                                    <a href="#">Pin sạc dự phòng Mazer Infinite.Boost <br>SuperMINI Pocket 8.0 V2 8000mAh</a>
                                    <br><br>
                                    <small>Xanh</small>
                                </td>
                                <td class="product__price">
                                    <div class="price">
                                        <span class="new__price">550.000 VNĐ</span>
                                    </div>
                                </td>
                                <td class="product__quantity">
                                    <div class="input-counter">
                                        <div>
                                                    <span class="minus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </span>
                                            <input type="text" min="1" value="1" max="10" class="counter-btn">
                                            <span class="plus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </span>
                                        </div>
                                    </div>
                                </td>
                                <td class="product__subtotal">
                                    <div class="price">
                                        <span class="new__price">550.000 VNĐ</span>
                                    </div>
                                    <a href="#" class="remove__cart-item">
                                        <svg>
                                            <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                        </svg>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="product__thumbnail">
                                    <a href="#">
                                        <img src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-mophie-snap_-powerstation-stand-10000-mah-didongviet_1.jpg" alt="">
                                    </a>
                                </td>
                                <td class="product__name">
                                    <a href="#">Pin sạc dự phòng Mophie <br>Snap+ Powerstation Stand 10.000mAh</a>
                                    <br><br>
                                    <small>Đen</small>
                                </td>
                                <td class="product__price">
                                    <div class="price">
                                        <span class="new__price">1.320.000 VNĐ</span>
                                    </div>
                                </td>
                                <td class="product__quantity">
                                    <div class="input-counter">
                                        <div>
                                                    <span class="minus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </span>
                                            <input type="text" min="1" value="1" max="10" class="counter-btn">
                                            <span class="plus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </span>
                                        </div>
                                    </div>
                                </td>
                                <td class="product__subtotal">
                                    <div class="price">
                                        <span class="new__price">1.320.000  VNĐ</span>
                                    </div>
                                    <a href="#" class="remove__cart-item">
                                        <svg>
                                            <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                        </svg>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="product__thumbnail">
                                    <a href="#">
                                        <img src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-basix-slim-pd-n99-10000mah-didongviet.jpg" alt="">
                                    </a>
                                </td>
                                <td class="product__name">
                                    <a href="#">Pin sạc dự phòng Aukey<br> Basix Slim PB-N99 10.000mAh</a>
                                    <br><br>
                                    <small>Đen</small>
                                </td>
                                <td class="product__price">
                                    <div class="price">
                                        <span class="new__price">250.000  VNĐ</span>
                                    </div>
                                </td>
                                <td class="product__quantity">
                                    <div class="input-counter">
                                        <div>
                                                    <span class="minus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </span>
                                            <input type="text" min="1" value="1" max="10" class="counter-btn">
                                            <span class="plus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </span>
                                        </div>
                                    </div>
                                </td>
                                <td class="product__subtotal">
                                    <div class="price">
                                        <span class="new__price">250.000  VNĐ</span>
                                    </div>
                                    <a href="#" class="remove__cart-item">
                                        <svg>
                                            <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                        </svg>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="product__thumbnail">
                                    <a href="#">
                                        <img src="https://cdn.didongviet.vn/pub/media/catalog/product//p/i/pin-sac-du-phong-aukey-10000mah-pb-n83s-didongviet.jpg" alt="">
                                    </a>
                                </td>
                                <td class="product__name">
                                    <a href="#">Pin sạc dự phòng Aukey 10.000mAh PB-N83S</a>
                                    <br><br>
                                    <small>Trắng/6.25</small>
                                </td>
                                <td class="product__price">
                                    <div class="price">
                                        <span class="new__price">550.000 VNĐ</span>
                                    </div>
                                </td>
                                <td class="product__quantity">
                                    <div class="input-counter">
                                        <div>
                                                    <span class="minus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </span>
                                            <input type="text" min="1" value="1" max="10" class="counter-btn">
                                            <span class="plus-btn">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </span>
                                        </div>
                                    </div>
                                </td>
                                <td class="product__subtotal">
                                    <div class="price">
                                        <span class="new__price">550.000 VNĐ</span>
                                    </div>
                                    <a href="#" class="remove__cart-item">
                                        <svg>
                                            <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                        </svg>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cart-btns">
                        <div class="continue__shopping">
                            <a href="/phone_nam/homelogin.html">Tiếp tục mua sắm</a>
                        </div>
                        <div class="check__shipping">
                            <input type="checkbox">
                            <span>Vận chuyển(+10000 VNĐ)</span>
                        </div>
                    </div>

                    <div class="cart__totals">
                        <h3>Tổng sản phẩm</h3>
                        <ul>
                            <li>
                                Tổng tiền
                                <span class="new__price">23.430.768 VNĐ</span>
                            </li>
                            <li>
                                Vận chuyển
                                <span class="shipPrice">$0</span>
                            </li>
                            <li>
                                Tổng tiền
                                <span class="new__price untilPrice">23.430.768 VNĐ</span>
                            </li>
                        </ul>
                        <a href="/html/pay.html">Tiến hành thanh toán</a>
                    </div>
                </form>
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
                    <p>MIỄN PHÍ VẬN CHUYỂN TOÀN CẦU</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-credit-card-alt"></use>
                        </svg>
                    </div>
                    <p>ĐẢM BẢO HOÀN TIỀN 100%</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
                        </svg>
                    </div>
                    <p>THANH TOÁN BẰNG THẺ</p>
                </div>

                <div class="facility__box">
                    <div class="facility-img__container">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-headphones"></use>
                        </svg>
                    </div>
                    <p>HỖ TRỢ TRỰC TUYẾN 24/7</p>
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
                <a href="/html/cart.html">Danh sách mong muốn</a>
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
<script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>

<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->

<script src="../js/index.js"></script>
<script src="../js/slider.js"></script>

<script>


    var products = document.querySelectorAll(".remove__cart-item")
    function deleteProduct(id) {
        if (products[id].parentElement.parentElement.className = "newww")
            products[id].parentElement.parentElement.style.display = "none"
    }
    function addProductID() {
        products = document.querySelectorAll(".remove__cart-item")
        let count = 0;
        for (let i of products) {
            i.id = "product" + count
            count++
        }
    }
    function addEventDelete() {
        addProductID()
        for (let i = 0; i < products.length; i++) {
            $('#' + products[i].id).click(function () {
                deleteProduct(i)
                updateValue()
            })
        }
    }
    addEventDelete()

    //--------------------------------------------------
    var editMode = true
    let arr_minusBT = document.querySelectorAll('.minus-btn')
    let arr_plusBT = document.querySelectorAll('.plus-btn')
    let arr_quantity = document.querySelectorAll('.counter-btn')
    var total = document.querySelector('.cart__totals .new__price')
    var arr_price_container2 = document.querySelectorAll('.product__subtotal .price')
    var arr_unitPrice = []
    const checkShip = document.querySelector('.check__shipping input')
    const shipPrice = document.querySelector('.cart__totals .shipPrice')
    const untilPrice = document.querySelector('.cart__totals .untilPrice')
    function updateValue() {
        arr_minusBT = document.querySelectorAll('.minus-btn')
        arr_plusBT = document.querySelectorAll('.plus-btn')
        arr_quantity = document.querySelectorAll('.counter-btn')
        arr_price_container2 = document.querySelectorAll('.product__subtotal .price')
        unitPrice()
        minus()
        plus()
    }
    function minus() {
        for (let i = 0; i < arr_minusBT.length; i++) {
            arr_minusBT[i].onclick = function () {
                if (editMode && parseInt(arr_quantity[i].value) > 0) {
                    arr_quantity[i].value = parseInt(arr_quantity[i].value) - 1
                    let value = intToString(arr_quantity[i].value * arr_unitPrice[i])
                    arr_price_container2[i].innerHTML = `<span class="new__price">` + value + `</span>`
                    updateTotalPrice()
                }
            }
        }
    }
    function plus() {
        for (let i = 0; i < arr_plusBT.length; i++) {
            arr_plusBT[i].onclick = function () {
                if (editMode) {
                    if (!isNaN(arr_quantity[i].value))
                        arr_quantity[i].value = parseInt(arr_quantity[i].value) + 1
                    else arr_quantity[i].value = 1
                    let value = intToString(arr_quantity[i].value * arr_unitPrice[i])
                    arr_price_container2[i].innerHTML = `<span class="new__price">` + value + `</span>`
                    updateTotalPrice()
                }
            }
        }
    }
    plus()
    minus()
    //------------------------------------------------------------

    function stringToInt(str) {
        let temp = str.substring(0, str.length - 4)
        temp = temp.replaceAll(".", "")
        return parseInt(temp)
    }
    function intToString(int) {
        let temp = int.toString();
        let count = 0
        let res = ""
        for (let i = temp.length - 1; i >= 0; i--) {
            if (count % 3 == 0 && count != 0) res = "." + res
            res = temp[i] + res
            count++
        }
        return res + " VND"
    }

    unitPrice()
    price()
    function unitPrice() {
        for (let i = 0; i < arr_price_container2.length; i++) {
            arr_unitPrice[i] = stringToInt(arr_price_container2[i].innerText) / arr_quantity[i].value
        }
    }
    function price() {
        for (let i = 0; i < arr_price_container2.length; i++) {
            arr_quantity[i].onchange = function () {
                arr_price_container2[i].value = intToString(arr_quantity[i].value * arr_unitPrice[i])
            }
        }
    }
    //-=---------------------------------------

    function totalPrice() {
        let sum = 0
        for (let i of arr_price_container2) {
            sum += stringToInt(i.innerText.trim())
        }
        return sum
    }
    function updateTotalPrice() {
        total.innerText = intToString(totalPrice())
        untilPrice.innerText=total.innerText;
    }
    //----------------------------------------------
    checkShip.onchange=function(){
        if (checkShip.checked) {
            shipPrice.innerText = "10.000 VND"
            untilPrice.innerText=intToString(stringToInt(total.innerText.trim())+10000)
        }
        else {
            shipPrice.innerText = "0 VND"
            untilPrice.innerText=intToString(stringToInt(total.innerText.trim()))
        }
    }
</script>
</body>

</html>