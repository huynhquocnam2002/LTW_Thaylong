<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProductDAO" %>
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Option" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Producer" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProducerDAO" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--                manage products-->
<%
    Set<Product> allProduct = ProductDAO.getProducts();
    Set<Product> sellingProduct = ProductDAO.getProductsByStatus(allProduct,1);
    Set<Product> upcomingProduct = ProductDAO.getProductsByStatus(allProduct,0);
    Set<Product> stopingProduct = ProductDAO.getProductsByStatus(allProduct,2);
    Set<Product> deletedProduct = ProductDAO.getProductsByStatus(allProduct,-1);
%>
<div class="right-tab manage-products active-right-tab">
    <h1 class="tab-name">Quản lí sản phẩm</h1>
    <div class="flex flex-manage-products">
        <div class="flex-item active-tab">
            <p>Tất cả<span class="quantity"><%=allProduct.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đang bán<span class="quantity"><%=sellingProduct.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Sắp bán<span class="quantity"><%=upcomingProduct.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Dừng bán<span class="quantity"><%=stopingProduct.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đã xóa<span class="quantity"><%=deletedProduct.size()%></span></p>
        </div>
    </div>
    <!--                filter-div-->
    <div class="manage-products-filter-container">
        <div class="filter-container">
            <div class="input-filter">
                <div class="id-product-filter-div">
                    <input
                            type="text"
                            placeholder="Tên sản phẩm hoặc ID"
                            name="id-product-filter"
                            class="id-product-filter"
                    />
                    <button>
                        <i class="search-icon fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <select
                        name="price-filter"
                        class="price-filter-select filter-select"
                >
                    <option value="0" class="price-filter-option">Giá</option>
                    <option value="1" class="price-filter-option">
                        < 500.000 VND
                    </option>
                    <option value="2" class="price-filter-option">
                        500.000 - <1.000.000 VND
                    </option>
                    <option value="3" class="price-filter-option">
                        1.000.000 - <2.000.000 VND
                    </option>
                    <option value="4" class="price-filter-option">
                        2.000.000 - <3.000.000 VND
                    </option>
                    <option value="5" class="price-filter-option">
                        >3.000.000 VND
                    </option>
                </select>
                <select
                        name="category-filter"
                        class="category-filter-select filter-select"
                >
                    <option value="0" class="category-filter-option" selected>
                        Danh mục
                    </option>
                    <%List<Category> categories= CategoryDAO.getCategory();
                    for (Category c: categories){%>
                    <option value="<%=c.getName()%>" class="category-filter-option">
                        <%=c.getName()%>
                    </option>
                    <%}%>
                </select>
                <select name="other-filter" class="other-filter-select filter-select">
                    <option value="0" class="other-filter-option" selected>
                        Sắp xếp
                    </option>
                    <option value="decrease-price" class="other-filter-option">
                        Giá giảm dần
                    </option>
                    <option value="increase-price" class="other-filter-option">
                        Giá tăng dần
                    </option>
                    <option value="decrease-quantity" class="other-filter-option">
                        Số lượng giảm dần
                    </option>
                    <option value="increase-quantity" class="other-filter-option">
                        Số lượng tăng dần
                    </option>
                </select>
                <button class="reset-filter-button">Đặt lại</button>
            </div>

        </div>
    </div>
    <!--                all-products-->
    <div class="manage-all-products-tab manage-products-flex-tab active-product-tab">
        <div class="table-manage-product-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-products-table">
                    <tr class="table-row head-table">
                        <th>

                        </th>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số lượng</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-product">
                <%for (Product p : allProduct) {%>
                <table class="manage-products-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">

                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=p.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name"><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=p.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><%=p.getCategory()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=p.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />

                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price"><%=p.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>

                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (p.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (p.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/ModifyProductServlet?id=<%=p.getId()%>"></a><p class="edit-proceed">Chỉnh sửa</p>
                                <a href="/StopSellProductServlet?id=<%=p.getId()%>" style="text-decoration: none"><p class="delete-proceed">Ngừng bán</p></a>
                            </div>
                        </td>
                    </tr>
                    <%for (Option op : p.getOptions()) {%>
                    <tr class="row-table row-table-child product-row">
                        <td>
                            <div class="id-check-product-div">

                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=op.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">ID: <%=op.getId()%>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <input
                                        type="text"
                                        name="product-type"
                                        value="<%=op.getValue()%>"
                                        class="product-type editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=op.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=op.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (op.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (op.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (op.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (op.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>

                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">

                            </div>
                        </td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                            </p>
                        </td>
                        <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                class="min-product">Thu nhỏ</span>
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                selling-product-->
    <div class="manage-all-products-tab manage-products-flex-tab">
        <div class="table-manage-product-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-products-table">
                    <tr class="table-row head-table">
                        <th>

                        </th>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số lượng</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-product">
                <%for (Product p : sellingProduct) {%>
                <table class="manage-products-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">

                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=p.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=p.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><%=p.getCategory()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=p.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=p.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (p.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (p.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%for (Option op : p.getOptions()) {%>
                    <tr class="row-table row-table-child product-row">
                        <td>
                            <div class="id-check-product-div">

                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=op.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">ID: <%=op.getId()%>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <input
                                        type="text"
                                        name="product-type"
                                        value="<%=op.getValue()%>"
                                        class="product-type editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=op.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=op.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (op.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (op.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (op.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (op.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                            </p>
                        </td>
                        <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                class="min-product">Thu nhỏ</span>
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                upcoming-product-->
    <div class="manage-all-products-tab manage-products-flex-tab">
        <div class="table-manage-product-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-products-table">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số lượng</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-product">
                <%for (Product p : upcomingProduct) {%>
                <table class="manage-products-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=p.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=p.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><%=p.getCategory()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=p.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=p.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (p.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (p.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%for (Option op : p.getOptions()) {%>
                    <tr class="row-table row-table-child product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=op.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">ID: <%=op.getId()%>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <input
                                        type="text"
                                        name="product-type"
                                        value="<%=op.getValue()%>"
                                        class="product-type editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=op.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=op.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (op.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (op.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (op.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (op.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                            </p>
                        </td>
                        <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                class="min-product">Thu nhỏ</span>
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                stop-selling-product-->
    <div class="manage-all-products-tab manage-products-flex-tab">
        <div class="table-manage-product-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-products-table">
                    <tr class="table-row head-table">
                        <th>

                        </th>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số lượng</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-product">
                <%for (Product p : stopingProduct) {%>
                <table class="manage-products-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=p.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=p.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><%=p.getCategory()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=p.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=p.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (p.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (p.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%for (Option op : p.getOptions()) {%>
                    <tr class="row-table row-table-child product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=op.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">ID: <%=op.getId()%>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <input
                                        type="text"
                                        name="product-type"
                                        value="<%=op.getValue()%>"
                                        class="product-type editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=op.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=op.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (op.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (op.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (op.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (op.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                            </p>
                        </td>
                        <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                class="min-product">Thu nhỏ</span>
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                deleted-product-->
    <div class="manage-all-products-tab manage-products-flex-tab">
        <div class="table-manage-product-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-products-table">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Sản phẩm</th>
                        <th>Loại</th>
                        <th>Số lượng</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-product">
                <%for (Product p : deletedProduct) {%>
                <table class="manage-products-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=p.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=p.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><%=p.getCategory()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=p.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=p.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (p.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (p.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (p.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (p.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%for (Option op : p.getOptions()) {%>
                    <tr class="row-table row-table-child product-row">
                        <td>
                            <div class="id-check-product-div">

                            </div>
                        </td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=op.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=p.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">ID: <%=op.getId()%>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <input
                                        type="text"
                                        name="product-type"
                                        value="<%=op.getValue()%>"
                                        class="product-type editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="quantity-block">
                                <input
                                        type="text"
                                        pattern="^\d+$"
                                        value="<%=op.getQuantity()%>"
                                        name="product-quantity"
                                        class="product-quantity editable"
                                        disabled
                                />
                            </div>
                        </td>
                        <td class="uint-price-col">
                            <div class="unit-price-block">
                                <p><%=op.getPrice()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (op.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (op.getStatus() == 0) {%>
                                <p class="upcoming-p status active-status">Sắp mở bán</p>
                                <%} else {%>
                                <p class="upcoming-p status">Sắp mở bán</p>
                                <%}%>
                                <%if (op.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đang bán</p>
                                <%} else {%>
                                <p class="selling-p status">Đang bán</p>
                                <%}%>
                                <%if (op.getStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Dừng kinh doanh</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Dừng kinh doanh</p>
                                <%}%>
                                <select
                                        name="product-status"
                                        class="product-status editable"
                                >
                                    <option class="delete-option" value="-1">
                                        Đã xóa
                                    </option>
                                    <option class="upcoming-option" value="0">
                                        Sắp mở bán
                                    </option>
                                    <option class="selling-option" value="1" selected>
                                        Đang bán
                                    </option>
                                    <option class="stop-selling-option" value="2">
                                        Dừng kinh doanh
                                    </option>
                                </select>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="edit-proceed">Chỉnh sửa</p>
                                <p class="delete-proceed">Xóa</p>
                            </div>
                        </td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=p.getNumOfOptions()%></span> mặt hàng
                            </p>
                        </td>
                        <td class="show-all-type-product"><span class="extend-product">Mở rộng</span><span
                                class="min-product">Thu nhỏ</span>
                            <i class="icon-down fa-sharp fa-solid fa-chevron-down"></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!--            add new product-->
<div class="right-tab add-new-product add-tab">
    <h1 class="tab-name">Thêm sản phẩm mới</h1>
    <div class="right-tab-container">
        <form action="/AddProductServlet" enctype="multipart/form-data" method="post">
            <table class="add-new-product-table">
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-name">Tên sản phẩm:</label>
                    </td>
                    <td class="input-col">
                        <input type="text" required name="name" id="new-product-name" class="new-product-name-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-unit-price">Đơn giá:</label>
                    </td>
                    <td class="input-col">
                        <input type="number" required name="unitPrice" id="new-product-unit-price" class="new-product-unit-price-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-brief-description">Bảo hành (tháng):</label>
                    </td>
                    <td class="input-col">
                        <input
                                type="number"
                                required
                                name="insurance"
                                id="new-product-brief-description"
                                class="new-product-brief-description-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-category">Danh mục:</label>
                    </td>
                    <td class="input-col">
                        <select name="category"
                                id="new-product-category"
                                class="new-product-category-input input-field" >
                            <%int count=0;%>
                            <%for (Category c: categories){%>
                            <option value="<%=c.getId()%>" class="new-product-category-option" <%=count==0?"selected":""%>>
                                <%=c.getName()%>
                            </option>
                            <%count++;%>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-producer">Nhà sản xuất:</label>
                    </td>
                    <td class="input-col">
                        <select name="producer"
                                id="new-product-producer"
                                class="new-product-producer-input input-field">
                            <%List<Producer> producers = ProducerDAO.getProducers();
                            count=0;
                            for (Producer p: producers){%>
                            <option value="<%=p.getId()%>" class="new-product-producer-option" <%=count==0?"selected":""%>>
                                <%=p.getName()%>
                            </option>
                            <%count++;%>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-status">Trạng thái sản phẩm:</label>
                    </td>
                    <td class="input-col">
                        <select name="status"
                                id="new-product-status"
                                class="new-product-status-input input-field">
                            <option value="0" class="new-product-status-option" selected>
                                Sắp mở bán
                            </option>
                            <option value="1" class="new-product-status-option">
                                Đang bán
                            </option>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-quantity">Số lượng:</label>
                    </td>
                    <td class="input-col">
                        <input type="number"
                               required
                                name="quantity"
                                id="new-product-quantity"
                                class="new-product-quantity-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-imgs">Thêm hình ảnh:</label>
                    </td>
                    <td class="input-col">
                        <img src="" alt="" style="display: none; width: 90%; height: auto" id="image-demo">
                        <input type="file" required
                                name="img"
                                id="new-product-imgs"
                                class="new-product-detail-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-product-detail">Mô tả chi tiết:</label>
                    </td>
                    <td class="input-col">

                    </td>
                </tr>
                <tr class="table-row">
                    <td colspan="2"><textarea
                            type="text"
                            name="details"
                            id="new-product-detail"
                            class="new-product-detail-input input-field"
                            rows="4"
                    ></textarea></td>
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
<script src="../plugin/ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace('new-product-detail')
    let image_input= document.querySelector('#new-product-imgs')
    let image_demo= document.querySelector('#image-demo')
    image_input.onchange = function (){
        readURL(image_input, image_demo)
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
