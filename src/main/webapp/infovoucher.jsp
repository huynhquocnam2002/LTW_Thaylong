<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProducerDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Producer" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.VoucherDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Voucher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- font awesome -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./style/cssheader.css"/>
    <link rel="stylesheet" href="./css/option.css"/>

</head>
<body>
<%Voucher voucher = VoucherDAO.getVoucher(request.getParameter("id"));%>
<jsp:include page="admin/header.jsp"/>

<section id="admin-content" class="section">
    <div class="container" style="position: relative;">
        <h1 class="tab-name" style=" overflow: hidden; position: absolute; left: 100px;top:0px; z-index: 999;  white-space: nowrap;
            overflow: hidden; color:var(--black4)">Sửa thông tin mã giảm giá</h1>
        <div id="rightContainer">
            <div class="right-tab add-new-product add-tab">
                <div class="right-tab-container">
                    <form action="/InfoVoucherServlet" method="post">
                        <input type="hidden" name="id" value="<%=voucher.getId()%>">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-voucher-name">Tên mã giảm giá:</label>
                                </td>
                                <td class="input-col">
                                    <input type="text" value="<%=voucher.getName()%>"
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
                                        <option value="1" <%=voucher.getType().equals("1")?"selected":""%>>Miễn phí vận chuyển</option>
                                        <option value="2" <%=voucher.getType().equals("2")?"selected":""%>>Giảm giá</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-discount">Giá trị giảm:</label>
                                </td>
                                <td class="input-col">
                                    <input type="number" value="<%=voucher.getDiscount()%>"
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
                                    <input type="number" value="<%=voucher.getMinPrice()%>"
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
                                            type="date" value="<%=voucher.getStartDate()%>"
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
                                            type="date" value="<%=voucher.getEndDate()%>"
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
                                                <%=voucher.getStatus()==0?"selected":""%>>
                                            Chưa kích hoạt
                                        </option>
                                        <option value="1" class="new-voucher-status-option" <%=voucher.getStatus()==1?"selected":""%>>
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
                              type="text"
                              name="description"
                              id="new-voucher-condition"
                              class="new-product-detail-input input-field"
                              rows="4"><%=voucher.getDescription()%></textarea>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button class="cancel-button" onclick="history.back()">Trở lại</button>
                                    <button class="confirm-button">Xác nhận</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    let form=document.querySelector("form")
    form.onsubmit=function (e) {
        if (e.submitter.classList.contains('cancel-button')) return false
        return true
    }
</script>

</body>


</html>
