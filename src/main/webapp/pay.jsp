<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProductDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.VoucherDAO" %><%--
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
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <link rel="shortcut icon" href="../phone_chuong/images/favicon.ico" type="image/x-icon"/>

    <!-- Carousel -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css"/>
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css"/>

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>


    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="../css/cssPay.css">

    <script src="../js/pay.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>


</head>
<body>


<%
    if (session.getAttribute("user") == null) {


        response.sendRedirect("login.jsp");

    } else {

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }


        TreeMap<String, Integer> list = cart.getList();

        NumberFormat nf = NumberFormat.getInstance();

        nf.setMinimumIntegerDigits(0);


%>


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
                                <a style="position: relative;top:-4px;" href="#hotro" class="nav__link scroll-link"><img
                                        style="width: 25px; height: 25px; position: relative;top:15px;"
                                        src="../phone_chuong/img/telephone.png" alt=""> HOTLINE HỖ TRỢ</a> <br>
                                <a href="#hotro" class="nav__link scroll-link">0797.74.76.76</a>
                            </div>
                        </li>

                    </ul>
                </div>


                <% User user = UserDAO.getUserBySessionID(session.getAttribute("user") + "");%>

                <div class="nav__icons">
                    <a href="/UserServlet" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
                        <img src="<%=user.getImg()%>"
                             style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
                    </a>

                    <div class="nav__item_user" style="font-size: 1.2rem" id="nav__item_user1">
                        <a href="/UserServlet" class="nav__link scroll-link"
                           style="line-height: 2"><%=user.getName()%>
                        </a><br>
                        <a href="" class="nav__link scroll-link">Thành Viên</a>
                    </div>
                </div>

                <%int numOfCartItems = ((Cart) session.getAttribute("cart")).getSize();%>

                <div class="nav__icons" id="nav__item_giohang">
                    <a href="cart.jsp" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="image/images/sprite.svg#icon-shopping-basket"></use>
                        </svg>

                        <span id="cart__total"><%=numOfCartItems%></span>
                    </a>
                    <a href="cart.jsp" class="nav__link_giohang">Giỏ Hàng</a>
                </div>

            </nav>
        </div>
    </div>

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

                <li>Giỏ hàng
                <li class="item"></li>
                </li>

                <li>Thanh toán</li>
            </ul>
        </div>
    </div>


    <main id="main" style="height: 900px ;">
        <section class="section cart__area">
            <div class="container" style="height: 800px;">
                <div class="responsive__cart-area">
                    <form class="cart__form" action="/PayServlet" method="post">
                        <section class="cart__table table-responsive">


                            <h1 style="margin-top: 20px ; margin-left: 15px;">Thanh toán giỏ hàng</h1>

                            <p style="margin-top: 5px ; margin-left: 15px;">Vui lòng nhập các thông tin dưới đây để hoàn
                                tất thanh toán.</p>

                            <div class="section__cart__pay">

                                <div class="section__cart__pay__step1">

                                    <div class="header__step1">
                                        1 &emsp; ĐỊA CHỈ NHẬN HÀNG
                                    </div>

                                    <div class="form">
                                        <input type="hidden" name="iduser" value="<%=user.getId()%>">
                                        <label for="dress__lastname">Tên</label>
                                        <input type="text" name="name" value="<%=user.getName()%>" class="dress__input"
                                               id="dress__lastname" required>
                                        <label for="dress__phone">Số điện thoại</label>
                                        <input type="tel" name="phone" value="<%=user.getPhone()%>" class="dress__input"
                                               id="dress__phone" required/>
                                        <label for="dress__homedress">Địa chỉ nhà</label>
                                        <input type="text" name="address" class="dress__input" id="dress__homedress"
                                               required>
                                        <label for="note">Ghi chú:</label>
                                        <input type="text" name="note" class="dress__input" id="note"
                                               required>

                                    </div>
                                </div>


                                <div class="section__cart__pay__container">
                                    <div class="section__cart__pay__step3">

                                        <div class="header__step3">

                                            2 &emsp; PHƯƠNG THỨC THANH TOÁN
                                        </div>

                                        <table>

                                            <tr>
                                                <td><input type="radio" checked></td>
                                                <td>Thanh toán khi nhận hàng</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="section__cart__pay__step4">

                                    <div class="header__step2">

                                        3 &emsp; THÔNG TIN THANH TOÁN
                                    </div>

                                    <table>

                                        <tr>
                                            <th style="text-align:start;">TÊN SẢN PHẨM&emsp; &emsp; &emsp;</th>
                                            <th style="vertical-align:top;">SỐ LƯỢNG &emsp; &emsp;</th>
                                            <th style="vertical-align:top;">TỔNG TIỀN</th>


                                        </tr>
                                        <input type="hidden" name="numProduct" value="<%=list.size()%>">

                                        <% Product pr;
                                            long total = 0;
                                            int count=0;
                                            for (Map.Entry<String, Integer> ds : list.entrySet()) {
                                                pr = ProductDAO.getProductById(ds.getKey());
                                                total += pr.getPrice() * ds.getValue();
                                        %>
                                        <tr>
                                            <td style="display: flex; align-items: center; width:150px;"><img
                                                    style="width:58.36px;height: 75px;vertical-align: middle;"
                                                    src="<%= pr.getImg()%>"
                                                    alt="">
                                                <span><%= pr.getName()%></span></td>
                                            <input type="hidden" name="idProduct<%=count%>" value="<%=pr.getId()%>">
                                            <input type="hidden" name="quantity<%=count%>" value="<%=ds.getValue()%>">
                                            <td><input type="number" value="<%=ds.getValue()%>"
                                                       style="width: 23.98px; height:20px; padding-left: 15px;"
                                                       disabled></td>
                                            <td><%= pr.getPrice() * ds.getValue()%> <u>đ</u></td>
                                            <input type="hidden" name="amount<%=count%>" value="<%= pr.getPrice() * ds.getValue()%>">
                                        </tr>
                                        <%count++;
                                            }%>
                                        <input type="hidden" name="amount" value="<%=total%>">
                                    </table>
                                    <div id="hr3"></div>


                                    <table>
                                        <tr>
                                            <th style="vertical-align: middle; height: 20px">Tạm tính
                                            <td style="text-align:center; height: 20px">
                                                <%=total%> <u>đ</u>
                                            </td>
                                            </th>

                                        </tr>

                                        <tr>
                                            <th style="text-align:start; height: 20px">Vận chuyển:
                                            <td style="text-align:center; height: 20px">
                                                30,000 <u>đ</u>
                                            </td>
                                            </th>

                                        </tr>

                                        <tr style="background-color:#f2f2f2;">
                                            <th style="height: 20px">THÀNH TIỀN
                                            <td style="height: 20px; text-align: center">
                                                <span id="section__cart__pay__step4__price">
                                                    <%= nf.format(total + 30000)%> <u>đ</u></span>
                                            </td>
                                            </th>
                                        </tr>
                                    </table>
                                    <div class="before__pay" style="position: unset">
                                        <div class="section__cart__pay__step4__voucher">
                                            <%
                                                Map<String, Long> vouchers = VoucherDAO.getVoucherPay(user.getId(), total);%>
                                            <select name="discountt" id=""
                                                    style="height: 35px;border: 1px solid #f2f2f2;border-radius: 5px;">
                                                <option value="0" class="0" selected><span></span>---Voucher---</option>
                                                <%for (Map.Entry<String, Long> e : vouchers.entrySet()) {%>
                                                <option value="<%=e.getValue()%>" class="<%=e.getKey()%>"><span><%=e.getKey()%></span>(Giảm <%=e.getValue()%>
                                                    )
                                                </option>
                                                <%}%>
                                            </select>
                                            <input type="hidden" name="discount" value="0">
                                            <button class="button__apply">Áp dụng</button>


                                        </div>


                                        <button class="button__order" style="background-color: #BE1E2D;">Đặt hàng
                                        </button>
                                    </div>

                                </div>
                            </div>


                        </section>

                    </form>
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
                    <a href="nhanhieu">Nhãn hiệu</a>
                    <a href="phieuquatang">Phiếu quà tặng</a>
                    <a href="chinhanh">Chi nhánh</a>
                    <a href="#">Đặc biệt</a>
                    <a href="sodoweb">Sơ đồ trang Web</a>
                </div>
                <div class="footer-top__box">
                    <h3>THÔNG TIN</h3>
                    <a href="vechungtoi">Về chúng tôi</a>
                    <a href="chinhsachbaomat">Chính sách bảo mật</a>
                    <a href="dieukhoanvadieukien">Các điều khoản và điều kiện</a>
                    <a href="lienhechungtoi">Liên hệ chúng tôi</a>
                    <a href="sodoweb">Sơ đồ trang Web</a>
                </div>
                <div class="footer-top__box">
                    <h3>TÀI KHOẢN CỦA TÔI</h3>
                    <a href="UserServlet">Tài khoản của tôi</a>
                    <a href="UserServlet">Lịch sử đơn hàng</a>
                    <a href="/">Danh sách mong muốn</a>
                    <a href="/">Cung cấp thông tin</a>
                    <a href="/">Quay lại</a>
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

    <script>
        let total_label = document.querySelector("#section__cart__pay__step4__price")
        let total_input = document.querySelector("#main > section > div > div > form > section > div > div.section__cart__pay__step4 > table:nth-child(2) > tbody > input[type=hidden]:nth-child(4)")
        const total = parseFloat(total_input.value) + 30000
        let voucher = document.querySelector("#main > section > div > div > form > section > div > div.section__cart__pay__step4 > div.before__pay > div > select")
        let voucherid = document.querySelector("#main > section > div > div > form > section > div > div.section__cart__pay__step4 > div.before__pay > div > input[type=hidden]")
        voucher.onchange = function () {
            let amount = total - parseInt(voucher.value)
            total_label.innerHTML = amount
            total_input.value = amount
            let list = voucher.querySelectorAll('option')
            for (let i of list){
                if (i.selected) voucherid.value = i.className
            }
        }


    </script>


        <%
        }
         %>


</body>
</html>