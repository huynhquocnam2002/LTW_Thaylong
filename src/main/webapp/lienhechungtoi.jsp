<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Lienhechungtoi" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.FooterDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
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
            User user = UserDAO.getUserBySessionID((String)session.getAttribute("user"));
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
              <a href="" class="nav__link scroll-link">Thành Viên</a>
            </div>
          </div>
          <%}%>

          <%
            if (session.getAttribute("user") != null) {
              User u = UserDAO.getUserBySessionID((String)session.getAttribute("user"));
              int numOfCartItems= ((Cart) session.getAttribute("cart")).getSize();
          %>
          <div class="nav__icons" id="nav__item_giohang">
            <a href="giohang" class="icon__item">
              <svg class="icon__cart">
                <use xlink:href="image/images/sprite.svg#icon-shopping-basket"></use>
              </svg>

              <span id="cart__total"><%=numOfCartItems%></span>
            </a>
            <a href="giohang" class="nav__link_giohang">Giỏ Hàng</a>
          </div>
          <%}%>
        </nav>
      </div>
    </div>
  </header>




<!--Nhãn Hiệu-->

<section class="section elementor-section elementor-inner-section elementor-element elementor-element-21b1f779 elementor-reverse-mobile elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="21b1f779" data-element_type="section">
  <div class="elementor-container elementor-column-gap-wider">
    <div class="container">
      <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-31de1177" data-id="31de1177" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
      <div class="elementor-column-wrap elementor-element-populated">
        <div class="elementor-widget-wrap">
      <div class="elementor-element elementor-element-ccc645f elementor-widget elementor-widget-spacer" data-id="ccc645f" data-element_type="widget" data-widget_type="spacer.default">
    <div class="elementor-widget-container">
    <div class="elementor-spacer">
    <div class="elementor-spacer-inner"></div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-ed05320 elementor-button-align-stretch elementor-widget elementor-widget-form" data-id="ed05320" data-element_type="widget" data-settings="{&quot;step_next_label&quot;:&quot;Next&quot;,&quot;step_previous_label&quot;:&quot;Previous&quot;,&quot;button_width&quot;:&quot;100&quot;,&quot;step_type&quot;:&quot;number_text&quot;,&quot;step_icon_shape&quot;:&quot;circle&quot;}" data-widget_type="form.default">
    <div class="elementor-widget-container">
    <form class="elementor-form" method="post" name="New Form">
    <input type="hidden" name="post_id" value="3208">
    <input type="hidden" name="form_id" value="ed05320">
    <input type="hidden" name="referer_title" value="LIÊN HỆ - TopMax">

        <input type="hidden" name="queried_id" value="3208">

    <div class="elementor-form-fields-wrapper elementor-labels-above">
          <div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">
                  <label for="form-field-name" class="elementor-field-label">
          Họ &amp; Tên							</label>
                      <input size="1" type="text" name="form_fields[name]" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="Họ &amp; Tên" required="required" aria-required="true">
                </div>
          <div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100 elementor-field-required">
                  <label for="form-field-email" class="elementor-field-label">
          Email							</label>
                      <input size="1" type="email" name="form_fields[email]" id="form-field-email" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="Email" required="required" aria-required="true">
                </div>
          <div class="elementor-field-type-tel elementor-field-group elementor-column elementor-field-group-field_a05cd6c elementor-col-100 elementor-field-required">
                  <label for="form-field-field_a05cd6c" class="elementor-field-label">
          Số điện thoại							</label>
          <input size="1" type="tel" name="form_fields[field_a05cd6c]" id="form-field-field_a05cd6c" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="Số điện thoại" required="required" aria-required="true" pattern="[0-9()#&amp;+*-=.]+" title="Only numbers and phone characters (#, -, *, etc) are accepted.">

      </div>
          <div class="elementor-field-type-textarea elementor-field-group elementor-column elementor-field-group-message elementor-col-100">
                  <label for="form-field-message" class="elementor-field-label">
          Nội dung							</label>
      <textarea class="elementor-field-textual elementor-field  elementor-size-sm" name="form_fields[message]" id="form-field-message" rows="4" placeholder="Điền thông tin bạn cần hỗ trợ...." style="font-family:Archivo, sans-serif; font-size: 1.7rem;"></textarea>				</div>
          <div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
    <button type="submit" class="elementor-button elementor-size-sm" id="elementor-size-sm">
      <span>
                        <span class=" elementor-button-icon">
                                              </span>
                                      <span class="elementor-button-text">GỬI THÔNG TIN</span>
                    </span>
    </button>
    </div>
    </div>
    </form>
    </div>
    </div>
      </div>
        </div>
      </div>

      <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-8052c8b" data-id="8052c8b" data-element_type="column">
