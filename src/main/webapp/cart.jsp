<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProductDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../css/cssCart.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <title>JC Phone Shop</title>
</head>

<body>
        <%
            Cart cart =(Cart) session.getAttribute("cart");
            if(cart == null) cart = new Cart();
            TreeMap<String , Integer> list =cart.getList();
        %>
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
                                    <a href="/" class="nav__link scroll-link">Trang ch???</a>
                                </li>
                                <li class="nav__item">
                                    <a href="#category" class="nav__link scroll-link">S???n ph???m</a>
                                </li>
                                <li >
                                    <form action="DanhmucSeachServlet" method="post" class="nav__item_seach">
                                        <input class="input_seach" id="input_seach" type="text" name="input_seach" placeholder="seach...">

                                        <div class="nav__icons">
                                            <button  class="icon__item" id="icon__item_seach" type="submit" name="btnseach" value="Go">
                                                <svg class="icon__search">
                                                    <use xlink:href="image/images/sprite.svg#icon-search"></use>
                                                </svg>
                                            </button>
                                        </div>
                                    </form>
                                </li>
                                <li class="nav__item">

                                    <div class="nav__item_hotro">
                                        <a href="#hotro" class="nav__link scroll-link">HOTLINE H??? TR???</a> <br>
                                        <a href="#hotro" class="nav__link scroll-link">0999.999.999</a>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <%if (session.getAttribute("user") == null) {%>
                        <div class="nav__icons">
                            <a href="/LoginServlet" class="icon__item">
                                <svg class="icon__user">
                                    <use xlink:href="image/images/sprite.svg#icon-user"></use>
                                </svg>
                            </a>

                            <div class="nav__item_user" id="nav__item_user">
                                <a href="/LoginServlet" class="nav__link scroll-link">????ng Nh???p /</a>
                                <a href="RegisterServlet" class="nav__link scroll-link">????ng K??</a><br>
                                <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
                            </div>
                        </div>
                        <%
                        } else {
                            User user = UserDAO.getUserBySessionID(session.getAttribute("user")+"");
                        %>
                        <div class="nav__icons">
                            <a href="UserServlet" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
                                <img src="<%=user.getImg()%>"
                                     style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
                            </a>

                            <div class="nav__item_user" style="font-size: 1.2rem" id="nav__item_user1">
                                <a href="UserServlet" class="nav__link scroll-link"
                                   style="line-height: 2"><%=user.getName()%>
                                </a><br>
                                <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
                            </div>
                        </div>
                        <%}%>

                        <%
                            if (session.getAttribute("user") != null) {
                                User u = UserDAO.getUserBySessionID(session.getAttribute("user")+"");
                                int numOfCartItems= ((Cart) session.getAttribute("cart")).getSize();
                        %>
                        <div class="nav__icons" id="nav__item_giohang">
                            <a href="giohang" class="icon__item">
                                <svg class="icon__cart">
                                    <use xlink:href="image/images/sprite.svg#icon-shopping-basket"></use>
                                </svg>

                                <span id="cart__total"><%=numOfCartItems%></span>
                            </a>
                            <a href="giohang" class="nav__link_giohang">Gi??? H??ng</a>
                        </div>
                        <%}%>
                    </nav>
                </div>
            </div>
        </header>

        <div class="block-breadcrumbs">

            <div class="prefix">
              
              <ul>
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633"><path id="home" d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z" transform="translate(-1.471 -3.053)" fill="#d70018"></path></svg>
                <li>Trang ch??? <li class ="item"></li></li>
               
                <li>Gi??? h??ng</li>
              </ul>
            </div>
          </div>


          <!-- Ph???n main c???a gi??? h??ng -->

    <main id="main">
        <section class="section cart__area">
            <div class="container">
                <div class="responsive__cart-area">
                    <form class="cart__form">
                        <div class="cart__table table-responsive">
                            <table width="100%" class="table">
                                <thead>
                                    <tr>
                                        <th>S???n ph???m</th>
                                        <th>T??n</th>
                                        <th>????n gi??</th>
                                        <th>S??? l?????ng</th>
                                        <th>T???ng ti???n</th>

                                    </tr>
                                </thead>
                                <tbody>
                                <% Product pr;
                                    double sum =0;
                                    for ( Map.Entry<String, Integer> ds : list.entrySet()){
                                            pr = ProductDAO.getProductById(ds.getKey());
                                %>
                                    <tr>
                                        <td class="product__thumbnail">
                                            <a href="#">
                                                <img src="<%=pr.getImg()%>" alt="">
                                            </a>
                                        </td>
                                        <td class="product__name">
                                            <a href="#"><%=pr.getName()%></a>
                                            <br><br>
                                            <small><%=pr.getTag()%></small>
                                        </td>
                                        <td class="product__price">
                                            <div class="price">
                                                <span class="new__price"><%=pr.getPrice()%> VN??</span>
                                            </div>
                                        </td>
                                        <td class="product__quantity">
                                            <div class="input-counter">
                                                <div>

                                                    <a class="minus-btn" href="CartServlet?command=minus&idProduct=<%=pr.getId()%>&cartID=<%=Long.parseLong((String) session.getAttribute("cartID"))%>">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </a>
                                                    <input  type="text" min="1" value="<%=list.get(ds.getKey())%>" max="100" class="counter-btn" >
                                                    <a class="plus-btn" href="CartServlet?command=plus&idProduct=<%=pr.getId()%>&cartID=<%=Long.parseLong((String) session.getAttribute("cartID"))%>">
                                                        <svg>
                                                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </a>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="product__subtotal">
                                            <div class="price">
                                                <span class="new__price"><%=list.get(ds.getKey())*pr.getPrice()%> VN??</span>
                                            </div>
                                            <a href="CartServlet?command=delete&idProduct=<%=pr.getId()%>&cartID=<%=Long.parseLong((String) session.getAttribute("cartID"))%>" class="remove__cart-item">
                                                <svg>
                                                    <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                                </svg>
                                            </a>
                                        </td>
                                    </tr>

                                <%sum+=list.get(ds.getKey())*pr.getPrice();%>
                                <%}%>
                                </tbody>
                            </table>
                        </div>

                        <div class="cart-btns">
                            <div class="continue__shopping">
                                <a href="/">Ti???p t???c mua s???m</a>
                            </div>
                            <div class="check__shipping">

                            </div>
                        </div>

                        <div class="cart__totals">
                            <h3>T???ng s???n ph???m</h3>
                            <ul>
                                <li>
                                    T???ng ti???n
                                    <span class="new__price"><%=sum%> VN??</span>
                                </li>
                                <li>
                                    V???n chuy???n
                                    <span class="shipPrice">$0</span>
                                </li>
                                <li>
                                    T???ng ti???n
                                    <span class="new__price untilPrice"><%=sum%> VN??</span>
                                </li>
                            </ul>
                            <a href="PayServlet">Ti???n h??nh thanh to??n</a>
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
                        <a href="nhanhieu">Nh??n hi???u</a>
                        <a href="phieuquatang">Phi???u qu?? t???ng</a>
                        <a href="chinhanh">Chi nh??nh</a>
                        <a href="#">?????c bi???t</a>
                        <a href="sodoweb">S?? ????? trang Web</a>
                    </div>
                    <div class="footer-top__box">
                        <h3>TH??NG TIN</h3>
                        <a href="vechungtoi">V??? ch??ng t??i</a>
                        <a href="chinhsachbaomat">Ch??nh s??ch b???o m???t</a>
                        <a href="dieukhoanvadieukien">C??c ??i???u kho???n v?? ??i???u ki???n</a>
                        <a href="lienhechungtoi">Li??n h??? ch??ng t??i</a>
                        <a href="sodoweb">S?? ????? trang Web</a>
                    </div>
                    <div class="footer-top__box">
                        <h3>T??I KHO???N C???A T??I</h3>
                        <a href="UserServlet">T??i kho???n c???a t??i</a>
                        <a href="UserServlet">L???ch s??? ????n h??ng</a>
                        <a href="/">Danh s??ch mong mu???n</a>
                        <a href="/">Cung c???p th??ng tin</a>
                        <a href="/">Quay l???i</a>
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
                                T??a B5, KTX_B ??HQG TPHCM, Linh Trung, Th??? ?????c, TPHCM</a>
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
   
    <script src="../js/index.js"></script>
    <script src="../js/slider.js"></script>

