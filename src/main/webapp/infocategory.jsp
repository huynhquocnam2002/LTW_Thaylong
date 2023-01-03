<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.DAO.CategoryDAO" %>
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


    <script src="./js/ckeditor/ckeditor.js"></script>
</head>
<body>
<%Category category = CategoryDAO.getCategory(request.getParameter("id"));%>
<jsp:include page="admin/header.jsp"/>

<section id="admin-content" class="section">
    <div class="container" style="position: relative;">
        <h1 class="tab-name" style=" overflow: hidden; position: absolute; left: 100px;top:0px; z-index: 999;  white-space: nowrap;
            overflow: hidden; color:var(--black4)">Sửa thông tin danh mục</h1>
        <div id="rightContainer">
            <div class="right-tab add-new-category add-tab">
                <div class="right-tab-container" style="margin-top: 0">
                    <form action="/InfoCategoryServlet" method="post" enctype="multipart/form-data" style="margin-top: 0 !important;padding-bottom: 40px">
                        <input type="hidden" name="id" value="<%=category.getId()%>">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-category-name">Tên danh mục:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text" value="<%=category.getName()%>"
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
                                        <option value="-1" class="new-category-status-option" <%=category.getStatus()==-1?"selected":""%>>
                                            Đã ẩn
                                        </option>
                                        <option value="1"
                                                class="new-category-status-option"
                                                <%=category.getStatus()==1?"selected":""%>>
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
                                    <img src="<%=category.getImg()%>" id="img-demo" style="width: 200px; height: auto" alt="">
                                    <input
                                            type="file" value="<%=category.getImg()%>"
                                            name="img"
                                            id="new-category-imgs" accept="image/*"
                                            class="new-product-detail-input input-field"
                                    />
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

    let image_input = document.querySelector('#new-category-imgs')
    let image_demo = document.querySelector('#img-demo')
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
</script>

</body>


</html>
