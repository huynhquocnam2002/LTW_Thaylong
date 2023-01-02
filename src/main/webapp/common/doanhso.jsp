<%@ page import="vn.edu.hcmuaf.fit.DAO.OrderDAO" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Minh Thuan
  Date: 31/12/2022
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--            manage turnover-->
<div class="right-tab manage-turnover">
    <h1 class="tab-name">Quản lí doanh số</h1>
    <!--                filter-div-->
    <div class="manage-orders-filter-container">
        <div class="filter-container">
            <div class="input-filter">
                <p class="total-order">
                    <b>Tổng số đơn hàng hoàn thành:</b> <%=OrderDAO.getNumCompletedOrders()%>
                </p>
                <p class="total-money">
                    <b>Tổng doanh thu:</b> <%=OrderDAO.getTurnover()%><u>đ</u>
                </p>
            </div>
        </div>
    </div>


</div>

