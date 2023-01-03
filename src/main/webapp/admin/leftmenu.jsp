<%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 02/01/2023
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="leftContainer">
  <ul class="list-tab">
    <li class="list-tab-li product-li tab-active">
      <div class="tab-li-container">
        <div
                class="tab-li-container-name menu-left-show"
                onclick="showChild(this,2)"
        >
          <i class="icon-tab fa-solid fa-bag-shopping"></i>
          <p class="li-container-text">Sản phẩm</p>
        </div>
        <div class="icon-up-down">
          <i
                  class="icon-down fa-sharp fa-solid fa-chevron-down"
                  onclick="showChild(this,3)"
          ></i>
          <i class="icon-up fa-solid fa-chevron-up"></i>
        </div>
      </div>
      <ul class="list-child product-list-tab">
        <li class="list-child-item product-list-li-item left-menu-item">
          Quản lí sản phẩm
        </li>
        <li class="list-child-item product-list-li-item left-menu-item">
          Thêm sản phẩm mới
        </li>
      </ul>
    </li>
    <li class="list-tab-li order-li">
      <div class="tab-li-container">
        <div class="tab-li-container-name left-menu-item">
          <i class="icon-tab fa-regular fa-file-lines"></i>
          <p class="li-container-text">Đơn hàng</p>
        </div>
      </div>
    </li>
    <li class="list-tab-li category-li">
      <div class="tab-li-container">
        <div
                class="tab-li-container-name menu-left-show"
                onclick="showChild(this,2)"
        >
          <i class="icon-tab fa-solid fa-bookmark"></i>
          <p class="li-container-text">Danh mục</p>
        </div>
        <div class="icon-up-down">
          <i
                  class="icon-down fa-sharp fa-solid fa-chevron-down"
                  onclick="showChild(this,3)"
          ></i>
          <i class="icon-up fa-solid fa-chevron-up"></i>
        </div>
      </div>
      <ul class="list-child order-list-tab">
        <li
                class="list-child-item category-list-li-item left-menu-item"
        >
          Quản lí danh mục
        </li>
        <li
                class="list-child-item category-list-li-item left-menu-item"
        >
          Thêm danh mục mới
        </li>
      </ul>
    </li>
    <li class="list-tab-li producer-li">
      <div class="tab-li-container">
        <div
                class="tab-li-container-name menu-left-show"
                onclick="showChild(this,2)"
        >
          <i class="icon-tab fa-solid fa-industry"></i>
          <p class="li-container-text">Nhà sản xuất</p>
        </div>
        <div class="icon-up-down">
          <i
                  class="icon-down fa-sharp fa-solid fa-chevron-down"
                  onclick="showChild(this,3)"
          ></i>
          <i class="icon-up fa-solid fa-chevron-up"></i>
        </div>
      </div>
      <ul class="list-child order-list-tab">
        <li
                class="list-child-item producer-list-li-item left-menu-item"
        >
          Quản lí NSX
        </li>
        <li
                class="list-child-item producer-list-li-item left-menu-item"
        >
          Thêm NSX mới
        </li>
      </ul>
    </li>
    <li class="list-tab-li user-li">
      <div class="tab-li-container">
        <div class="tab-li-container-name left-menu-item">
          <i class="icon-tab fa-solid fa-user"></i>
          <p class="li-container-text">Tài khoản khách</p>
        </div>
      </div>
    </li>
    <li class="list-tab-li voucher-li">
      <div class="tab-li-container">
        <div
                class="tab-li-container-name menu-left-show"
                onclick="showChild(this,2)"
        >
          <i class="icon-tab fa-solid fa-bullhorn"></i>
          <p class="li-container-text">Voucher</p>
        </div>
        <div class="icon-up-down">
          <i
                  class="icon-down fa-sharp fa-solid fa-chevron-down"
                  onclick="showChild(this,3)"
          ></i>
          <i class="icon-up fa-solid fa-chevron-up"></i>
        </div>
      </div>
      <ul class="list-child order-list-tab">
        <li class="list-child-item voucher-list-li-item left-menu-item">
          Quản lí Voucher
        </li>
        <li class="list-child-item voucher-list-li-item left-menu-item">
          Thêm voucher mới
        </li>
      </ul>
    </li>
    <li class="list-tab-li turnover-li">
      <div class="tab-li-container">
        <div class="tab-li-container-name left-menu-item">
          <i class="icon-tab fa-regular fa-credit-card"></i>
          <p class="li-container-text">Doanh số</p>
        </div>
      </div>
    </li>
    <li class="list-tab-li history-li">
      <div class="tab-li-container">
        <div class="tab-li-container-name left-menu-item">
          <i class="icon-tab fa-solid fa-clock-rotate-left"></i>
          <p class="li-container-text">Lịch sử chỉnh sửa</p>
        </div>
      </div>
    </li>
    <li class="list-tab-li design-li" style="display: none">
      <div class="tab-li-container">
        <div class="tab-li-container-name left-menu-item">
          <i class="icon-tab fa-solid fa-shop"></i>
          <p class="li-container-text">Thiết kế trang web</p>
        </div>
      </div>
    </li>
  </ul>
</div>

