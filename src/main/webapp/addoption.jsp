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

<jsp:include page="admin/header.jsp"/>

<section id="admin-content" class="section">
    <div class="container" style="position: relative;">
        <h1 class="tab-name" style=" overflow: hidden; position: absolute; left: 100px;top:0px; z-index: 999;  white-space: nowrap;
            overflow: hidden; color:var(--black4)">Thêm lựa chọn mới</h1>
        <div id="rightContainer">
            <div class="right-tab add-new-product add-tab">

                <div class="right-tab-container" style="position: relative">
                    <form action="/AddOptionServlet" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="idProduct" value="<%=request.getParameter("id")%>">
                        <table class="add-new-product-table">
                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-attributes">Thuộc tính:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="text" required
                                            name="attribute"
                                            id="new-product-attributes"
                                            class="new-product-unit-price-input input-field"
                                    />
                                </td>
                            </tr>

                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-unit-price">Đơn giá:</label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="number" required
                                            name="unitPrice"
                                            id="new-product-unit-price"
                                            class="new-product-unit-price-input input-field"
                                    />
                                </td>
                            </tr>

                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="new-product-quantity">Số lượng: </label>
                                </td>
                                <td class="input-col">
                                    <input
                                            type="number" required
                                            name="quantity"
                                            id="new-product-quantity"
                                            class="new-product-unit-price-input input-field"
                                    />
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
                                            name="status" required
                                            id="new-product-status"
                                            class="new-product-status-input input-field"
                                    >
                                        <option value="-1" class="new-product-status-option">
                                            Đã xóa
                                        </option>
                                        <option
                                                value="0"
                                                class="new-product-status-option"
                                                selected
                                        >
                                            Sắp mở bán
                                        </option>
                                        <option value="1" class="new-product-status-option">
                                            Đang bán
                                        </option>
                                        <option value="2" class="new-product-status-option">
                                            Dừng kinh doanh
                                        </option>
                                    </select>
                                </td>
                            </tr>


                            <tr class="table-row">
                                <td class="label-col">
                                    <label for="imageUploadInput">Thêm hình ảnh:</label>
                                </td>
                                <td class="input-col">
                                    <main>
                                        <div class="container imageUploadContainer"
                                             style="width:264px; flex-direction: column; float: left;">
                                            <div>
                                                <img src="img/default.jpg" alt="Ảnh xem trước" id="imagePreview"
                                                     style="display: none;width:200px;height: auto;border-radius: 0.3em;"/>
                                            </div>
                                            <div class="imageUpload">
                                                <input type="file" required id="imageUploadInput" name="img" accept="image/*" value=""/>
                                            </div>
                                        </div>
                                    </main>
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
    let form = document.querySelector('form')
    form.onsubmit = function (e) {
        if (e.submitter.classList.contains('cancel-button')) return false
        return true
    }

    let image_input = document.querySelector('#imageUploadInput')
    let image_demo = document.querySelector('#imagePreview')
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