<%--    <script>--%>
<%--        function addCart(){--%>

<%--        }--%>
<%--       --%>
<%--        var products = document.querySelectorAll(".remove__cart-item")--%>
<%--        function deleteProduct(id) {--%>
<%--            if (products[id].parentElement.parentElement.className = "newww")--%>
<%--                products[id].parentElement.parentElement.style.display = "none"--%>
<%--        }--%>
<%--        function addProductID() {--%>
<%--            products = document.querySelectorAll(".remove__cart-item")--%>
<%--            let count = 0;--%>
<%--            for (let i of products) {--%>
<%--                i.id = "product" + count--%>
<%--                count++--%>
<%--            }--%>
<%--        }--%>
<%--        function addEventDelete() {--%>
<%--            addProductID()--%>
<%--            for (let i = 0; i < products.length; i++) {--%>
<%--                $('#' + products[i].id).click(function () {--%>
<%--                    deleteProduct(i)--%>
<%--                    updateValue()--%>
<%--                })--%>
<%--            }--%>
<%--        }--%>
<%--        addEventDelete()--%>

<%--        //----------------------------------------------------%>
<%--        var editMode = true--%>
<%--        let arr_minusBT = document.querySelectorAll('.minus-btn')--%>
<%--        let arr_plusBT = document.querySelectorAll('.plus-btn')--%>
<%--        let arr_quantity = document.querySelectorAll('.counter-btn')--%>
<%--        var total = document.querySelector('.cart__totals .new__price')--%>
<%--        var arr_price_container2 = document.querySelectorAll('.product__subtotal .price')--%>
<%--        var arr_unitPrice = []--%>
<%--        const checkShip = document.querySelector('.check__shipping input')--%>
<%--        const shipPrice = document.querySelector('.cart__totals .shipPrice')--%>
<%--        const untilPrice = document.querySelector('.cart__totals .untilPrice')--%>
<%--        function updateValue() {--%>
<%--            arr_minusBT = document.querySelectorAll('.minus-btn')--%>
<%--            arr_plusBT = document.querySelectorAll('.plus-btn')--%>
<%--            arr_quantity = document.querySelectorAll('.counter-btn')--%>
<%--            arr_price_container2 = document.querySelectorAll('.product__subtotal .price')--%>
<%--            unitPrice()--%>
<%--            minus()--%>
<%--            plus()--%>
<%--        }--%>
<%--        function minus() {--%>
<%--            for (let i = 0; i < arr_minusBT.length; i++) {--%>
<%--                arr_minusBT[i].onclick = function () {--%>
<%--                    if (editMode && parseInt(arr_quantity[i].value) > 0) {--%>
<%--                        arr_quantity[i].value = parseInt(arr_quantity[i].value) - 1--%>
<%--                        let value = intToString(arr_quantity[i].value * arr_unitPrice[i])--%>
<%--                        arr_price_container2[i].innerHTML = `<span class="new__price">` + value + `</span>`--%>
<%--                        updateTotalPrice()--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--        function plus() {--%>
<%--            for (let i = 0; i < arr_plusBT.length; i++) {--%>
<%--                arr_plusBT[i].onclick = function () {--%>
<%--                    if (editMode) {--%>
<%--                        if (!isNaN(arr_quantity[i].value))--%>
<%--                            arr_quantity[i].value = parseInt(arr_quantity[i].value) + 1--%>
<%--                        else arr_quantity[i].value = 1--%>
<%--                        let value = intToString(arr_quantity[i].value * arr_unitPrice[i])--%>
<%--                        arr_price_container2[i].innerHTML = `<span class="new__price">` + value + `</span>`--%>
<%--                        updateTotalPrice()--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--        plus()--%>
<%--        minus()--%>
<%--        //--------------------------------------------------------------%>

<%--        function stringToInt(str) {--%>
<%--            let temp = str.substring(0, str.length - 4)--%>
<%--            temp = temp.replaceAll(".", "")--%>
<%--            return parseInt(temp)--%>
<%--        }--%>
<%--        function intToString(int) {--%>
<%--            let temp = int.toString();--%>
<%--            let count = 0--%>
<%--            let res = ""--%>
<%--            for (let i = temp.length - 1; i >= 0; i--) {--%>
<%--                if (count % 3 == 0 && count != 0) res = "." + res--%>
<%--                res = temp[i] + res--%>
<%--                count++--%>
<%--            }--%>
<%--            return res + " VND"--%>
<%--        }--%>

<%--        unitPrice()--%>
<%--        price()--%>
<%--        function unitPrice() {--%>
<%--            for (let i = 0; i < arr_price_container2.length; i++) {--%>
<%--                arr_unitPrice[i] = stringToInt(arr_price_container2[i].innerText) / arr_quantity[i].value--%>
<%--            }--%>
<%--        }--%>
<%--        function price() {--%>
<%--            for (let i = 0; i < arr_price_container2.length; i++) {--%>
<%--                arr_quantity[i].onchange = function () {--%>
<%--                    arr_price_container2[i].value = intToString(arr_quantity[i].value * arr_unitPrice[i])--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--        //-=-----------------------------------------%>

<%--        function totalPrice() {--%>
<%--            let sum = 0--%>
<%--            for (let i of arr_price_container2) {--%>
<%--                sum += stringToInt(i.innerText.trim())--%>
<%--            }--%>
<%--            return sum--%>
<%--        }--%>
<%--        function updateTotalPrice() {--%>
<%--            total.innerText = intToString(totalPrice())--%>
<%--            untilPrice.innerText=total.innerText;--%>
<%--        }--%>
<%--        //------------------------------------------------%>
<%--        checkShip.onchange=function(){--%>
<%--            if (checkShip.checked) {--%>
<%--                shipPrice.innerText = "10.000 VND"--%>
<%--                untilPrice.innerText=intToString(stringToInt(total.innerText.trim())+10000)--%>
<%--            }--%>
<%--            else {--%>
<%--                shipPrice.innerText = "0 VND"--%>
<%--                untilPrice.innerText=intToString(stringToInt(total.innerText.trim()))--%>
<%--            }--%>
<%--        }--%>
<%--    </script>--%>
<%--        <scrip>--%>
<%--            function updatenumber(msp) {--%>
<%--            var number = document.getElementById("inputnumberchange");--%>
<%--            $.ajax({--%>

<%--            })--%>
<%--            }--%>
<%--        </scrip>--%>
</body>

</html>