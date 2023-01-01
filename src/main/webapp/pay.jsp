<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/4/2022
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

    <link rel="shortcut icon" href="../phone_chuong/images/favicon.ico" type="image/x-icon" />

    <!-- Carousel -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css" />
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css" />

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />


    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="../css/cssPay.css">

    <script src="../js/pay.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>


</head>
<body>
<!-- Header -->
<!-- Header_top -->
<header id="header" class="header">
    <div class="navigation">
        <div class="container1">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="./images/sprite.svg#icon-menu"></use>
                    </svg>

                </div>

                <div class="nav__logo">
                    <a href="/phone_nam/homelogin.html" class="scroll-link">
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
                            <a href="/phone_nam/homelogin.html" class="nav__link scroll-link">Trang chủ</a>
                        </li>
                        <li class="nav__item">
                            <a href="/phone_nam/homelogin.html" class="nav__link scroll-link">Sản phẩm</a>
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
                                <a style="position: relative;top:-4px;" href="#hotro" class="nav__link scroll-link"><img style="width: 25px; height: 25px; position: relative;top:15px;" src="../phone_chuong/img/telephone.png" alt=""> HOTLINE HỖ TRỢ</a> <br>
                                <a  href="#hotro" class="nav__link scroll-link">0797.74.76.76</a>
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
                        <a  href="#login" class="nav__link scroll-link">Đăng Nhập/</a>
                        <a  href="#register" class="nav__link scroll-link">Đăng Ký</a><br>
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
                    <a  href="#login" class="nav__link_giohang">Giỏ Hàng</a>
                </div>
            </nav>
        </div>
    </div>

    <div class="block-breadcrumbs">

        <div class="prefix">

            <ul>
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633"><path id="home" d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z" transform="translate(-1.471 -3.053)" fill="#d70018"></path></svg>
                <li>Trang chủ <li class ="item"></li></li>

                <li>Giỏ hàng<li class ="item"></li></li>

                <li>Thanh toán</li>
            </ul>
        </div>
    </div>


    <main id="main" style="height: 900px ;">
        <section class="section cart__area" >
            <div class="container" style="height: 800px;">
                <div class="responsive__cart-area">
                    <form class="cart__form">
                        <section class="cart__table table-responsive">


                            <h1 style="margin-top: 20px ; margin-left: 15px;">Thanh toán giỏ hàng</h1>

                            <p style="margin-top: 5px ; margin-left: 15px;">Vui lòng nhập các thông tin dưới đây để hoàn tất thanh toán.</p>

                            <div class="section__cart__pay">

                                <div class="section__cart__pay__step1">

                                    <div class="header__step1">

                                        1 &emsp;  ĐỊA CHỈ NHẬN HÀNG
                                    </div>

                                    <div class="form">

                                        <form action="">

                                            <label for="email">Email</label>
                                            <input type="email" class="dress__input" id="dress__email" oninput="checkEmail()">
                                            <p id = "result1"></p>
                                            <label for="firstname">Họ</label>
                                            <input type="text" class="dress__input"id="dress__firstname" oninput="checkFirstName()">
                                            <p id = "result2"></p>
                                            <label for="lastname">Tên</label>
                                            <input type="text" class="dress__input"id="dress__lastname" oninput="checkLastName()">
                                            <p id = "result3"></p>
                                            <label for="phone">Số điện thoại</label>
                                            <input type="tel" class="dress__input" id="dress__phone" oninput="checkNumber()" />
                                            <p id = "result4"></p>
                                            <label for="homedress">Địa chỉ nhà</label>
                                            <input type="text" class="dress__input"id="dress__homedress" oninput="checkHomeDress()">
                                            <p id = "result5"></p>
                                            <label for="national">Quốc Gia</label>
                                            <select name="national" class="dress__input"id="dress__national">

                                                <option value="VN">Việt Nam</option>

                                            </select>
                                            <label for="city">Tỉnh/Thành Phố</label>
                                            <select name="city" class="dress__input" id="dress__city">

                                                <option value="">An Giang</option>
                                                <option value="">Bà Rịa-Vũng Tàu</option>
                                                <option value="">Bắc Giang</option>
                                                <option value="">Bắc Kạn</option>
                                                <option value="">Bạc Liêu</option>
                                                <option value="">Bắc Ninh</option>
                                                <option value="">Bến Tre</option>
                                                <option value="">Bình Định</option>
                                                <option value="">Bình Dương</option>
                                                <option value="">Bình Phước</option>
                                                <option value="">Bình Thuận</option>
                                                <option value="">Cà Mau</option>
                                                <option value="">Cần Thơ</option>
                                                <option value="">Cao Bằng</option>
                                                <option value="">Đà Nẵng</option>
                                                <option value="">Đắk Lắk</option>
                                                <option value="">Đắk Nông</option>
                                                <option value="">Điên Biên</option>
                                                <option value="">Đồng Nai</option>
                                                <option value="">Đồng Tháp</option>
                                                <option value="">Gia Lai</option>
                                                <option value="">Hà Giang</option>
                                                <option value="">Hà Nam/option>
                                                <option value="">Hà Nội</option>
                                                <option value="">Hà Tĩnh</option>
                                                <option value="">Hải Dương</option>
                                                <option value="">Hải Phòng</option>
                                                <option value="">Hậu Giang</option>
                                                <option value="">TP.Hồ Chí Minh</option>
                                                <option value="">Hòa Bình</option>
                                                <option value="">Hưng Yên</option>
                                                <option value="">Khánh Hòa</option>
                                                <option value="">Kiên Giang</option>
                                                <option value="">Kon Tum</option>
                                                <option value="">Lai Châu</option>
                                                <option value="">Lâm Đồng</option>
                                                <option value="">Lạng Sơn</option>
                                                <option value="">Lào Cai</option>
                                                <option value="">Long An</option>
                                                <option value="">Nam Định</option>
                                                <option value="">Nghệ An</option>
                                                <option value="">Ninh Bình</option>
                                                <option value="">Ninh Thuận</option>
                                                <option value="">Phú Thọ</option>
                                                <option value="">Phú Yên</option>
                                                <option value="">Quảng Bình</option>
                                                <option value="">Quảng Nam</option>
                                                <option value="">Quảng Ngãi</option>
                                                <option value="">Quảng Ninh</option>
                                                <option value="">Quảng Trị</option>
                                                <option value="">Sóc Trăng</option>
                                                <option value="">Sơn La</option>
                                                <option value="">Tây Ninh</option>
                                                <option value="">Thái Bình</option>
                                                <option value="">Thái Nguyên</option>
                                                <option value="">Thanh Hóa</option>
                                                <option value="">Thừa Thiên-Huế</option>
                                                <option value="">Tiền Giang</option>
                                                <option value="">Trà Vinh</option>
                                                <option value="">Tuyên Quang</option>
                                                <option value="">Vĩnh Long</option>
                                                <option value="">Vĩnh Phúc</option>
                                                <option value="">Yên Bái</option>
                                            </select>

                                            <label for="direct">Quận/huyện</label>
                                            <input type="text" class="dress__input"id="dress__direct" oninput="checkDirect()">
                                            <p id = "result6"></p>
                                        </form>
                                    </div>
                                </div>


                                <div class="section__cart__pay__container">
                                    <div class="section__cart__pay__step2">


                                        <div class="header__step2">

                                            2 &emsp;  PHƯƠNG THỨC VẬN CHUYỂN
                                        </div>

                                        <table>

                                            <tr>
                                                <td> <input type="radio" style="vertical-align:middle;">&emsp;&emsp;</td>
                                                <td>0<u>đ</u>&emsp;&emsp;</td>
                                                <td>Nhận<br> hàng tại<br> cửa hàng&emsp;</td>
                                                <td>Nhận hàng tại cửa hàng</td>
                                            </tr>

                                            <div id="hr"></div>


                                            <tr>
                                                <td><input type="radio"></td>
                                                <td>0<u>đ</u></td>
                                                <td>Vận<br> chuyển <br>tiêu<br> chuẩn</td>
                                                <td>Miễn phí với đơn hàng phụ kiện trên 500.000đ</td>
                                            </tr>


                                        </table>

                                    </div>
                                    <div class="section__cart__pay__step3">

                                        <div class="header__step3">

                                            3  &emsp; PHƯƠNG THỨC THANH TOÁN
                                        </div>

                                        <table>

                                            <tr>
                                                <td><input type="radio"> &ensp;</td>
                                                <td>Thanh toán khi nhận hàng</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="section__cart__pay__step4">

                                    <div class="header__step2">

                                        4  &emsp; THÔNG TIN THANH TOÁN
                                    </div>

                                    <table>

                                        <tr>
                                            <th style="text-align:start;">TÊN SẢN PHẨM&emsp; &emsp; &emsp;</th>
                                            <th style="vertical-align:top;">SỐ LƯỢNG &emsp; &emsp; </th>
                                            <th style="vertical-align:top;">TỔNG TIỀN </th>





                                        </tr>

                                        <div id="hr2"></div>



                                        <tr>
                                            <td style="display: flex; align-items: center; width:150px;"><img style="width:58.36px;height: 75px;vertical-align: middle;" src="
                                          https://cdn2.cellphones.com.vn/358x/media/catalog/product/p/i/pin-sac-du-phong-anker-powercore-iii-sense-slim-a1244-10000mah-1.png" alt="">
                                                <span >Pin sạc dự phòng Anker PowerSlim 10000mAh PD A1244</span></td>
                                            <td><input type="number" value ="1" style="width: 23.98px; height:20px; padding-left: 15px;" disabled></td>
                                            <td>900.000 <u>đ</u></td>
                                        </tr>

                                    </table>
                                    <div id="hr3"></div>



                                    <table>
                                        <tr>
                                            <th style="vertical-align: middle;">Tạm tính
                                            <td style="text-align:center;">
                                                900.000 <u>đ</u>
                                            </td>
                                            </th>

                                        </tr>

                                        <tr>
                                            <th style="text-align:start;">Vận chuyển Nhận hàng tại cửa hàng - Nhận hàng tại cửa hàng
                                            <td style="text-align:center;">
                                                0 <u>đ</u>
                                            </td>
                                            </th>

                                        </tr>

                                        <tr style="background-color:#f2f2f2;">
                                            <th  style="position: relative; top:20px;left:10px;">THÀNH TIỀN
                                            <td style="text-align:start;position: relative;right:2px;">
                                                <span id="section__cart__pay__step4__price"> 900.000 <u>đ</u></span>
                                            </td>
                                            </th>

                                        </tr>



                                    </table>


                                </div>





                            </div>

                            <div class="before__pay">
                                <div class="section__cart__pay__step4__voucher">
                                    <input type="text" class="input__voucher"placeholder="Vui lòng nhập mã giảm giá">

                                    <button class="button__apply">Áp dụng</button>



                                </div>


                                <button class="button__order" style="background-color: #BE1E2D;">Đặt hàng</button>

                            </div>

                </div>
            </div>
            </form>
        </section>
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


    <script>



        const email = document.getElementById('dress__email').value;


        const firstName = document.getElementById('dress__firstname').value;



        const lastName = document.getElementById('dress__lastname').value;


        const phone = document.getElementById('dress__phone').value;


        const homedress = document.getElementById('dress__homedress').value;

        const direct = document.getElementById('dress__direct').value;


        const result1 = document.getElementById('result1');

        const result2 = document.getElementById('result2');

        const result3 = document.getElementById('result3');

        const result4 = document.getElementById('result4');

        const result5 = document.getElementById('result5');
        const result6 = document.getElementById('result6');




        const checkEmail = function(){

            var x = document.getElementById('dress__email').value;
            if( x.length == "" ){
                document.getElementById('dress__email').style.border ="1px solid red";

                result1.innerHTML = "Bạn cần nhập vào trường này";




            }


        }

        const checkFirstName = function(){

            var x = document.getElementById('dress__firstname').value;
            if( x.length == "" ){
                document.getElementById('dress__firstname').style.border ="1px solid red";

                result2.innerHTML = "Bạn cần nhập vào trường này";




            }
        }
        const checkLastName = function(){

            var x = document.getElementById('dress__lastname').value;
            if( x.length == "" ){
                document.getElementById('dress__lastname').style.border ="1px solid red";

                result3.innerHTML = "Bạn cần nhập vào trường này";




            }
        }

        const checkNumber = function(){
            var x = document.getElementById('dress__phone').value;
            if( x.length == "" ){
                document.getElementById('dress__phone').style.border ="1px solid red";

                result4.innerHTML = "Bạn cần nhập vào trường này";




            } else {

            }

        }
        const checkHomeDress = function(){

            var x = document.getElementById('dress__homedress').value;
            if( x.length == "" ){
                document.getElementById('dress__homedress').style.border ="1px solid red";

                result5.innerHTML = "Bạn cần nhập vào trường này";




            }
        }

        const checkDirect = function(){

            var x = document.getElementById('dress__direct').value;
            if( x.length == "" ){
                document.getElementById('dress__direct').style.border ="1px solid red";

                result6.innerHTML = "Bạn cần nhập vào trường này";




            }
        }




        var btnOrder = document.getElementsByClassName('button__order');



        button__order.addEventListener('click',function(){

                const checkNumber = function(){
                    var x = document.getElementById('dress__phone').value;
                    if( x.length() == "" ){
                        document.getElementById('dress__phone').style.border ="1px solid red";

                        result4.innerHTML = "Bạn cần nhập vào trường này";



                    }

                }




            }
        );


    </script>


</body>
</html>