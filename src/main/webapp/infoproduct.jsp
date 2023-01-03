<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.UserDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProductDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Producer" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.ProducerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Product Info</title>
    <!-- font awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer"/>
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./style/cssheader.css"/>
    <link rel="stylesheet" href="./css/option.css"/>


    <script src="./js/ckeditor/ckeditor.js"></script>
</head>
<body>
<%
    User ad = UserDAO.getUserBySessionID((String) request.getSession().getAttribute("user"));
    Product product = ProductDAO.getProductById(request.getParameter("id"));
%>
<jsp:include page="admin/header.jsp"/>
<section id="admin-content" class="section">
    <div class="container" style="position: relative;">
        <h1 class="tab-name" style=" overflow: hidden; position: absolute; left: 100px;top:0px; z-index: 999;  white-space: nowrap;
            overflow: hidden; color:var(--black4)">Sửa đổi sản phẩm</h1>
        <div id="rightContainer" style="width: 1200px">
            <div class="right-tab add-new-product add-tab" style="width: 100%">

                <div class="right-tab-container" style="position: relative; width: 100%; margin-top: 0">
                    <form action="/ModifyProductServlet" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                        <table class="add-new-product-table">

                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-name">Tên sản phẩm:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text"
                                            name="name"
                                            id="new-product-name"
                                            class="new-product-name-input input-field"
                                            value="<%=product.getName()%>"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-unit-price">Đơn giá:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="number"
                                            name="unitPrice"
                                            id="new-product-unit-price"
                                            class="new-product-unit-price-input input-field"
                                            value="<%=product.getPrice()%>"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-brief-description">Bảo hành (tháng):</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="number" value="<%=product.getIns()%>"
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
                                            class="new-product-category-input input-field">
                                        <%
                                            System.out.println(product.getCategory());
                                            List<Category> categories = CategoryDAO.getCategory();
                                            for (Category c : categories) {%>
                                        <option value="<%=c.getId()%>" class="new-product-category-option" <%=c.getId().equalsIgnoreCase(product.getCategory())?"selected":""%>>
                                            <%=c.getName()%>
                                        </option>
                                        <%}%>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-producer">Nhà sản xuất:</label>
                                </td>
                                <td class="input-col">
                                    <select
                                            name="producer"
                                            id="new-product-producer"
                                            class="new-product-producer-input input-field">
                                        <%
                                            List<Producer> producers = ProducerDAO.getProducers();
                                            for (Producer p : producers) {
                                        %>
                                        <option value="<%=p.getId()%>" class="new-product-producer-option" <%=p.getId().equalsIgnoreCase(product.getID_producer())?"selected":""%>>
                                            <%=p.getName()%>
                                        </option>
                                        <%}%>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-status"
                                    >Trạng thái sản phẩm:</label
                                    >
                                </td>
                                <td class="input-col">
                                    <select
                                            name="status"
                                            id="new-product-status"
                                            class="new-product-status-input input-field">
                                        <option value="-1" class="new-product-status-option" <%=product.getStatus()==-1?"selected":""%>>
                                            Đã xóa
                                        </option>
                                        <option
                                                value="0"
                                                class="new-product-status-option"
                                                <%=product.getStatus()==0?"selected":""%>
                                        >
                                            Sắp mở bán
                                        </option>
                                        <option value="1" class="new-product-status-option" <%=product.getStatus()==1?"selected":""%>>
                                            Đang bán
                                        </option>
                                        <option value="2" class="new-product-status-option" <%=product.getStatus()==2?"selected":""%>>
                                            Dừng kinh doanh
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-quantity">Số lượng: </label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="number" name="quantity" value="<%=product.getQuantity()%>"
                                            id="new-product-quantity" class="new-product-quantity-input input-field"/>
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-tag">Tag: </label>
                                </td>
                                <td class="input-col">
                                    <select name="tag" id="new-product-tag" class="input-field">
                                        <option value="" <%=product.getTag().equalsIgnoreCase("")?"selected":""%>>None</option>
                                        <option value="hot" <%=product.getTag().equalsIgnoreCase("hot")?"selected":""%>>Hot</option>
                                        <option value="new" <%=product.getTag().equalsIgnoreCase("new")?"selected":""%>>New</option>
                                        <option value="salerun" <%=product.getTag().equalsIgnoreCase("salerun")?"selected":""%>>Bán chạy</option>
                                        <option value="flashsale" <%=product.getTag().equalsIgnoreCase("flashsale")?"selected":""%>>Flash sale</option>
                                    </select>
                                </td>
                            </tr>


                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-imgs">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <img src="<%=product.getImg()%>" alt=""
                                         style="width: 90%; height: auto" id="image-demo">
                                    <input
                                            type="file"
                                            name="img"
                                            id="new-product-imgs"
                                            class="new-product-detail-input input-field"
                                            accept="image/*"
                                            value="<%=product.getImg()%>"
                                    />
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td class="label-col" style="text-align: left">
                                    <label for="new-product-detail">Mô tả chi tiết:</label>
                                </td>
                                <td class="input-col">
                                </td>
                            </tr>
                            <tr class="table-row">
                                <td colspan="2"><textarea name="details" id="new-product-detail" class="new-product-detail-input input-field ckeditor" rows="4"><%=product.getDetail()%></textarea>
                                </td>
                            </tr>

                            <tr class="table-row">
                                <td class="label-col"></td>
                                <td class="input-col">
                                    <button onclick="history.back()" class="cancel-button">Trở lại</button>
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
    CKEDITOR.replace('new-product-detail')
    let image_input = document.querySelector('#new-product-imgs')
    let image_demo = document.querySelector('#image-demo')
    image_input.onchange = function () {
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

    let form=document.querySelector("form")
    form.onsubmit=function (e) {
        if (e.submitter.classList.contains('cancel-button')) return false
        return true
    }
</script>
</body>
</html>