<div class="elementor-column-wrap">
    <div class="elementor-widget-wrap">
      </div>
</div>
      </div>

      <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-77b4877" data-id="77b4877" data-element_type="column">
<div class="elementor-column-wrap elementor-element-populated">
    <div class="elementor-widget-wrap">
  <div class="elementor-element elementor-element-cea2bbc elementor-widget elementor-widget-text-editor" data-id="cea2bbc" data-element_type="widget" data-widget_type="text-editor.default">
<div class="elementor-widget-container">
      <div class="elementor-text-editor elementor-clearfix" id="elementor-clearfix_title">
  <p>JCSHOP<br>Sẵn sàng lắng nghe!</p>		  	</div>
  </div>
</div>
<div class="elementor-element elementor-element-52a19ea7 elementor-widget elementor-widget-text-editor animated fadeInDown" data-id="52a19ea7" data-element_type="widget" data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;}" data-widget_type="text-editor.default">
<div class="elementor-widget-container">
      <div class="elementor-text-editor elementor-clearfix" id="content-text">
<p>Đừng ngại liên hệ với <strong>JCSHOP</strong> và chia sẻ những khó khăn của bạn trong quá trình khởi nghiệp kinh doanh online nhé!</p>					</div>
  </div>
</div>

      <%List<Lienhechungtoi> listlienhe = FooterDAO.getLienhechungtoi();%>
<div class="elementor-element elementor-element-4f3db0b6 elementor-mobile-align-left elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list animated fadeInDown" data-id="4f3db0b6" data-element_type="widget" data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;}" data-widget_type="icon-list.default">
<div class="elementor-widget-container">
<ul class="elementor-icon-list-items">
  <% for (int i = 0; i < listlienhe.size() ; i++) { %>


    <li class="elementor-icon-list-item">
            <span class="elementor-icon-list-icon">
          <img src="/phone_nam/icon/phone.png" alt="" id="elementor-icon-list-icon"></span>
          <span class="elementor-icon-list-text">Điện thoại: <%=listlienhe.get(i).getSdt()%></span>
        </li>
      <li class="elementor-icon-list-item">
            <span class="elementor-icon-list-icon">
              <img src="/phone_nam/icon/user.png" alt="" id="elementor-icon-list-icon">	</span>
          <span class="elementor-icon-list-text">Thời gian làm việc: <%=listlienhe.get(i).getNote()%></span>
        </li>
      <li class="elementor-icon-list-item">
            <span class="elementor-icon-list-icon">
              <img src="/phone_nam/icon/home.png" alt="" id="elementor-icon-list-icon">	</span>
          <span class="elementor-icon-list-text">Địa chỉ: <%=listlienhe.get(i).getAddress()%></span>
        </li>
  </ul>
</div>
</div>
<div class="elementor-element elementor-element-5c0aa2e elementor-widget__width-auto elementor-widget elementor-widget-button" data-id="5c0aa2e" data-element_type="widget" data-widget_type="button.default">
<div class="elementor-widget-container">
<div class="elementor-button-wrapper">
<a href="tel:0819.998.119" class="elementor-button-link elementor-button elementor-size-sm" role="button" id="elementor-button-text">
  <span  class="elementor-button-content-wrapper">
  <span class="elementor-button-text" >HOTLINE: <%=listlienhe.get(i).getSdt()%></span>
  </span>
</a>
  <%}%>
</div>
</div>
</div>
<div class="elementor-element elementor-element-2f5eaf29 elementor-widget-divider--view-line elementor-widget elementor-widget-divider" data-id="2f5eaf29" data-element_type="widget" data-widget_type="divider.default">
<div class="elementor-widget-container">
<div class="elementor-divider">
<span class="elementor-divider-separator">
  </span>
</div>
</div>
</div>
  </div>
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

  </main>

  <!-- End Main -->


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