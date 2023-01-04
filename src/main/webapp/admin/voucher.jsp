<%@ page import="vn.edu.hcmuaf.fit.model.Voucher" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.VoucherDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- manage voucher-->
<%
    List<Voucher> vouchers = VoucherDAO.getListVoucher();
    List<Voucher> activedV = VoucherDAO.getListVoucherByStatus(vouchers, 1);
    List<Voucher> unactivedV = VoucherDAO.getListVoucherByStatus(vouchers, 0);%>
<div class="right-tab manage-vouchers">
    <h1 class="tab-name">Quản lí mã giảm giá</h1>
    <div class="flex flex-manage-orders">
        <div class="flex-item active-tab">
            <p>Tất cả<span class="quantity"><%=vouchers.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đã kích hoạt<span class="quantity"><%=activedV.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Chưa kích hoạt<span class="quantity"><%=unactivedV.size()%></span></p>
        </div>
    </div>
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
                <select name="other-filter" class="other-filter-select filter-select">
                    <option value="0" class="other-filter-option" selected>
                        ---Sắp xếp---
                    </option>
                    <option value="decrease-price" class="other-filter-option">
                        Tiền: Giảm dần
                    </option>
                    <option value="increase-price" class="other-filter-option">
                        Tiền: Tăng dần
                    </option>
                    <option value="decrease-quantity" class="other-filter-option">
                        Ngày BD: Trước -> Nay
                    </option>
                    <option value="increase-quantity" class="other-filter-option">
                        Ngày BD: Nay -> Trước
                    </option>
                    <option value="5" class="other-filter-option">
                        Ngày KT: Trước -> Nay
                    </option>
                    <option value="6" class="other-filter-option">
                        Ngày KT: Nay -> Trước
                    </option>
                </select>
                <button class="reset-filter-button">Đặt lại</button>
            </div>
        </div>
    </div>
    <!--                all-voucher-->
    <div class="manage-all-orders-tab manage-vouchers-flex-tab active-voucher-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã giảm giá</th>
                        <th>Giá trị giảm</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Voucher v : vouchers) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=v.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=v.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=v.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="discount-div">
                                <p><%=v.getDiscount()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div start">
                                <p><%=v.getStartDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div end">
                                <p><%=v.getEndDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (v.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã xóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã xóa</p>
                                <%}%>
                                <%if (v.getStatus() == 0) {%>
                                <p class="stop-selling-p status active-status">Chưa kích hoạt</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Chưa kích hoạt</p>
                                <%}%>
                                <%if (v.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đã kích hoạt</p>
                                <%} else {%>
                                <p class="selling-p status">Đã kích hoạt</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/InfoVoucherServlet?id=<%=v.getId()%>"><p class="edit">Chỉnh sửa</p></a>
                                <% if (v.getStatus() == 1) {%>
                                <a href="/UnactiveVoucherServlet?id=<%=v.getId()%>"><p class="unlock">Hủy kích hoạt</p></a>
                                <%}%>
                                <% if (v.getStatus() == 0) {%>
                                <a href="/ActiveVoucherServlet?id=<%=v.getId()%>"><p class="unlock">Kích hoạt</p></a>
                                <%}%>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="6">
                            <div class="product-name-container">
                                <p class="condition-voucher">
                                    <b>Mô tả:</b> <%=v.getDescription()%>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product"></p>
                        </td>
                        <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                actived-voucher-->
    <div class="manage-all-orders-tab manage-vouchers-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã giảm giá</th>
                        <th>Giá trị giảm</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Voucher v : activedV) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=v.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=v.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=v.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="discount-div">
                                <p><%=v.getDiscount()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div start">
                                <p><%=v.getStartDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div end">
                                <p><%=v.getEndDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="selling-p status active-status">Đã kích hoạt</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/InfoVoucherServlet?id=<%=v.getId()%>"><p class="edit">Chỉnh sửa</p></a>
                                <a href="/UnactiveVoucherServlet?id=<%=v.getId()%>"><p class="unlock">Hủy kích hoạt</p></a>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="6">
                            <div class="product-name-container">
                                <p class="condition-voucher">
                                    <b>Mô tả:</b> <%=v.getDescription()%>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product"></p>
                        </td>
                        <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
    <!--                unactived-voucher-->
    <div class="manage-all-orders-tab manage-vouchers-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã giảm giá</th>
                        <th>Giá trị giảm</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Voucher v : unactivedV) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=v.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p><%=v.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=v.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="discount-div">
                                <p><%=v.getDiscount()%><span><u>đ</u></span></p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div start">
                                <p><%=v.getStartDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div end">
                                <p><%=v.getEndDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="stop-selling-p status active-status">Chưa kích hoạt</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/InfoVoucherServlet?id=<%=v.getId()%>"><p class="edit">Chỉnh sửa</p></a>
                                <a href="/ActiveVoucherServlet?id=<%=v.getId()%>"><p class="unlock">Kích hoạt</p></a>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="6">
                            <div class="product-name-container">
                                <p class="condition-voucher">
                                    <b>Mô tả:</b> <%=v.getDescription()%>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product"></p>
                        </td>
                        <td class="show-all-type-product">
                        <span class="extend-product">Mở rộng</span
                        ><span class="min-product">Thu nhỏ</span>
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </td>
                    </tr>
                </table>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!-- add new voucher-->
<div class="right-tab add-new-product add-tab">
    <h1 class="tab-name">Thêm mã giảm giá mới</h1>
    <div class="right-tab-container">
        <form action="/AddVoucherServlet" method="post">
            <table class="add-new-product-table">
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-voucher-name">Tên mã giảm giá:</label>
                    </td>
                    <td class="input-col">
                        <input type="text" required
                                name="name"
                                id="new-voucher-name"
                                class="new-product-name-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-voucher-type">Loại mã giảm giá:</label>
                    </td>
                    <td class="input-col">
                        <select name="type" id="new-voucher-type" class="input-field">
                            <option value="1" selected>Miễn phí vận chuyển</option>
                            <option value="2">Giảm giá</option>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-discount">Giá trị giảm:</label>
                    </td>
                    <td class="input-col">
                        <input type="number" required
                                name="discount"
                                id="new-discount"
                                class="new-product-unit-price-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-min-price">Giá trị đơn hàng tối thiểu:</label>
                    </td>
                    <td class="input-col">
                        <input type="number" required
                               name="minPrice"
                               id="new-min-price"
                               class="new-product-unit-price-input input-field"/>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-start-date">Ngày bắt đầu:</label>
                    </td>
                    <td class="input-col">
                        <input
                                type="date" required
                                name="startDate"
                                id="new-start-date"
                                class="new-product-warranty-time-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-end-date">Ngày kết thúc:</label>
                    </td>
                    <td class="input-col">
                        <input
                                type="date" required
                                name="endDate"
                                id="new-end-date"
                                class="new-product-brief-description-input input-field"
                        />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-voucher-status">Trạng thái voucher:</label>
                    </td>
                    <td class="input-col">
                        <select name="status"
                                id="new-voucher-status"
                                class="new-product-status-input input-field">
                            <option value="0" class="new-voucher-status-option"
                                    selected>
                                Chưa kích hoạt
                            </option>
                            <option value="1" class="new-voucher-status-option">
                                Đã kích hoạt
                            </option>
                        </select>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="label-col">
                        <label for="new-voucher-condition">Mô tả:</label>
                    </td>
                    <td class="input-col">
                      <textarea
                              type="text" required
                              name="description"
                              id="new-voucher-condition"
                              class="new-product-detail-input input-field"
                              rows="4"
                      ></textarea>
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

