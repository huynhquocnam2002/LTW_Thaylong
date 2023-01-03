<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%User ad = UserDAO.getUserBySessionID((String) request.getSession().getAttribute("user"));%>
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
          <a href="/" class="scroll-link"> JC SHOP </a>
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
              <a href="/" class="nav__link scroll-link">Trang chủ</a>
            </li>
            <li class="nav__item_seach">
              <input class="input_seach"
                     id="input_seach"
                     type="text"
                     placeholder="seach..."/>
              <div class="nav__icons">
                <a href="#" class="icon__item" id="icon__item_seach">
                  <svg class="icon__search">
                    <use xlink:href="./images/sprite.svg#icon-search"></use>
                  </svg>
                </a>
              </div>
            </li>
          </ul>
        </div>

        <div class="nav__icons">
          <a href="/UserServlet" class="icon__item">
            <svg class="icon__user">
              <use xlink:href="./images/sprite.svg#icon-user"></use>
            </svg>
          </a>
          <div class="nav__item_user" id="nav__item_user">
            <a href="#login" class="nav__link scroll-link">Hello </a>
            <a href="#register" class="nav__link scroll-link"><%=ad.getName()%></a><br/>
            <a href="" class="nav__link scroll-link">Admin</a>
          </div>
        </div>
      </nav>
    </div>

    <!--1-->
  </div>
</header>

