<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--            manage-category-->
<div class="right-tab manage-categorys">
    <h1 class="tab-name">Quản lí danh mục</h1>
    <%List<Category> categories = CategoryDAO.getCategory();%>
    <!--                filter-div-->
    <div class="manage-orders-filter-container">
        <div class="filter-container">
            <div class="input-filter">
                <div class="id-order-filter-div">
                    <input
                            type="text"
                            placeholder="ID danh mục, tên danh mục"
                            name="id-product-filter"
                            class="id-order-filter"
                    />
                    <button>
                        <i class="search-icon fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <select
                        name="other-filter"
                        class="other-filter-select filter-select"
                >
                    <option value="0" class="other-filter-option" selected>
                        ---Sắp xếp---
                    </option>
                    <option value="decrease-price" class="other-filter-option">
                        Tên: A -> Z
                    </option>
                    <option value="increase-price" class="other-filter-option">
                        Tên: Z -> A
                    </option>
                </select>
                <button class="reset-filter-button">Đặt lại</button>
            </div>
        </div>
    </div>
    <div class="manage-all-orders-tab manage-orders-flex-tab active-order-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th style="width: 0%;">
                        </th>
                        <th>Mã danh mục</th>
                        <th>Ảnh</th>
                        <th>Tên danh mục</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Category c : categories) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td style="width: 0%">
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=c.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <img src="<%=c.getImg()%>" alt="" class="category-img"/>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled><%=c.getName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (c.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã ẩn</p>
                                <%} else {%>
                                <p class="delete-p status">Đã ẩn</p>
                                <%}%>
                                <%if (c.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang hoạt động</p>
                                <%} else {%>
                                <p class="selling-p status">Đang hoạt động</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/InfoCategoryServlet?id=<%=c.getId()%>"><p class="edit-proceed">Chỉnh sửa</p></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!--            add new category-->
<div class="right-tab add-new-category add-tab">
    <h1 class="tab-name">Thêm sản phẩm mới</h1>
    <div class="right-tab-container">
        <form action="/AddCategoryServlet" method="post" enctype="multipart/form-data">
            <table class="add-new-product-table">
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-category-name">Tên danh mục:</label>
                    </td>
                    <td class="input-col">
                        <input
                                type="text" required
                                name="name"
                                id="new-category-name"
                                class="new-product-name-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-category-status">Trạng thái:</label>
                    </td>
                    <td class="input-col">
                        <select name="status"
                                id="new-category-status"
                                class="new-product-status-input input-field">
                            <option value="-1" class="new-category-status-option">
                                Đã ẩn
                            </option>
                            <option value="1"
                                    class="new-category-status-option"
                                    selected>
                                Đang hoạt động
                            </option>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-category-imgs">Thêm hình ảnh:</label>
                    </td>
                    <td class="input-col">
                        <img src="" alt="" id="image-category-demo" style="display: none; width: 200px; height: auto">
                        <input
                                type="file" required accept="image/*"
                                name="img"
                                id="new-category-imgs"
                                class="new-product-detail-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col"></td>
                    <td class="input-col">
                        <button class="confirm-button">Xác nhận</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script>
    let image_category_input = document.querySelector('#new-category-imgs')
    let image_category_demo = document.querySelector('#image-category-demo')
    image_category_input.onchange = function () {
        readURL(image_category_input, image_category_demo)
    }

    function readURL(input, img) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                img.src = e.target.result;
            }
            img.style.display = 'inline';
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
