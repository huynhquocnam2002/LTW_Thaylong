<%--
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Admin--%>
<%--  Date: 11/26/2022--%>
<%--  Time: 12:03 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>


<%@ page import="vn.edu.hcmuaf.fit.DB.DBConnect" %>

<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.*" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>


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
                <%
                    User user = null;
                    String id_user = null;
                    if ( session.getAttribute("user") == null) {%>
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
                    user = UserDAO.getUserBySessionID((String)session.getAttribute("user"));
                    id_user = user.getId();
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
                        User u =  UserDAO.getUserBySessionID((String)session.getAttribute("user"));
                        int numOfCartItems = ((Cart) session.getAttribute("cart")).getSize();
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
                    <%--    --%>
                    <div class="nav__icons_danhmuc">
                        <a href="DanhmucServlet?idcategory=<%=list.get(i).getId()%>" class="icon__item">
                            <img class="icon__itemdanhmuc" src="<%=list.get(i).getImg()%>"></img>
                        </a>
                        <li class="nav__item">
                            <a href="DanhmucServlet?idcategory=<%=list.get(i).getId()%>" class="scroll-linkDANHMUC">
                                <%=list.get(i).getName()%></a>
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


    <!-- Hero -->
</header>
<!-- End Header -->


<!-- Ph???n main chi ti???t s???n ph???m-->


<div class="block-breadcrumbs">

    <div class="prefix">

        <% DataDB data = new DataDB();%>


        <ul>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="10.633" viewBox="0 0 12 10.633">
                <path id="home"
                      d="M13.2,9.061H12.1v3.965a.6.6,0,0,1-.661.661H8.793V9.721H6.15v3.965H3.507a.6.6,0,0,1-.661-.661V9.061h-1.1c-.4,0-.311-.214-.04-.494L7,3.259a.634.634,0,0,1,.936,0l5.3,5.307c.272.281.356.495-.039.495Z"
                      transform="translate(-1.471 -3.053)" fill="#d70018"></path>
            </svg>
            <li>Trang ch???
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
                                            <h1>T??NH N??NG N???I B???T</h1>

                                            <img src="<%=ProductDAO.getProductById(request.getParameter("idProduct")).getImg()%>
                                            "

                                                 alt="img__product" id="image__detail__product">

                                            <div class="desktop">
                                                C??ng ngh??? s???c nhanh PD 20W h??? tr??? s???c nhanh cho c??c <br>thi???t b??? <br>


                                                Thi???t k??? m???ng v?? nh??? g???n, tr???ng l?????ng d??? d??ng mang theo <br>


                                                S???c ?????ng th???i hai thi???t b??? th??ng qua c??ng USB-A v?? USB-C<br>


                                                Ch??? ????? s???c nh??? gi???t Trickle-Charging cho c??c thi???t b??? c???n <br> d??ng s???c
                                                th???p

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
                               data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPERAQEA0NDQ0NDQ0NDQ8ODQ8NDQ0NFREWFhYRExMYHSggGBolGxMVITEhJSkrLjouFyszODMtNygtLisBCgoKDg0OGhAQGy0gHyUtNy03LTAtLS0vKzAvNS0tKy0tLS0tLS0rMCstLS0tLS0tLSstLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIEAwUGB//EADcQAAIBAgMECAQEBwEAAAAAAAABAgMRBCExBUFRYRIiMnGBkbHBE0JyoQYz0fAUI1JigqLhc//EABsBAQACAwEBAAAAAAAAAAAAAAAEBQIDBgEH/8QANBEBAAICAQEFBQcDBQEAAAAAAAECAwQRMQUGEiFhEzJBUXEiIzNCgaHRJJHxRFLB4fAU/9oADAMBAAIRAxEAPwD9xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFwKuouIFHXQFf4lAP4lASsQgLKqgLpgSAAAAAAAAAAAAAAAAAAAAABWU0gM9TFpAZZ4tsDk6zYEdJgE2BYCyYFlJgXjUYHWGIYGiFZPkB0AAAAAAAAAAAAAAAAAIbAzV8SloBgqYhsDle4EpASBKQFkgLJASkBZICQJsBKQHWnWaA0wqJgXAAAAAAAAAAAAABWckgPPxOKAxSk2ASAskBIEpAWSAskBKQFkgJAsgJSAlATYCFdAaqNa+T19QOoAAAAAAAAAAArOVgPNxWJuBj1AlAWSAkCUgLICyQCUlFXbSXN2NWXNjxV8WSYiPVlWs2niIKdSMuzJPudzHDs4s0c47RP0LUtXrDob2KyAlICUBIFrALAVlGwGihVvk9fUDsAAAAAAAAAhsDzsZiAMOoEoCyQEgSkBZAWSAnTN5JZmN7RWs2t0h7EczxDxcXX+JK/yrKK5cT552nv22802/LHRda+GMdePirQquElJbtVxXA0ae3fWyxkr/lnlxxevEvepTUkpLNNXR9HwZq5scZKdJUd6TWeJdEjaxSBIFkgJAkCbAcpxtmBqo1Okua1A6AAAAAAAAZcXWsgPKk7sAgLJASBKQFkBZICUgMG08R8i75/ocr2/wBof6ek/X+Fjp4Ofty845NYgG7ZeJ6L6D7Mnlyl/wBOh7C7Q9lf2N5+zPT0n/tC3MPijxR1eyjtVUkCyAkCQJSAkCGrgcoy6L9e4DancCQAAAAArOVkB5GKqXYHFICyQEgSkBZICyQEpAcsXX+HG+95RXFlf2lvRqYZt8Z6fVuwYpyX4eI3fN5t5s+d3vN7Ta3WV3EREcQGL0ACJ4Hu7NxXxI2fbjk+a3M73sbtD/6cXht71f39VPtYfZ25jpLakXKKkCQJSAkABKQFK0N4FsJP5eGncBoAAAAADLjKlkB5bzAlICQJSAskBZICUgJb3vJLNsxveKRNrdIexHM8Q8TF1/iSv8qyiuR877T3p2802+EdF1gw+zrx8XEr28AAAOmHrOnJSW7VcVvRJ09q2tljJX4fu15ccZK+GX0lGoppSWaauj6PgzVzY4yU6So71mszEuhuYpSAkABKQFkgDAzX6Mk+efcBuAAAABgeXjJ3YGZICQJSAskBZI8meOo5zxMI6yXcs39iDn7T1cPv3j9PNupgyW6QzVNpr5Yt85ZFPn7yUjyxU5+vkk00Z/NLLXxk5qzaUXuSsUe32vs7NZraeI+UJePVx0nmOrOViQAAAAAB3w2MnTyi8r36LV1cn6naexqxxjny+U9GnLr0yecvQo7Z/rh4wfs/1L3B3ljplp/b+EO+jP5ZbaO0KUtJpPhLqv7lzg7W1M3u34n5T5I19fJXrDUiwiYnzhoSkeiyQACUgOGJiB2w8rxXLLyA6gAAFajyA8iu7sCgEpAVr1lBXe/JJashb29j1KeK/wCkfNtxYbZJ4hintCT0Sj92cxn7x57eWOsV/dYU0aR708s1StKWsm/HLyKfNvbGb8S8z/70Sa4qU6QoRWwAAAAAAAAAAAAC9KtKHZlKPc8vIkYdvNhn7u0x+rC2OlusN1HbFSPaUZrmui/t+hb4O8OzTyyRFv2lFvo0n3fJ62Bx8a17JxktYvhxXE6Xs/tPFuRPh8pj4IObBbFPn0a0iyaEgUrLIDngn2lwaf78gNQAAByxDyA8qeoEJAWQGLalN9WW5XT5XOW7yYLzFMkdI8lho3iOavPOSWQAAAAAAAAAAAAAAAAAensCk3UcvljFpvi3bI6Lu7hvOecnwiOEHetHhivxfQHaKsAiayYGfCvrtcYv1QGwAAA4YrQDzGswJQFkgEoJppq6eTRhlx1yUmlo5iXtbTWeYeNi8O6craxfZfI+e9paFtTL4fyz0ldYM0ZK+riVzeAAAAAAAAAAAAAAAdcLh5VZKEd+r3RW9krT1L7WWMdP8Q15csY68y+qw9CNOKjFWS82+LPoutr018cY6dIUl7zeeZdDewSkAkBjo/mLufoBuAAAOGK0A84CUgJSAskBTEUFUi4vwfB8SJu6dNrFOO36T8pbMWWcduYeFVpuLcWrNfu5862Ne+DJOO8ecLyl4vXxQqaWQAAAAAAAAAAAAExi20krtuyS1bMsdLXtFaxzMvLWiscy+n2bglRjbWcs5vnwXI+hdmdn11MXH5p6ypc+aclufg1lk0JSAkCGBjo/mLx9ANwAABxxKyA89oAkBZICQLIDLj8J8RXXbjpzXAp+1+zY2sfir78fv6JOtn9nbiejxGcFas1nieq5ieQ8AAAAAAAAAAAAe9sXAdBfEkuvJdVP5Y8e87TsTsz2NfbZI+1PT0hVbex458Nej1TokJKQEgAInowMeFzqPlF+qA3AAAHOssgPPkswCQEgWAlICQPK2xh0rTWTk+jJcXbX7HId4dKlOM9fKZnif5WWllmfsS805hYAAAAAAAAAAB6GxcKqk25ZqnZ24t6ehe9haVNjNN79K/BD3Ms0rxHxfRncqlKQEgAAFKzsgM+AWcn3IDYAAARJAefUjmBUCyAlICUBIHn7b7MPr9mc13ln7mkev/Cdoe/LxzjloAAAAAAAAAAHr/h19ap9MfVnT92p+8yR6Qr9/pV7qR16tSAAAAM+MlZAWwUbQXPref8AwDuAAAAMeJhmBxQFkgJQEgWsB5m3XlDvl6I5jvNP2Mceqw0Pel5ByCyAAAAAAAAAAD1fw6+vP6PdHSd2p++v9EDf92H0B2SsAAACQPPxD6clFb3bw3gb0gJAAAAHOvC67gMSQFgJAskBIHlbef5f+fscp3mn8OPqsdD8zyTlFiAAAAAAAAAAHp/h5/zZf+b9UdD3cn+otHohb3uR9X0R2qqAAEgcq87IDPgYXbm/pj7sDaAAAAAADHXhZgVQFkBIEgePt550+6fsch3mn7eOPSVlodJeWcwsAAAA1YfZ1WekOiuM+qv1LPW7I2s/nFeI+c+SPfax0+PK2I2XVh8vTXGGf21M9nsTaw+fHij0/h5Tbx29GMqprMTxKTE8h4AAD0dgP+d305eqL3u9P9Xx6Sh734f6vpDuVSASBDdgMFeTnJRWrfkuIG6nBRSS0SsBYAAAAAAFKkLr0Ax6MC6AsBKQHj7fi7we7oteNzkO8tLePHb4cLLQmOJh5RzCwdaGGnU7MHLnpHz0JWvo59ifu6zPr8P7td81KdZelh9iPWpO3KGb82X+t3bnrmt+kfyhZN7/AGQ9PD4KnT7MFfi85ebOg1+ztbX9ysc/PrKHfNe/WWhE1qSBxr4WFTtwUuej8yLsaWDPH3lYlspkvT3Z4ebiNhb6c7f2z080UGz3brPngtx6T/KZj3p/PDy8RgqlPtQaXFdaPmig2ezdnX9+s8fOPOEymxjv0lnILc9LYMW6t1ooSvyL3u9S07XMdIiUPdmPZ8PpDuVSkABkxde2QFsHQ6K6T7UvsuAGkAAAAAAAAByr0r5rX1AzRlYDqgJApWpRmujJKSe5mnPgx56eDJHMMq3ms8w4Utm0ou/Qu/7m5W8GQcPY+ninmKc/XzbbbOS0cTLYkWcRERxDQk9EpASAAlASAPOBkr7NpTzcEnxj1X9iv2OytXPPNqefp5N1NjJTpLrhsLCmrQiknrvb72SNbUw61fDirwwvkteebS7klgAZsTXSQHPC0HJ9OX+K9wNoAAAAAAAAAAA41qN81r6gZ4ysB1TuBZICyQACUgJAASkBIAAAAkCGwMuIxNtAK4fDOT6U+9R92BtAAAAAAAAAAAAABzq0lLk+IGWUXH95MDpCqt4HVMCUgJAASkBIAAAAkDlUrJAZJ1pTdopt/Zd4HfD4VRzl1pfZdwGkAAAAAAAAAAAAAAABDQHCphv6XbluA4vpR1T9gLwxAHVVUBaMlxAtdcQF1xAOS4gVdVLeBynikBwdeU8opvu08wL08G3nOXgvdga4QUVZJJcgLAAAAAAAAAAAAAAAAAAAAA5ToRe63dkBylhOEn4q4FXhp7nF+LAr8KpwXmgHwqnD/ZASsPUe+K8WBKwT3z8kB1hhILdf6swOyQEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/2Q=="
                             alt="" id="swiper-slide-visible1__image">

                        <p>T??nh n??ng <br> n???i b???t</p>


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


            <h3 style="color: red; "><%=ProductDAO.getProductById(request.getParameter("idProduct")).getPrice()%> ??


                <p style="color:#707070; position: relative; left:90px; bottom:25px;">
                    <del>1.000.000</del>
                    <u>??</u></p>
            </h3>

            <p>Ch???n m??u ????? xem gi?? v?? chi nh??nh c?? h??ng</p>
            <div style="display: flex">
            <% List<Option> listoption = OptionDAO.getOptions(ProductDAO.getProductById(request.getParameter("idProduct")));
                System.out.println(listoption.size());
            for (Option op : listoption) {
                    String kindoption = op.getValue();
            %>
            <div class="product__item">

                <img
                        src="<%=op.getImg()%>"
                        alt="" style="width: 33px; height: 35px; object-fit: cover;">

                <div class="product__title__item">
                    <strong><%=kindoption%></strong>
                    <span><%=op.getPrice()%><u>??</u></span>
                </div>
            </div>
     <%}%>

            </div>

            </li>


            <div class="title">
                <li>


                    <span>Gi??:</span>
                    <a href="#" class="new__price"><%=ProductDAO.getProductById(request.getParameter("idProduct")).getPrice()%>VN??</a>

                </li>
                <li>
                    <span>H??ng:</span>
                    <a href="#"><%=ProducerDAO.getProducersOject(request.getParameter("idProduct")).getName()%>
                    </a>


                </li>

                <li>
                    <span>Lo???i s???n ph???m:</span>
                    <a href="#"><%=CategoryDAO.getCategorysObject(request.getParameter("idProduct")).getName()%> </a>

                </li>
                <li>
                    <span>Hi???n c??:</span>
                    <a href="#" class="in-stock">Trong kho (<%=ProductDAO.getProductById(request.getParameter("idProduct")).getQuantity()%> s???n ph???m)</a>
                </li>
                </ul>
                <div class="product-info__btn">
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-crop"></use>
                </svg>
              </span>&nbsp;
                        H?????NG D???N K??CH TH?????C
                    </a>
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-truck"></use>
                </svg>
              </span>&nbsp;
                        V???N CHUY???N
                    </a>
                    <a href="#">
              <span>
                <svg>
                  <use xlink:href="image/images/sprite.svg#icon-envelope-o"></use>
                </svg>&nbsp;
              </span>
                        H???I V??? S???N PH???M
                    </a>

                </div>


                <div class="product__bonus">

                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu_Db-7oZT6WVbPR9ouktyhihrr-PCyf0lle3zrMQ_dEpQpp5UfVbwNflLldcQ-H5-fGs&usqp=CAU"
                         alt="" style="width:25px;height:25px;position:absolute; top: -15px; left: 35px;z-index: 9;">
                    <span style="color: #be1e2d;text-align:center; width: 115px; background-color:white;position:absolute; top: -15px; left: 60px;">Khuy???n m??i</span>

                    <li>Duy nh???t <b>Th??? 5</b>: Gi?? ch??? <span style="color:red;">940.000??.</span></li>
                    <li>T???ng th??m c??p s???c 20cm Bagi</li>
                    <li>Gi???m th??m 30% (T???i ??a <span style="color:red;">600.000??</span> khi m??? th??? TPBank EVO</li>

                    <hr>

                    <span style="margin:20px 0 0 15px;">??U ????I TH??M</span>

                    <p style="margin:5px 0 0 15px;">Gi???m th??m 5% t???i ??a 1 tri???u khi thanh to??n qua Kredivo</p>

                    <p style="margin:5px 0 0 15px;">Gi???m th??m 30% t???i ??a 600.000?? khi m??? th??? TPBank</p>

                </div>

                <div class="button">
                    <a href="CartServlet?command=insert&idProduct=<%=ProductDAO.getProductById(request.getParameter("idProduct")).getId()%>&cartID=<%=System.currentTimeMillis()%>">
                        <button class="button__pay" id="button__cart" > TH??M V??O <strong>GI???</strong> H??NG</button>
                    </a>

                    <a href="CartServlet?command=insert&idProduct=<%=ProductDAO.getProductById(request.getParameter("idProduct")).getId()%>&cartID=<%=System.currentTimeMillis()%>">
                        <button class="button__pay" id="button__buy">MUA NGAY</button>
                    </a>


                </div>


            </div>

            <div class="product-detail__right">


                <strong>B??? s???n ph???m</strong>

                <p style="color:#333333; font-size:14px;">B??? s???n ph???m bao g???m: H???p Pin d??? ph??ng, <br>S??ch HDSD</p>

                <strong>B???o h??nh </strong>

                <p style="color:#333333; font-size:14px;">B???o h??nh:<b<%=ProductDAO.getProductById(request.getParameter("idProduct")).getIns()%> th??ng></b> ch??nh h??ng Energiner</p>



            </div>
        </div>

    </div>
</section>

    <section class="section section-review">
    <div class="product-detail__bottom">
        <div class="title__container tabs">

            <div class="section__titles category__titles ">
                <div class="section__title detail-btn active" data-id="description">
                    <span class="dot"></span>
                    <h1 class="primary__title">M?? t???</h1>
                </div>
            </div>

            <div class="section__titles">
                <div class="section__title detail-btn" data-id="reviews">
                    <span class="dot"></span>
                    <h1 class="primary__title">????nh gi??</h1>
                </div>
            </div>

            <div class="section__titles">
                <div class="section__title detail-btn" data-id="shipping">
                    <span class="dot"></span>
                    <h1 class="primary__title">Chi ti???t v???n chuy???n</h1>
                </div>
            </div>
        </div>

        <div class="detail__content">
            <div class="content active" id="description">
                <%=ProductDAO.getProductById(request.getParameter("idProduct")).getDetail()%>
            </div>
            <div class="content" id="reviews">
                <h1>????nh gi?? c???a kh??ch h??ng</h1>


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

                        <p><strong>7</strong> ????nh gi?? v?? nh???n x??t </p>

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
                                <td><h6>7 ????nh gi??</h6></td>
                            </tr>
                            <tr>
                                <td>4
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                </td>
                                <td><input type="range" min="0" max="100" value="0" disabled></td>
                                <td><h6>0 ????nh gi??</h6></td>
                            </tr>
                            <tr>
                                <td>3
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                </td>
                                <td><input type="range" min="0" max="100" value="0" disabled></td>
                                <td><h6>0 ????nh gi??</h6></td>
                            </tr>
                            <tr>
                                <td>2
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                </td>
                                <td><input type="range" min="0" max="100" value="0" disabled></td>
                                <td><h6>0 ????nh gi??</h6></td>
                            </tr>
                            <tr>
                                <td>1
                                    <svg>
                                        <use xlink:href="image/images/sprite.svg#icon-star-full"></use>
                                    </svg>
                                </td>
                                <td><input type="range" min="0" max="100" value="0" disabled></td>
                                <td><h6>0 ????nh gi??</h6></td>
                            </tr>
                        </table>

                    </div>

                </div>

                <h6 style="position: relative; bottom:280px; left: 235px;">B???n ????nh gi?? sao s???n ph???m n??y</h6>

                <button class="button__rating" style="position: relative; bottom:250px; left: 235px;">????nh gi?? ngay
                </button>
                    <%  SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                        Date d= new Date();
//                        f.format(d);
                    %>
                <form action="commentServerlet" method="post" class="input_textarea">
                    <textarea type="text" class="input_review" name="name" placeholder="Write a comment" v-model="newItem" @keyup.enter="addItem()"></textarea>
                    <input type="hidden" name="idpro" value="<%=request.getParameter("idProduct")%>">
                    <input type="hidden" name="iduser" value="<%=id_user%>">
                    <input type="hidden" name="datename" value="<%=f.format(d)%>">
                    <input type="hidden" name="linkrequet" value="Product?idProduct=<%=request.getParameter("idProduct")%>">
                    <button id="buttonreivew" onclick="addItem()" class='primaryContained float-right' type="submit">G???i</button>
                </form>

                <div class="container__feedback">

                    <% List<Review> listreview = ReviewDAO.getReview(request.getParameter("idProduct")); %>
                    <% for (int i = 0; i < listreview.size(); i++) { %>

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

                        <h6 style="display: flex;">????nh gi??
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

                        <h6><strong>Nh???n x??t:</strong> <%=listreview.get(i).getContent()%></h6>
                    </div>
                    <%}%>

                </div>
            </div>
            <div class="content" id="shipping">
                <h3>Ch??nh s??ch tr??? h??ng</h3>
                <p>B???n c?? th??? tr??? l???i h???u h???t c??c m???t h??ng m???i,
                    ch??a m??? trong v??ng 30 ng??y k??? t??? ng??y giao h??ng ????? ???????c ho??n ti???n ?????y ?????.
                    Ch??ng t??i c??ng s??? thanh to??n chi ph?? v???n chuy???n tr??? l???i n???u vi???c tr??? l???i l??
                    do l???i c???a ch??ng t??i (b???n nh???n ???????c m???t m???t h??ng kh??ng ch??nh x??c ho???c b??? l???i, v.v.).</p>
                <p>B???n s??? nh???n ???????c ti???n ho??n l???i trong v??ng b???n tu???n k??? t??? khi
                    ????a g??i h??ng c???a m??nh cho ng?????i g???i tr??? h??ng, tuy nhi??n, trong nhi???u tr?????ng h???p,
                    b???n s??? nh???n ???????c ti???n ho??n l???i nhanh ch??ng h??n. Kho???ng th???i gian n??y bao g???m th???i gian
                    v???n chuy???n ????? ch??ng t??i nh???n ???????c h??ng tr??? l???i c???a b???n t??? ng?????i g???i h??ng (5 ?????n 10 ng??y l??m vi???c),
                    th???i gian ch??ng t??i x??? l?? ????n h??ng tr??? l???i c???a b???n khi ch??ng t??i nh???n ???????c h??ng (3 ?????n 5 ng??y l??m vi???c)
                    v?? th???i gian ng??n h??ng c???a b???n ????? x??? l?? y??u c???u ho??n l???i ti???n c???a ch??ng t??i (5 ?????n 10 ng??y l??m vi???c).
                </p>
                <p>N???u b???n c???n tr??? l???i m???t m???t h??ng, ch??? c???n ????ng
                    nh???p v??o t??i kho???n c???a b???n, xem ????n ?????t h??ng b???ng li??n k???t
                    'Ho??n t???t ????n ?????t h??ng' trong menu T??i kho???n c???a t??i v?? nh???p
                    v??o n??t Tr??? l???i (c??c) M???t h??ng. Ch??ng t??i s??? th??ng b??o cho b???n
                    qua e-mail v??? kho???n ti???n ho??n l???i c???a b???n sau khi ch??ng t??i ????
                    nh???n v?? x??? l?? m???t h??ng b??? tr??? l???i.
                </p>
                <h3>V???n chuy???n</h3>
                <p>Ch??ng t??i c?? th??? g???i ?????n h???u nh?? b???t k??? ?????a ch???
                    n??o tr??n th??? gi???i. L??u ?? r???ng c?? nh???ng h???n ch??? ?????i
                    v???i m???t s??? s???n ph???m v?? m???t s??? s???n ph???m kh??ng th??? ???????c
                    v???n chuy???n ?????n c??c ??i???m ?????n qu???c t???.</p>
                <p>Khi b???n ?????t h??ng, ch??ng t??i s??? ?????c t??nh ng??y v???n chuy???n
                    v?? giao h??ng cho b???n d???a tr??n s??? s???n c?? c???a c??c m???t h??ng
                    c???a b???n v?? c??c t??y ch???n giao h??ng m?? b???n ch???n. T??y thu???c
                    v??o nh?? cung c???p d???ch v??? v???n chuy???n m?? b???n ch???n, ?????c t??nh
                    ng??y giao h??ng c?? th??? xu???t hi???n tr??n trang b??o gi?? v???n chuy???n.
                </p>
                <p>C??ng xin l??u ?? r???ng ph?? v???n chuy???n cho nhi???u
                    m???t h??ng ch??ng t??i b??n d???a tr??n tr???ng l?????ng.
                    Tr???ng l?????ng c???a b???t k??? m???c n??o nh?? v???y c?? th???
                    ???????c t??m th???y tr??n trang chi ti???t c???a n??. ????? ph???n
                    ??nh ch??nh s??ch c???a c??c c??ng ty v???n chuy???n m?? ch??ng
                    t??i s??? d???ng, t???t c??? c??c tr???ng l?????ng s??? ???????c l??m tr??n th??nh pound ti???p theo.
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
            <h1 class="primary__title">S???n ph???m li??n quan</h1>
        </div>
    </div>
    <% Set<Product> listconection = ProductDAO.getProductsconnection(request.getParameter("idProduct"));%>
    <div class="container" data-aos="fade-up" data-aos-duration="1200">
        <div class="glide" id="glide_3">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides latest-center">
                    <%for (Product pr : listconection) {%>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="<%=pr.getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3><%=pr.getName()%>
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
                                    <h4><%=pr.getPrice()%> VN??</h4>
                                </div>
                                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=
                <%=System.currentTimeMillis()%>">
                                    <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="Product?idProduct=<%=pr.getId()%>">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=
                <%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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
                    <%}%>
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
            <h1 class="primary__title">S???n ph???m m???i nh???t</h1>
        </div>
    </div>
    <div class="container" data-aos="fade-up" data-aos-duration="1200">
        <div class="glide" id="glide_2">
    <% Set<Product> listnew = ProductDAO.getProductsnew(request.getParameter("idProduct"));%>
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides latest-center">
               <% for (Product pr : listnew) {%>
                    <li class="glide__slide">
                        <div class="product">
                            <div class="product__header">
                                <a href="#"><img
                                        src="<%=pr.getImg()%>"
                                        alt="product"></a>
                            </div>
                            <div class="product__footer">
                                <h3><%=pr.getName()%>
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
                                    <h4><%=pr.getPrice()%> VN??</h4>
                                </div>
                                <a href="CartServlet?command=insert&idProduct=<%=pr.getId()%>&cartID=
                <%=System.currentTimeMillis()%>">
                                    <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a data-tip="Quick View" data-place="left" href="Product?idProduct=<%=pr.getId()%>">
                                        <svg>
                                            <use xlink:href="image/images/sprite.svg#icon-eye"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a data-tip="Add To Wishlist" data-place="left" href="CartServlet?command=insert&idProduct=
                <%=pr.getId()%>&cartID=<%=System.currentTimeMillis()%>">
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
                    <%}%>
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
                <p>MI???N PH?? V???N CHUY???N TO??N C???U</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-credit-card-alt"></use>
                    </svg>
                </div>
                <p>?????M B???O HO??N TI???N 100%</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-credit-card"></use>
                    </svg>
                </div>
                <p>THANH TO??N B???NG TH???</p>
            </div>

            <div class="facility__box">
                <div class="facility-img__container">
                    <svg>
                        <use xlink:href="image/images/sprite.svg#icon-headphones"></use>
                    </svg>
                </div>
                <p>H??? TR??? TR???C TUY???N 24/7</p>
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
