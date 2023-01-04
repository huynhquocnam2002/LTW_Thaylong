<%@ page import="vn.edu.hcmuaf.fit.model.Order" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.OrderDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--            manage-order-->
<div class="right-tab manage-orders">
    <h1 class="tab-name">Quản lí đơn hàng</h1>
    <%
        List<Order> allOrder = OrderDAO.getAllOrders();
        List<Order> verifyOrder = OrderDAO.getVerifyOrders(allOrder);
        List<Order> shippingOrder = OrderDAO.getShippingOrders(allOrder);
        List<Order> shippedOrder = OrderDAO.getShippedOrders(allOrder);
        List<Order> cancelRequestOrder = OrderDAO.getCancelRequestOrders(allOrder);
        List<Order> cancelledOrder = OrderDAO.getCanceledOrders(allOrder);
    %>
    <div class="flex flex-manage-orders">
        <div class="flex-item active-tab">
            <p>Tất cả<span class="quantity"><%=allOrder.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Chờ xác nhận<span class="quantity"><%=verifyOrder.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đang giao<span class="quantity"><%=shippingOrder.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Thành công<span class="quantity"><%=shippedOrder.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Yêu cầu hủy<span class="quantity"><%=cancelRequestOrder.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đã hủy<span class="quantity"><%=cancelledOrder.size()%></span></p>
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
                <select name="price-filter" class="price-filter-select filter-select">
                    <option value="0" class="price-filter-option">---Giá---</option>
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
                <select name="other-filter" class="other-filter-select filter-select">
                    <option value="0" class="other-filter-option" selected>
                        ---Sắp xếp---
                    </option>
                    <option value="decrease-price" class="other-filter-option">
                        Tổng tiền giảm dần
                    </option>
                    <option value="increase-price" class="other-filter-option">
                        Tổng tiền tăng dần
                    </option>
                    <option value="decrease-quantity" class="other-filter-option">
                        Cũ nhất -> Mới nhất
                    </option>
                    <option
                            value="increase-quantity"
                            class="other-filter-option"
                    >
                        Mới nhất -> Cũ nhất
                    </option>
                </select>
                <button class="reset-filter-button">Đặt lại</button>
            </div>
        </div>
    </div>
    <!--                all-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab active-order-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : allOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (o.getNumStatus() == 5) {%>
                                <p class="delete-p status active-status">Đã hủy</p>
                                <%} else {%>
                                <p class="delete-p status">Đã hủy</p>
                                <%}%>
                                <%if (o.getNumStatus() == 1) {%>
                                <p class="upcoming-p status active-status">Chờ xác nhận</p>
                                <%} else {%>
                                <p class="upcoming-p status">Chờ xác nhận</p>
                                <%}%>
                                <%if (o.getNumStatus() == 2) {%>
                                <p class="stop-selling-p status active-status">Đang giao</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Đang giao</p>
                                <%}%>
                                <%if (o.getNumStatus() == 3) {%>
                                <p class="selling-p status active-status">Hoàn thành</p>
                                <%} else {%>
                                <p class="selling-p status">Hoàn thành</p>
                                <%}%>
                                <%if (o.getNumStatus() == 4) {%>
                                <p class="cancel-request status active-status">Yêu cầu hủy</p>
                                <%} else {%>
                                <p class="cancel-request status">Yêu cầu hủy</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <%if (o.getNumStatus()==1) {%>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=2"><p>Xác nhận</p></a>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p>Hủy đơn</p></a>
                                <%}%>
                                <%if (o.getNumStatus()==2) {%>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=3"><p>Đã giao hàng</p></a>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p>Hủy đơn</p></a>
                                <%}%>
                                <%if (o.getNumStatus()==4) {%>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p>Xác nhận hủy</p></a>
                                <%}%>
                            </div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name"><%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu: <%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p"><%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getKey().getPrice() * e.getValue()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
                            </p>
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
    <!--                waiting-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : verifyOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="upcoming-p status active-status">Chờ xác nhận</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=2"><p>Xác nhận</p></a>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p class="delete-proceed">Hủy đơn</p></a>
                            </div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name editable"><%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu: <%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p">Số lượng: <%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getKey().getPrice() * e.getValue()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
                            </p>
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
    <!--                delivering-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : shippingOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="stop-selling-p status active-status">Đang giao</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=3"><p>Đã giao hàng</p></a>
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p class="delete-proceed">Hủy đơn</p></a>
                            </div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name editable">
                                            <%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu:<%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p">Số lượng: <%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getValue() * e.getKey().getPrice()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
                            </p>
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
    <!--                completed-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : shippedOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="selling-p status active-status">Hoàn thành</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div"></div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name editable"><%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu: <%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p">Số lượng: <%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getKey().getPrice() * e.getValue()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
                            </p>
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

    <!--                cancel-request-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : cancelRequestOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="cancel-request status active-status">Yêu cầu hủy</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <a href="/ChangeStatusOrderServlet?id=<%=o.getId()%>&status=5"><p>Chấp nhận hủy</p></a>
                            </div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name editable"><%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu: <%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p">Số lượng: <%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getValue() * e.getKey().getPrice()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
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

    <!--                canceled-order-->
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                        </th>
                        <th>Mã đơn hàng</th>
                        <th>Người đặt</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (Order o : cancelledOrder) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                            </div>
                        </td>
                        <td class="order-id-col">
                            <div class="order-id-div">
                                <p class="order-id">
                                    <span class="id-span"><%=o.getId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="user-name-div">
                                <p class="user-name"><%=o.getUserName()%>
                                </p>
                                <p class="user-id id-text">
                                    ID: <span class="id-span"><%=o.getUserId()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="unit-price-col">
                            <div class="unit-price-block">
                                <p class="product-unit-price editable" disabled>
                                    <%=o.getAmount()%><span><u>đ</u></span>
                                </p>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=o.getOrderDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="delete-p status active-status">Đã hủy</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div"></div>
                        </td>
                    </tr>
                    <%for (Map.Entry<Product, Integer> e : o.getListPd().entrySet()) {%>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col" colspan="2">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=e.getKey().getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="product-name editable"><%=e.getKey().getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=e.getKey().getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type">Màu: <%=e.getKey().getOptionName()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-quantity-col">
                            <div class="product-quantity-div">
                                <p class="quantity-p">Số lượng: <%=e.getValue()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-price-col">
                            <div class="product-price-div">
                                <p class="product-price"><%=e.getValue() * e.getKey().getPrice()%><u>đ</u>
                                </p>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="5">
                            <p class="quantity-typeof-product">
                                Tổng <span class="quantity-type"><%=o.getListPd().size()%></span> mặt hàng
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

