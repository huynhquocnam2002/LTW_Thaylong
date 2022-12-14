<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProductDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
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
                <a href="#header" class="nav__link scroll-link">Trang ch???</a>
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
              <a href="register.jsp" class="nav__link scroll-link">????ng K??</a><br>
              <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
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
              <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
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
            <a href="giohang" class="nav__link_giohang">Gi??? H??ng</a>
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
              <use xlink:href="image/images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

            <ul class="nav__list" id="nav__list_DANHMUC">

              <% List<Category> list = CategoryDAO.getCategoryHeader();%>
              <% for (int i = 0; i < list.size(); i++) {%>

              <div class="nav__icons_danhmuc">
                <a href="DanhmucServlet?idcategory=<%=list.get(i).getId()%>" class="icon__item">
                  <img class="icon__itemdanhmuc" src="<%=list.get(i).getImg()%>"></img>
                </a>
                <li class="nav__item">
                  <a href="DanhmucServlet?idcategory=<%=list.get(i).getId()%>" class="scroll-linkDANHMUC"><%=list.get(i).getName()%></a>
                </li>
              </div>

              <% }%>
              <div class="nav__icons_danhmuc">
                <a href="#sectiondanhmuc2" class="icon__item">
                  <img class="icon__itemdanhmuc" src="image/icon/khac.jpg"></img>
                </a>
                <li class="nav__item">
                  <a href="#sectiondanhmuc2" class="scroll-linkDANHMUC">PH??? KI???N KH??C</a>
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
      <% Set<Product> ProductSeach = ProductDAO.getProductSeach((String) session.getAttribute("txt"));%>
       <% String txt = (String) session.getAttribute("txt"); %>
      <!-- label thong bao -->
      <div class="label_seach">
        <p class="label_seach_p">T??m ki???m s???n ph???m v???i t??? kh??a: "<%=txt%>"</p>
      </div>


      <!-- Latest Products -->
      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" id="All" name="All" onclick="checkKind('all')">
                <span class="dot"></span>
                <h1 class="primary__title">T???t c???</h1>
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" id="hot" name="hot" onclick="checkKind('hot')">
                <span class="dot"></span>
                <h1 class="primary__title">S???n Ph???m M???i</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" id="new" name="new" onclick="checkKind('new')">
                <span class="dot"></span>
                <h1 class="primary__title">Gi?? T??ng D???n</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" id="salerun" name="salerun" onclick="checkKind('salerun')">
                <span class="dot"></span>
                <h1 class="primary__title">Gi?? Gi???m D???n</h1>
              </div>
            </div>

          </div>
        </div>




        <div class="category__container" id="category__container__all" style="display: block" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
            <%for(Product pr: ProductSeach){%>
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
                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>" style="opacity: 0;"><button type="submit" class="product__btn">TH??M V??O GI??? H??NG</button></a>
              </div>
              <ul>
                <li>
                  <a data-tip="Quick View" data-place="left"
                     href="Product?idProduct=<%=pr.getId()%>">
                    <svg>
                      <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                    </svg>
                  </a>
                </li>
                <li>
                  <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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

        <% Set<Product> rshot = ProductDAO.getProductsSeachnew((String) session.getAttribute("txt"));%>
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
                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>" style="opacity: 0;"><button type="submit" class="product__btn">TH??M V??O GI??? H??NG</button></a>
              </div>
              <ul>
                <li>
                  <a data-tip="Quick View" data-place="left"
                     href="Product?idProduct=<%=pr.getId()%>">
                    <svg>
                      <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                    </svg>
                  </a>
                </li>
                <li>
                  <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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

        <% Set<Product> rsnew = ProductDAO.getProductSeachASC((String) session.getAttribute("txt"));%>
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
                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>" style="opacity: 0;"><button type="submit" class="product__btn">TH??M V??O GI??? H??NG</button></a>
              </div>
              <ul>
                <li>
                  <a data-tip="Quick View" data-place="left"
                     href="Product?idProduct=<%=pr.getId()%>">
                    <svg>
                      <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                    </svg>
                  </a>
                </li>
                <li>
                  <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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

        <% Set<Product> rssalerun = ProductDAO.getProductSeachDESC((String) session.getAttribute("txt"));%>
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
                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>" style="opacity: 0;"><button type="submit" class="product__btn">TH??M V??O GI??? H??NG</button></a>
              </div>
              <ul>
                <li>
                  <a data-tip="Quick View" data-place="left"
                     href="Product?idProduct=<%=pr.getId()%>">
                    <svg>
                      <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                    </svg>
                  </a>
                </li>
                <li>
                  <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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
              <p>MI???N PH?? V???N CHUY???N TO??N C???U</p>
            </div>

            <div class="facility__box">
              <div class="facility-img__container">
                <svg>
                  <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card-alt"></use>
                </svg>
              </div>
              <p>HO??N TI???N 100%</p>
            </div>

            <div class="facility__box">
              <div class="facility-img__container">
                <svg>
                  <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card"></use>
                </svg>
              </div>
              <p>NHI???U H??NH TH???C THANH TO??N</p>
            </div>

            <div class="facility__box">
              <div class="facility-img__container">
                <svg>
                  <use xlink:href="phone_nam/images/sprite.svg#icon-headphones"></use>
                </svg>
              </div>
              <p>H??? TR??? 24/7</p>
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
                  <p>S??? d???ng m?? gi???m 80% ph?? v???n chuy???n (t???i ??a 15K) ????n h??ng t??? 0?? cho s???n ph???m thu???c gian h??ng Freeship Extra.
                    ????n v??? v???n chuy???n kh??? d???ng: Nhanh 
                    ??p d???ng tr??n ???ng d???ng JC SHOP. 
                    M?? ch??? ???????c ho??n theo quy ?????nh c???a JC SHOP.
                    S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i ho???c khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                  <div class="client__info">
                    <a href="https://www.facebook.com/profile.php?id=100015179019358">
                      <h3>GI???M 15%</h3>
                    </a>
                    <span>?????n h???t ng??y 22/11/2022</span>
                  </div>
                </div>
              </li>
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="image/img/voucher2.png" alt="profile">
                  </div>
                  <p>S??? d???ng m?? gi???m 50% ph?? v???n chuy???n (t???i ??a 30K) ????n h??ng t??? 0?? cho s???n ph???m thu???c gian h??ng Freeship Extra.
                    ????n v??? v???n chuy???n kh??? d???ng: Nhanh 
                    ??p d???ng tr??n ???ng d???ng JC SHOP. 
                    M?? ch??? ???????c ho??n theo quy ?????nh c???a JC SHOP. 
                    S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i ho???c khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                  <div class="client__info">
                    <a href="https://www.facebook.com/Nam.74.76.76">
                      <h3>GI???M 30k</h3>
                    </a>
                    <span>?????n h???t ng??y 22/12/2022</span>
                  </div>
                </div>
              </li>
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="image/img/voucher2.png" alt="profile">
                  </div>
                  <p>M?? CCBDPBL1022A ho??n 5% t???i ??a 100K Xu cho ????n h??ng h???p l??? t??? 50K t??? shop Ho??n Xu Xtra tr??n ???ng d???ng Shopee. HSD: 28/10/2022 23:59. S??? l?????ng c?? h???n. M???i kh??ch h??ng ch??? s??? d???ng 1 l???n. S??? Shopee Xu ho??n ???????c t??nh tr??n gi?? tr??? ????n h??ng (sau khi tr??? khuy???n m??i, s??? Shopee Xu v?? kh??ng bao g???m ph?? v???n chuy???n).</p>
                  <div class="client__info">
                    <a href="https://www.facebook.com/canh.nguyenhua">
                      <h3>GI???M 100k</h3>
                    </a>
                    <span>?????n h???t ng??y 22/12/2022</span>
                  </div>
                </div>

              </li>
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="image/img/voucher2.png" alt="">
                  </div>
                  <p>S??? d???ng m?? mi???n ph?? v???n chuy???n cho sa??n ph????m thu????c gian ha??ng FreeShip Xtra:
                    + Mi????n phi?? v????n chuy????n t????i ??a 15,000?? cho ????n ha??ng t???? 50,000??.
                    + Mi???n ph?? v???n chuy???n t???i ??a 25,000?? cho ????n h??ng t??? 150,000?? d??nh ri??ng gian h??ng qu???c t???.
                    + Mi????n phi?? v????n chuy????n t????i ??a 70,000?? cho ????n ha??ng t???? 300,000??. 
                    + Mi???n ph?? v???n chuy???n t???i ??a 25,000?? cho ????n h??ng t??? 200,000?? d??nh ri??ng gian h??ng trong n?????c ( ch??? ??p d???ng v??o th??? 4 h??ng tu???n ).
                    ????n v??? v???n chuy???n kh??? d???ng: Nhanh
                    S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i ho???c khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                  <div class="client__info">
                    <a href="https://www.facebook.com/profile.php?id=100024761910958">
                      <h3>MI???N PH?? V???N CHUY???N</h3>
                    </a>
                    <span>?????n h???t ng??y 22/12/2022</span>
                  </div>
                </div>
              </li>

              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="image/img/voucher2.png" alt="">
                  </div>
                  <p>S??? d???ng m?? mi???n ph?? v???n chuy???n cho ????n ha??ng tho??a ??i????u ki????n ??u ??a??i ta??i ???ng d???ng JC SHOP .
                    K??nh v????n chuy????n kha?? du??ng: Nhanh.
                    Ch??? ??p d???ng cho m???t s??? ng?????i b??n tham gia ch????ng tr??nh Ho??n Xu Xtra, Freeship Xtra, JC SHOP Mall.
                    Ma?? chi?? ????????c hoa??n theo quy ??i??nh cu??a JC SHOP
                    S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i ho???c khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                  <div class="client__info">
                    <a href="https://www.facebook.com/songchongtao.thichet/">
                      <h3>MI???N PH?? 1 ????N H??NG</h3>
                    </a>
                    <span>di???n ra v??o ng??y 30 h??ng th??ng</span>
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
            <h3>THEO D??I B???N TIN JC-TEAM</h3>
            <p>H??y ????ng k?? ????? c?? th??? bi???t ???????c nh???ng voucher, nh???ng s???n ph???m m???i s???m nh???t!!</p>
          </div>
          <form action="#">
            <input type="email" placeholder="Nh???p ?????a ch??? Email c???a b???n" class="newsletter__email">
            <a class="newsletter__link" href="#">????ng K??</a>
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