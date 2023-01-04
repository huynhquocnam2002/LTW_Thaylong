<%@ page import="vn.edu.hcmuaf.fit.model.Producer" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProducerDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--            manage producer-->
<div class="right-tab manage-producer">
    <h1 class="tab-name">Quản lí nhà sản xuất</h1>
    <%List<Producer> producer = ProducerDAO.getProducers();%>
    <!--                filter-div-->
    <div class="manage-orders-filter-container">
        <div class="filter-container">
            <div class="input-filter">
                <div class="id-order-filter-div">
                    <input
                            type="text"
                            placeholder="ID đơn hàng, ID người dùng, ID sản phẩm,..."
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
                        <th style="width: 0%">
                        </th>
                        <th>Mã NSX</th>
                        <th>Ảnh</th>
                        <th>Tên NSX</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Producer p : producer) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td style="width: 0%">
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=p.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <img src="<%=p.getImg()%>" alt="" class="category-img"/>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled><%=p.getName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã ẩn</p>
                                <%} else {%>
                                <p class="delete-p status">Đã ẩn</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang hoạt động</p>
                                <%} else {%>
                                <p class="selling-p status">Đang hoạt động</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="InfoProducerServlet?id=<%=p.getId()%>"><p class="edit-proceed">Chỉnh sửa</p></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
</div>

<!--            add new producer-->
<div class="right-tab add-new-producer add-tab">
    <h1 class="tab-name">Thêm nhà sản xuất mới</h1>
    <div class="right-tab-container">
        <form action="/AddProducerServlet" method="post" enctype="multipart/form-data" >
            <table class="add-new-product-table">
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-producer-name">Tên nhà sản xuất:</label>
                    </td>
                    <td class="input-col">
                        <input
                                type="text" required
                                name="name"
                                id="new-producer-name"
                                class="new-product-name-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-producer-status">Trạng thái:</label>
                    </td>
                    <td class="input-col">
                        <select
                                name="status"
                                id="new-producer-status"
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
                        <label for="new-producer-imgs">Thêm hình ảnh:</label>
                    </td>
                    <td class="input-col">
                        <img src="" alt="" id="image-producer-demo" style="display: none; width: 200px; height: auto">
                        <input
                                type="file" accept="image/*" required
                                name="img"
                                id="new-producer-imgs"
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
    let image_producer_input = document.querySelector('#new-producer-imgs')
    let image_producer_demo = document.querySelector('#image-producer-demo')
    image_producer_input.onchange = function () {
        readURL(image_producer_input, image_producer_demo)
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
