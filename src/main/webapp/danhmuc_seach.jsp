<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

  <link rel="shortcut icon" href="image/images/favicon.ico" type="image/x-icon"/>


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="/css/style.css"/>

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
                  <input class="input_seach"  id="input_seach" type="text" placeholder="seach...">
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
                    <a  href="#hotro" class="nav__link scroll-link">HOTLINE HỖ TRỢ</a> <br>
                    <a  href="#hotro" class="nav__link scroll-link">0999.999.999</a>
                  </div>
                </li>
  
              </ul>
            </div>
  
            <div class="nav__icons">
              <a href="/html/login.html" class="icon__item">
                <svg class="icon__user">
                  <use xlink:href="phone_nam/images/sprite.svg#icon-user"></use>
                </svg>
              </a>
              <div class="nav__item_user" id="nav__item_user">
                <a  href="#login" class="nav__link scroll-link">Đăng Nhập /</a> 
                <a  href="#register" class="nav__link scroll-link">Đăng Ký</a><br>
                <a  href="" class="nav__link scroll-link">Thành Viên</a>
              </div>
              </div>
  
              <div class="nav__icons" id="nav__item_giohang">
              <a href="/html/login.html" class="icon__item">
                <svg class="icon__cart">
                  <use xlink:href="phone_nam/images/sprite.svg#icon-shopping-basket"></use>
                </svg>
                <span id="cart__total">0</span>
              </a>
              <a href="/html/login.html" class="nav__link_giohang">Giỏ Hàng</a>
            </div>
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
              <use xlink:href="image/images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

            <ul class="nav__list" id="nav__list_DANHMUC">


              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                    <img class="icon__itemdanhmuc" src="../image/icon/oplung.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">ỐP LƯNG</a>
              </li>
              </div>


              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/sacduphong.jpg"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">SẠC DỰ PHÒNG</a>
              </li>
            </div>


              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/tainghe.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">TAI NGHE</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/capsac.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">CỤC SẠC</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/kinhcuongluc.jpg"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">KÍNH CƯỜNG LỰC</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/apple1.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">PHỤ KIỆN APPLE</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/gaydienthoai.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">GIÁ ĐỠ ĐIỆN THOẠI</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/bag1.png"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">TÚI CHỐNG NƯỚC</a>
              </li>
            </div>

              <div class="nav__icons_danhmuc">
                <a href="/html/indexseach.html" class="icon__item">
                  <img class="icon__itemdanhmuc" src="../image/icon/khac.jpg"></img>
                </a>
              <li class="nav__item">
                <a href="/html/indexseach.html" class="scroll-linkDANHMUC">PHỤ KIỆN KHÁC</a>
              </li>
            </div>
             

            </ul>



        </nav>
      </div>
    </div>
          </div>


        </nav>
      </div>
    </div>
  </header>
  <!-- End Header -->

  <!-- Main -->
  <main id="main">
    <div class="container">
      <% Set<Product> ProductsByCatory = DataDB.getProductsByCatory(request.getParameter("idcategory"));%>
       <% List<String> list = DataDB.getnameCatory(request.getParameter("idcategory"));%>
      <!-- label thong bao -->
      <div class="label_seach">
        <p class="label_seach_p">Tìm kiếm sản phẩm với từ khóa: "<%=list.get(0)+""%>"</p>
      </div>
      <!-- Latest Products -->

      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" id="All" name="All" onclick="checkKind('all')">
                <span class="dot"></span>
                <h1 class="primary__title">Tất cả</h1>
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" id="hot" name="hot" onclick="checkKind('hot')">
                <span class="dot"></span>
                <h1 class="primary__title">Xu hướng</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" id="new" name="new" onclick="checkKind('new')">
                <span class="dot"></span>
                <h1 class="primary__title">Mới Nhất</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" id="salerun" name="salerun" onclick="checkKind('salerun')">
                <span class="dot"></span>
                <h1 class="primary__title">Bán chạy</h1>
              </div>
            </div>

          </div>
        </div>




        <div class="category__container" id="category__container__all" style="display: block" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
            <%for(Product pr: ProductsByCatory){%>
            <div class="product category__products">
              <div class="product__header">
                <img src="<%=pr.getImg()%>" alt="product">
              </div>
              <div class="product__footer">
                <h3><%=pr.getName()%></h3>
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
                <div class="product__price" style="color: red">

                  <h4><%=pr.getPrice()+" VND"%></h4>
                </div>
                <a href="#" style="opacity: 0;"><button type="submit" class="product__btn">THÊM VÀO GIỎ HÀNG</button></a>
              </div>
              <ul>
                <li>
                  <a data-tip="Quick View" data-place="left"
                     href="/phone_chuong/product.html">
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
            <%}%>
          </div>
        </div>

        <% Set<Product> rshot = DataDB.getProductsKind("hot");%>
        <div class="category__container" id="category__container__hot" style="display: none;" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
            <%for(Product pr: rshot){%>
            <div class="product category__products">
              <div class="product__header">
                <img src="<%=pr.getImg()%>" alt="product">
              </div>
              <div class="product__footer">
                <h3><%=pr.getName()%></h3>
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
                <div class="product__price" style="color: red">

                  <h4><%=pr.getPrice()+" VND"%></h4>
                </div>
                <a href="#" style="opacity: 0;"><button type="submit" class="product__btn">THÊM VÀO GIỎ HÀNG</button></a>
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
            <%}%>
          </div>
        </div>

        <% Set<Product> rsnew = DataDB.getProductsKind("new");%>
        <div class="category__container" id="category__container__new" style="display: none;" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
            <%for(Product pr: rsnew){%>
            <div class="product category__products">
              <div class="product__header">
                <img src="<%=pr.getImg()%>" alt="product">
              </div>
              <div class="product__footer">
                <h3><%=pr.getName()%></h3>
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
                <div class="product__price" style="color: red">

                  <h4><%=pr.getPrice()+" VND"%></h4>
                </div>
                <a href="#" style="opacity: 0;"><button type="submit" class="product__btn">THÊM VÀO GIỎ HÀNG</button></a>
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
            <%}%>
          </div>
        </div>

        <% Set<Product> rssalerun = DataDB.getProductsKind("salerun");%>
        <div class="category__container" id="category__container__salerun" style="display: none;" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
            <%for(Product pr: rssalerun){%>
            <div class="product category__products">
              <div class="product__header">
                <img src="<%=pr.getImg()%>" alt="product">
              </div>
              <div class="product__footer">
                <h3><%=pr.getName()%></h3>
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
                <div class="product__price" style="color: red">

                  <h4><%=pr.getPrice()+" VND"%></h4>
                </div>
                <a href="#" style="opacity: 0;"><button type="submit" class="product__btn">THÊM VÀO GIỎ HÀNG</button></a>
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
    </div>

    <!-- Testimonial Section -->
    <section class="section testimonial" id="testimonial">
      <div class="testimonial__container">
        <div class="glide" id="glide_4">
          <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="image/img/voucher2.png" alt="profile">
                  </div>
                  <p>Sử dụng mã giảm 80% phí vận chuyển (tối đa 15K) đơn hàng từ 0Đ cho sản phẩm thuộc gian hàng Freeship Extra.
                    Đơn vị vận chuyển khả dụng: Nhanh 
                    Áp dụng trên ứng dụng JC SHOP. 
                    Mã chỉ được hoàn theo quy định của JC SHOP.
                    Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi hoặc khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
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
                    <img src="image/img/voucher2.png" alt="profile">
                  </div>
                  <p>Sử dụng mã giảm 50% phí vận chuyển (tối đa 30K) đơn hàng từ 0Đ cho sản phẩm thuộc gian hàng Freeship Extra.
                    Đơn vị vận chuyển khả dụng: Nhanh 
                    Áp dụng trên ứng dụng JC SHOP. 
                    Mã chỉ được hoàn theo quy định của JC SHOP. 
                    Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi hoặc khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
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
                    <img src="image/img/voucher2.png" alt="profile">
                  </div>
                  <p>Mã CCBDPBL1022A hoàn 5% tối đa 100K Xu cho đơn hàng hợp lệ từ 50K từ shop Hoàn Xu Xtra trên ứng dụng Shopee. HSD: 28/10/2022 23:59. Số lượng có hạn. Mỗi khách hàng chỉ sử dụng 1 lần. Số Shopee Xu hoàn được tính trên giá trị đơn hàng (sau khi trừ khuyến mãi, số Shopee Xu và không bao gồm phí vận chuyển).</p>
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
                    <img src="image/img/voucher2.png" alt="">
                  </div>
                  <p>Sử dụng mã miễn phí vận chuyển cho sản phẩm thuộc gian hàng FreeShip Xtra:
                    + Miễn phí vận chuyển tối đa 15,000đ cho đơn hàng từ 50,000đ.
                    + Miễn phí vận chuyển tối đa 25,000đ cho đơn hàng từ 150,000đ dành riêng gian hàng quốc tế.
                    + Miễn phí vận chuyển tối đa 70,000đ cho đơn hàng từ 300,000đ. 
                    + Miễn phí vận chuyển tối đa 25,000đ cho đơn hàng từ 200,000đ dành riêng gian hàng trong nước ( chỉ áp dụng vào thứ 4 hàng tuần ).
                    Đơn vị vận chuyển khả dụng: Nhanh
                    Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi hoặc khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
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
                    <img src="image/img/voucher2.png" alt="">
                  </div>
                  <p>Sử dụng mã miễn phí vận chuyển cho đơn hàng thỏa điều kiện ưu đãi tại ứng dụng JC SHOP .
                    Kênh vận chuyển khả dụng: Nhanh.
                    Chỉ áp dụng cho một số người bán tham gia chương trình Hoàn Xu Xtra, Freeship Xtra, JC SHOP Mall.
                    Mã chỉ được hoàn theo quy định của JC SHOP
                    Số lượt sử dụng có hạn, chương trình và mã có thể kết thúc khi hết lượt ưu đãi hoặc khi hết hạn ưu đãi, tuỳ điều kiện nào đến trước.</p>
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
          <a href="/html/user.html">Tài khoản của tôi</a>
          <a href="/html/user.html">Lịch sử đơn hàng</a>
          <a href="/phone_chuong/cart.html">Danh sách mong muốn</a>
          <a href="#">Cung cấp thông tin</a>
          <a href="/html/homelogin.html">Quay lại</a>
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


  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="image/images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
<%--  <script src="../js/products.js"></script>--%>
<%--  <script src="../js/index.js"></script>--%>
  <script src="/js/slider.js"></script>
  <script src="/js/filterPr.js"></script>
</body>

</html>