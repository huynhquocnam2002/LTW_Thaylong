<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Dieukhoanvadieukien" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.FooterDAO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="cssheader_footer.css" />

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
              <li >
                <form action="DanhmucServlet" method="post" class="nav__item_seach">
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
                <use xlink:href="image/images/sprite.svg#icon-user"></use>
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
            <a href="user.jsp" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
              <img src="<%=user.getImg()%>"
                   style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
            </a>

            <div class="nav__item_user" style="font-size: 1.2rem" id="nav__item_user1">
              <a href="user.jsp" class="nav__link scroll-link"
                 style="line-height: 2"><%=user.getName()%>
              </a><br>
              <a href="" class="nav__link scroll-link">Thành Viên</a>
            </div>
          </div>
          <%}%>

          <%
            if (session.getAttribute("user") != null) {
              User u = (User) session.getAttribute("user");
              int numOfCartItems= ((Cart) session.getAttribute("cart")).getSize();
          %>
          <div class="nav__icons" id="nav__item_giohang">
            <a href="cart.jsp" class="icon__item">
              <svg class="icon__cart">
                <use xlink:href="image/images/sprite.svg#icon-shopping-basket"></use>
              </svg>

              <span id="cart__total"><%=numOfCartItems%></span>
            </a>
            <a href="cart.jsp" class="nav__link_giohang">Giỏ Hàng</a>
          </div>
          <%}%>
        </nav>
      </div>
    </div>
  </header>




<!--Nhãn Hiệu-->
  <% List<Dieukhoanvadieukien> listDieukhoan = FooterDAO.getDieukhoanvadieukien();%>
<section class="section baomat">
  <div class="container">
    <div class="content">
      <h1 class="content-title">CÁC ĐIỀU KHOẢN VÀ ĐIỀU KIỆN CỦA JCSHOP</h1>
      <h3>Trang web này thuộc quyền sở hữu và quản lý của JCSHOP. Khi truy cập, sử dụng trang web này, Quý vị đã mặc định đồng ý với các Điều khoản sử dụng nêu ra ở đây. Vì thế, đề nghị Quý vị đọc kỹ trước khi sử dụng tiếp.</h3>
      <%for (int i = 0; i < listDieukhoan.size() ; i++) { %>


      <div class="content-linetext">
        <p class="content-linetext_cap1"><%=listDieukhoan.get(i).getId()%> - <%=listDieukhoan.get(i).getName()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText1()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText2()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText3()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText4()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText5()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText6()%></p>
        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText7()%></p>
<%--        <p class="content-linetext_cap2"><%=listDieukhoan.get(i).getText8()%></p>--%>
      </div>

      <%}%>

      <p class="content-camon"> Xin Chân Thành Cảm Ơn !</p>

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

  </main>

  <!-- End Main -->

  <!-- Footer -->
  <footer id="footer" class="section footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>BỔ SUNG</h3>
          <a href="nhanhieu.jsp">Nhãn hiệu</a>
          <a href="phieuquatang.jsp">Phiếu quà tặng</a>
          <a href="chinhanh.jsp">Chi nhánh</a>
          <a href="#">Đặc biệt</a>
          <a href="sodoweb.jsp">Sơ đồ trang Web</a>
        </div>
        <div class="footer-top__box">
          <h3>THÔNG TIN</h3>
          <a href="vechungtoi.jsp">Về chúng tôi</a>
          <a href="chinhsachbaomat.jsp">Chính sách bảo mật</a>
          <a href="dieukhoanvadieukien.jsp">Các điều khoản và điều kiện</a>
          <a href="lienhechungtoi.jsp">Liên hệ chúng tôi</a>
          <a href="sodoweb.jsp">Sơ đồ trang Web</a>
        </div>
        <div class="footer-top__box">
          <h3>TÀI KHOẢN CỦA TÔI</h3>
          <a href="/css/login.css">Tài khoản của tôi</a>
          <a href="/css/login.css">Lịch sử đơn hàng</a>
          <a href="/css/login.css">Danh sách mong muốn</a>
          <a href="#">Cung cấp thông tin</a>
          <a href="index.jsp">Quay lại</a>
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

  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="./js/products.js"></script>
  <script src="./js/index.js"></script>
  <script src="./js/slider.js"></script>

</body>

</html>