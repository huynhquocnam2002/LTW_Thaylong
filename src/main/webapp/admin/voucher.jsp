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
<!--            manage voucher-->
<%
  List<Voucher> vouchers= VoucherDAO.getListVoucher();
  List<Voucher> activedV= VoucherDAO.getListVoucherByStatus(vouchers, 1);
  List<Voucher> unactivedV= VoucherDAO.getListVoucherByStatus(vouchers, 0);
  List<Voucher> lockedV= VoucherDAO.getListVoucherByStatus(vouchers, -1);%>
<div class="right-tab manage-vouchers">
  <h1 class="tab-name">Quản lí mã giảm giá</h1>
  <div class="flex flex-manage-orders">
    <div class="flex-item active-tab">
      <p>Tất cả<span class="quantity">0</span></p>
    </div>
    <div class="flex-item">
      <p>Đã kích hoạt<span class="quantity">0</span></p>
    </div>
    <div class="flex-item">
      <p>Chưa kích hoạt<span class="quantity">0</span></p>
    </div>
    <div class="flex-item">
      <p>Đã khóa<span class="quantity">0</span></p>
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
  <!--                all-voucher-->
  <div class="manage-all-orders-tab manage-vouchers-flex-tab active-voucher-tab">
    <div class="table-manage-order-div">
      <div class="table-row-div table-row-div-head-table">
        <table class="manage-order-table-head">
          <tr class="table-row head-table">
            <th>
              <input type="checkbox" name="check_all" class="check-all"/>
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
        <%for (Voucher v: vouchers){%>
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
                  <img src="<%=v.getImg()%>" alt=""/>
                </div>
                <div class="container-info">
                  <div class="name-block">
                    <p><%=v.getName()%></p>
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
              <div class="update-date-div">
                <p><%=v.getStartDate()%></p>
              </div>
            </td>
            <td class="update-date-col">
              <div class="update-date-div">
                <p><%=v.getEndDate()%></p>
              </div>
            </td>
            <td class="product-status-col">
              <div class="product-status-div">
                <%if (v.getStatus()==-1){%>
                <p class="delete-p status active-status">Đã xóa</p>
                <%} else {%>
                <p class="delete-p status">Đã xóa</p>
                <%}%>
                <%if (v.getStatus()==0){%>
                <p class="stop-selling-p status active-status">Chưa kích hoạt</p>
                <%} else {%>
                <p class="stop-selling-p status">Chưa kích hoạt</p>
                <%}%>
                <%if (v.getStatus()==1){%>
                <p class="selling-p status active-status">Đã kích hoạt</p>
                <%} else {%>
                <p class="selling-p status">Đã kích hoạt</p>
                <%}%>
              </div>
            </td>
            <td class="proceed">
              <div class="proceed-div">
                <p class="edit">Chỉnh sửa</p>
                <% if (v.getStatus()!=-1){%>
                <p class="delete">Xóa</p>
                <%}%>
                <% if (v.getStatus()==1){%>
                <p class="unlock">Hủy kích hoạt</p>
                <%}%>
              </div>
            </td>
          </tr>
          <tr class="row-table row-table-child">
            <td></td>
            <td class="product-name-col" colspan="6">
              <div class="product-name-container">
                <p class="condition-voucher">
                  <b>Điều kiện:</b> <%=v.getDescription()%>
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
              <input
                      type="checkbox"
                      name="check_all"
                      class="check-all"
              />
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
        <%for (Voucher v: activedV){%>
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
                  <img src="<%=v.getImg()%>" alt=""/>
                </div>
                <div class="container-info">
                  <div class="name-block">
                    <p><%=v.getName()%></p>
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
              <div class="update-date-div">
                <p><%=v.getStartDate()%></p>
              </div>
            </td>
            <td class="update-date-col">
              <div class="update-date-div">
                <p><%=v.getEndDate()%></p>
              </div>
            </td>
            <td class="product-status-col">
              <div class="product-status-div">
                <p class="selling-p status active-status">Đã kích hoạt</p>
              </div>
            </td>
            <td class="proceed">
              <div class="proceed-div">
                <p class="edit">Chỉnh sửa</p>
                <p class="delete">Xóa</p>
                <p class="unlock">Hủy kích hoạt</p>
              </div>
            </td>
          </tr>
          <tr class="row-table row-table-child">
            <td></td>
            <td class="product-name-col" colspan="6">
              <div class="product-name-container">
                <p class="condition-voucher">
                  <b>Điều kiện:</b> <%=v.getDescription()%>
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
              <input
                      type="checkbox"
                      name="check_all"
                      class="check-all"
              />
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
        <%for (Voucher v: unactivedV){%>
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
                  <img src="<%=v.getImg()%>" alt=""/>
                </div>
                <div class="container-info">
                  <div class="name-block">
                    <p><%=v.getName()%></p>
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
              <div class="update-date-div">
                <p><%=v.getStartDate()%></p>
              </div>
            </td>
            <td class="update-date-col">
              <div class="update-date-div">
                <p><%=v.getEndDate()%></p>
              </div>
            </td>
            <td class="product-status-col">
              <div class="product-status-div">
                <p class="stop-selling-p status active-status">Chưa kích hoạt</p>
              </div>
            </td>
            <td class="proceed">
              <div class="proceed-div">
                <p class="edit">Chỉnh sửa</p>
                <p class="delete">Xóa</p>
              </div>
            </td>
          </tr>
          <tr class="row-table row-table-child">
            <td></td>
            <td class="product-name-col" colspan="6">
              <div class="product-name-container">
                <p class="condition-voucher">
                  <b>Điều kiện:</b> <%=v.getDescription()%>
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
  <!--                locked-voucher-->
  <div class="manage-all-orders-tab manage-vouchers-flex-tab">
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
        <%for (Voucher v: lockedV){%>
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
                  <img src="<%=v.getImg()%>" alt=""/>
                </div>
                <div class="container-info">
                  <div class="name-block">
                    <p><%=v.getName()%></p>
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
              <div class="update-date-div">
                <p><%=v.getStartDate()%></p>
              </div>
            </td>
            <td class="update-date-col">
              <div class="update-date-div">
                <p><%=v.getEndDate()%></p>
              </div>
            </td>
            <td class="product-status-col">
              <div class="product-status-div">
                <p class="delete-p status active-status">Đã xóa</p>
              </div>
            </td>
            <td class="proceed">
              <div class="proceed-div">
              </div>
            </td>
          </tr>
          <tr class="row-table row-table-child">
            <td></td>
            <td class="product-name-col" colspan="6">
              <div class="product-name-container">
                <p class="condition-voucher">
                  <b>Điều kiện:</b> <%=v.getDescription()%>
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
<!--            add new voucher-->
<div class="right-tab add-new-product add-tab">
  <h1 class="tab-name">Thêm mã giảm giá mới</h1>
  <div class="right-tab-container">
    <form action="" onsubmit="return false">
      <table class="add-new-product-table">
        <tr class="table-row">
          <td class="label-col">
            <label for="new-voucher-name">Tên mã giảm giá:</label>
          </td>
          <td class="input-col">
            <input
                    type="text"
                    name="name"
                    id="new-voucher-name"
                    class="new-product-name-input input-field"
            />
          </td>
        </tr>
        <tr class="table-row">
          <td class="label-col">
            <label for="new-discount">Giá trị giảm:</label>
          </td>
          <td class="input-col">
            <input
                    type="text"
                    name="unitPrice"
                    id="new-discount"
                    class="new-product-unit-price-input input-field"
            />
          </td>
        </tr>
        <tr class="table-row">
          <td class="label-col">
            <label for="new-start-date">Ngày bắt đầu:</label>
          </td>
          <td class="input-col">
            <input
                    type="date"
                    name="warrantyTime"
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
                    type="date"
                    name="briefDescription"
                    id="new-end-date"
                    class="new-product-brief-description-input input-field"
            />
          </td>
        </tr>
        <tr class="table-row">
          <td class="label-col">
            <label for="new-voucher-status"
            >Trạng thái voucher:</label
            >
          </td>
          <td class="input-col">
            <select
                    name="status"
                    id="new-voucher-status"
                    class="new-product-status-input input-field"
            >
              <option
                      value="0"
                      class="new-voucher-status-option"
                      selected
              >
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
            <label for="new-voucher-condition">Điều kiện:</label>
          </td>
          <td class="input-col">
                      <textarea
                              type="text"
                              name="producer"
                              id="new-voucher-condition"
                              class="new-product-detail-input input-field"
                              rows="4"
                      ></textarea>
          </td>
        </tr>
        <tr class="table-row">
          <td class="label-col">
            <label for="new-voucher-imgs">Thêm hình ảnh:</label>
          </td>
          <td class="input-col">
            <input
                    type="file"
                    name="producer"
                    id="new-voucher-imgs"
                    class="new-product-detail-input input-field"
            />
          </td>
        </tr>
        <tr class="table-row">
          <td class="label-col"></td>
          <td class="input-col">
            <button class="cancel-button">Trở lại</button>
            <button class="confirm-button">Xác nhận</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
</div>

