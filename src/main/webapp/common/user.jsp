<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--            manage user-->
<div class="right-tab manage-users">
    <%List<User> users = UserDAO.getAllUser();%>
    <h1 class="tab-name">Quản lí tài khoản khách</h1>
    <div class="flex flex-manage-orders">
        <div class="flex-item active-tab">
            <p>Tất cả<span class="quantity"><%=users.size()%></span></p>
        </div>
        <div class="flex-item">
            <p>Đã kích hoạt<span class="quantity"><%=UserDAO.getNumUserByStatus(1)%></span></p>
        </div>
        <div class="flex-item">
            <p>Chưa kích hoạt<span class="quantity"><%=UserDAO.getNumUserByStatus(0)%></span></p>
        </div>
        <div class="flex-item">
            <p>Đã khóa<span class="quantity"><%=UserDAO.getNumUserByStatus(-1)%></span></p>
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
                    <option value="Ốp lưng" class="category-filter-option">
                        Ốp lưng
                    </option>
                    <option value="Sạc" class="category-filter-option">
                        Sạc
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 3
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 4
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 5
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 6
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 7
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 8
                    </option>
                    <option value="" class="category-filter-option">
                        danh mục 9
                    </option>
                </select>
                <select
                        name="other-filter"
                        class="other-filter-select filter-select"
                >
                    <option value="0" class="other-filter-option" selected>
                        Sắp xếp
                    </option>
                    <option value="decrease-price" class="other-filter-option">
                        Giá giảm dần
                    </option>
                    <option value="increase-price" class="other-filter-option">
                        Giá tăng dần
                    </option>
                    <option
                            value="decrease-quantity"
                            class="other-filter-option"
                    >
                        Số lượng giảm dần
                    </option>
                    <option
                            value="increase-quantity"
                            class="other-filter-option"
                    >
                        Số lượng tăng dần
                    </option>
                    <option value="" class="other-filter-option">
                        Lọc theo tao
                    </option>
                </select>
                <button class="reset-filter-button">Đặt lại</button>
            </div>
            <div class="manage-orders-tools-container">
                <p>Đã chọn: <span class="quantity">0</span></p>
                <button class="tool-button delete-button" disabled>
                    Hủy
                </button>
            </div>
        </div>
    </div>
    <!--                all-user-->
    <div class="manage-all-orders-tab manage-orders-flex-tab active-order-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                            <input type="checkbox" name="check_all" class="check-all"/>
                        </th>
                        <th>Khách hàng</th>
                        <th>Số ĐT</th>
                        <th>Ngày lập</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (User u : users) {%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                                <input type="checkbox" name="is-check" class="is-check"/>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=u.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="user-name"><%=u.getName()%>
                                        </p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=u.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="user-name-div">
                                <p class="phone-number-p">
                                    <span class="id-span"><%=u.getPhone()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=u.getAccountDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <%if (u.getStatus() == -1) {%>
                                <p class="delete-p status active-status">Đã khóa</p>
                                <%} else {%>
                                <p class="delete-p status">Đã khóa</p>
                                <%}%>
                                <%if (u.getStatus() == 0) {%>
                                <p class="stop-selling-p status active-status">Chưa kích hoạt</p>
                                <%} else {%>
                                <p class="stop-selling-p status">Chưa kích hoạt</p>
                                <%}%>
                                <%if (u.getStatus() == 1) {%>
                                <p class="selling-p status active-status">Đã kích hoạt</p>
                                <%} else {%>
                                <p class="selling-p status">Đã kích hoạt</p>
                                <%}%>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <%if (u.getStatus() == 0) {%>
                                <p class="unlock">Mở khóa</p>
                                <%} else {%>
                                <p class="lock">Khóa tài khoản</p>
                                <%}%>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <p class="user-email">
                                    <b>Email:</b> <%=u.getEmail()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><b>Giới tính:</b> <%=u.getGender()%></p>
                            </div>
                        </td>
                        <td class="product-quantity-col" colspan="2">
                            <div class="product-quantity-div">
                                <p class="quantity-p"><b>Ngày sinh:</b> <%=u.getBirthdayString()%></p>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="4">
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
    <!--                actived-user-->
    <%List<User> actived = UserDAO.getListUserByStatus(users, 1);%>
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                            <input type="checkbox" name="check_all" class="check-all"/>
                        </th>
                        <th>Khách hàng</th>
                        <th>Số ĐT</th>
                        <th>Ngày lập</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (User u: actived){%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                                <input type="checkbox" name="is-check" class="is-check"/>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=u.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="user-name"><%=u.getName()%></p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=u.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="user-name-div">
                                <p class="phone-number-p">
                                    <span class="id-span"><%=u.getPhone()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=u.getAccountDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="selling-p status active-status">
                                    Đã kích hoạt
                                </p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="lock">Khóa tài khoản</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <p class="user-email">
                                    <b>Email:</b> <%=u.getEmail()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><b>Giới tính:</b> <%=u.getGender()%></p>
                            </div>
                        </td>
                        <td class="product-quantity-col" colspan="2">
                            <div class="product-quantity-div">
                                <p class="quantity-p"><b>Ngày sinh:</b> <%=u.getBirthdayString()%></p>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="4">
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
    <!--                unactived-user-->
    <%List<User> unactived = UserDAO.getListUserByStatus(users, 0);%>
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                            <input type="checkbox" name="check_all" class="check-all"/>
                        </th>
                        <th>Khách hàng</th>
                        <th>Số ĐT</th>
                        <th>Ngày lập</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (User u: unactived){%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                                <input type="checkbox" name="is-check" class="is-check"/>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=u.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="user-name"><%=u.getName()%></p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=u.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="user-name-div">
                                <p class="phone-number-p">
                                    <span class="id-span"><%=u.getPhone()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=u.getAccountDate()%>
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
                                <p class="lock">Khóa tài khoản</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <p class="user-email">
                                    <b>Email:</b> <%=u.getEmail()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><b>Giới tính:</b> <%=u.getGender()%></p>
                            </div>
                        </td>
                        <td class="product-quantity-col" colspan="2">
                            <div class="product-quantity-div">
                                <p class="quantity-p"><b>Ngày sinh:</b> <%=u.getBirthdayString()%></p>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="4">
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
    <!--                locked-user-->
    <%List<User> locked = UserDAO.getListUserByStatus(users, -1);%>
    <div class="manage-all-orders-tab manage-orders-flex-tab">
        <div class="table-manage-order-div">
            <div class="table-row-div table-row-div-head-table">
                <table class="manage-order-table-head">
                    <tr class="table-row head-table">
                        <th>
                            <input
                                    type="checkbox"
                                    name="check_all"
                                    class="check-all"
                            />
                        </th>
                        <th>Khách hàng</th>
                        <th>Số ĐT</th>
                        <th>Ngày lập</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </table>
            </div>
            <div class="table-row-div table-row-div-order">
                <%for (User u: locked){%>
                <table class="manage-order-table">
                    <tr class="row-table row-table-main product-row">
                        <td>
                            <div class="id-check-product-div">
                                <input type="checkbox" name="is-check" class="is-check"/>
                            </div>
                        </td>
                        <td class="user-name-col">
                            <div class="product-name-container">
                                <div class="container-img">
                                    <img src="<%=u.getImg()%>" alt=""/>
                                </div>
                                <div class="container-info">
                                    <div class="name-block">
                                        <p class="user-name"><%=u.getName()%></p>
                                    </div>
                                    <div class="id-block">
                                        <p class="product-id">
                                            ID: <span class="id-span"><%=u.getId()%></span>
                                        </p>
                                        <i class="fa-regular fa-copy copy-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="number-phone-col">
                            <div class="user-name-div">
                                <p class="phone-number-p">
                                    <span class="id-span"><%=u.getPhone()%></span>
                                </p>
                                <i class="fa-regular fa-copy copy-icon"></i>
                            </div>
                        </td>
                        <td class="update-date-col">
                            <div class="update-date-div">
                                <p class="product-update-date">
                                    <%=u.getAccountDate()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-status-col">
                            <div class="product-status-div">
                                <p class="delete-p status active-status">Đã khóa</p>
                            </div>
                        </td>
                        <td class="proceed">
                            <div class="proceed-div">
                                <p class="unlock">Mở khóa</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row-table row-table-child">
                        <td></td>
                        <td class="product-name-col">
                            <div class="product-name-container">
                                <p class="user-email">
                                    <b>Email:</b> <%=u.getEmail()%>
                                </p>
                            </div>
                        </td>
                        <td class="product-type-col">
                            <div class="product-type-div">
                                <p class="product-type"><b>Giới tính:</b> <%=u.getGender()%></p>
                            </div>
                        </td>
                        <td class="product-quantity-col" colspan="2">
                            <div class="product-quantity-div">
                                <p class="quantity-p"><b>Ngày sinh:</b> <%=u.getBirthdayString()%></p>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="row-table row-table-end">
                        <td></td>
                        <td colspan="4">
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

