$(function () {
    //đổi tab admin---------------------------------------------------
    function changeTab(activeTab, arr) {
        for (const i of arr) {
            $(i).hide()
            if (i == activeTab) $(i).show()
        }
    }
    const voucherTab = ["#tabContent .container.1", "#tabContent .container.2", "#tabContent .container.3"]
    const voucherTabContent = ["#tab1", "#tab2", "#tab3"]
    const addButtons = ['#addProduct', '#addOrder', '#addUser']
    $("#tabContent .container.1").show()
    $("#tabContent .container.2").hide()
    $("#tabContent .container.3").hide()
    $('#tab1').click(function () {
        if (editMode) $("#edit_start").click()
        changeTab("#tabContent .container.1", voucherTab)
        changeTab('#addProduct', addButtons)
        activeTab("#tab1", voucherTabContent)
    })
    $('#tab2').click(function () {
        if (editMode) $("#edit_start").click()
        changeTab("#tabContent .container.2", voucherTab)
        changeTab('#addOrder', addButtons)
        activeTab("#tab2", voucherTabContent)
    })
    $('#tab3').click(function () {
        if (editMode) $("#edit_start").click()
        changeTab("#tabContent .container.3", voucherTab)
        changeTab('#addUser', addButtons)
        activeTab("#tab3", voucherTabContent)
    })
    function activeTab(activeTab, arr) {
        for (const i of arr) {
            let e = document.querySelector(i)
            e.className = e.className.replace('active', '').trim()
            if (i == activeTab) e.className = e.className.concat(' active')
        }
    }

    //xoá sản phẩm----------------------------------------------------------
    var products = document.querySelectorAll(".remove__cart-item")
    function deleteProduct(id) {
        if (products[id].parentElement.parentElement.className = "newww")
            if (addNewProduct) addNewProduct = false
            else if (addNewOrder) addNewOrder = false
            else addNewUser = false
        products[id].parentElement.parentElement.style.display = "none"
    }
    function addProductID() {
        products = document.querySelectorAll(".remove__cart-item")
        let count = 0;
        for (let i of products) {
            i.id = "product" + count
            count++
        }
    }
    function addEventDelete() {
        addProductID()
        for (let i = 0; i < products.length; i++) {
            $('#' + products[i].id).click(function () {
                deleteProduct(i)
                updateValue()
            })
        }
    }
    addEventDelete()
    //thêm sản phẩm------------------------------------------------------------
    var product
    function addProductString() {
        product = `<tr class="newww">
    <td class="product__thumbnail">
        <a href="#">
            <img src="../phone_nam/images/addImage.png" alt=""
                class="imageProduct">
            <input type="file"
                value="http://127.0.0.1:5500/addImage.png"
                accept="images/*" class="fileIp" id="file">
        </a>
    </td>
    <td class="product__name" style="width: 21.8%;">
        <a href="#"> <input type="text" min="1" value=""
                class="input_edit name add" placeholder="Tên sản phẩm" required ></a>
        <br><br>
        <input type="text" min="1" value="" placeholder="Phiên bản" class="input_edit color add"
            required >
        <br><br>
        <Small>`+ makeid(8) + `</Small>
    </td>
    <td class="product_brand">
        <input type="text" min="1" value="" placeholder="Thương hiệu" required class="input_edit brand add"
            >
    </td>
    <td class="product_type">
        <input type="text" min="1" value="" required placeholder="Loại sản phẩm"
            class="input_edit type add" >
    </td>
    <td class="product__price">
        <div class="price">
            <span class="new__price"> <input type="text" min="1"
                     required placeholder="Giá (VND)" class="input_edit pricee add"
                    ></span>
        </div>
    </td>
    <td class="product__quantity">
        <div class="input-counter">
            <div>
                <span class="minus-btn">
                    <svg>
                        <use xlink:href="./images/sprite.svg#icon-minus"></use>
                    </svg>
                </span>
                <input type="number" min="1"
                    class="counter-btn add" placeholder="SL" required >
                <span class="plus-btn">
                    <svg>
                        <use xlink:href="./images/sprite.svg#icon-plus"></use>
                    </svg>
                </span>
            </div>
        </div>
    </td>
    <td class="product__subtotal">
        <a href="#" class="submitAdd" id="submitAddProduct">Ok</a>
        <a href="#" class="remove__cart-item">
            <svg>
                <use xlink:href="./images/sprite.svg#icon-trash"></use>
            </svg>
        </a>
    </td>
</tr>`}
    var addNewProduct = false
    var bodyProducts = products[0].parentElement.parentElement.parentElement
    const addProductBtn = document.querySelector("#addProduct a")
    function makeid(length) {
        var result = '';
        var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        var charactersLength = characters.length;
        for (var i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() *
                charactersLength));
        }
        return result;
    }

    $('#addProduct').click(function () {
        if (!addNewProduct) {
            addNewProduct = true
            addProductString()
            bodyProducts.innerHTML = product.concat(bodyProducts.innerHTML)
            addEventDelete()
            updateValue()
            document.getElementById("submitAddProduct").onclick = function () {
                let neww = document.querySelector('.newww')
                neww.className = ""
                let name = document.querySelector('.input_edit.name.add')
                name.className = "input_edit name"
                let color = document.querySelector(".input_edit.color.add")
                color.className = "input_edit color"
                let brand = document.querySelector('.input_edit.brand.add')
                brand.className = "input_edit brand"
                let type = document.querySelector('.input_edit.type.add')
                type.className = "input_edit type"
                let pricee = document.querySelector('.input_edit.pricee.add')
                pricee.className = "input_edit pricee"
                let count = document.querySelector('.counter-btn.add')
                count.className = "counter-btn"
                document.getElementById("submitAddProduct").style.display = "none"
                endEdit()
                addNewProduct = false
            }
        }

    })
    //thêm đơn hàng-------------------------------------------------------------------------
    const addOrderBT = document.querySelector('#addOrder')
    const bodyOrder = document.querySelector('#bodyOrder')
    var addNewOrder = false
    var order
    function addOrderString() {
        order = `<tr>
        <td class="orderID">
            <p>`+ makeid(10) + `</p>
        </td>
        <td class="userID">
        <a href="#"> <input type="text" placeholder="Mã người dùng"
        class="input_edit userId add" required ></a>
        </td>
        <td class="product__name" style="width: 20%;">
            <a href="#"> <input type="text" placeholder="Tên sản phẩm"
                    class="input_edit name add" required ></a>
            <br><br>
            <input type="text" min="1" placeholder="Phiên bản" class="input_edit color add"
                required >
            <br><br>
            <input type="text" placeholder="Mã sản phẩm" class="input_edit productID add"
                        required >
        </td>
        <td class="timeOrder">
            <input type="text" min="1" placeholder="Thời gian ra đơn" required class="input_edit time add"
                >
        </td>
        <td class="shipPlace" style="width: 20%;">
            <p></p>
            <input type="text" class="input_edit ship add" placeholder="Nơi giao hàng" >
        </td>
        <td class="product__quantity">
            <div class="input-counter">
                <div>
                    <span class="minus-btn">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-minus"></use>
                        </svg>
                    </span>
                    <input type="number" min="1" value="1"
                        class="counter-btn add" required >
                    <span class="plus-btn">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-plus"></use>
                        </svg>
                    </span>
                </div>
            </div>
        </td>
        <td class="product__price">
            <div class="price">
                <span class="new__price"> <input type="text" min="1"
                placeholder="Giá tiền (VND)" required class="input_edit pricee add"></span>
            </div>
        </td>
        <td class="product__subtotal">
        <a href="#" class="submitAdd" id="submitAddOrder">Ok</a>
        <br><br>
            <a href="#" class="remove__cart-item">
                <svg>
                    <use xlink:href="./images/sprite.svg#icon-trash"></use>
                </svg>
            </a>
        </td>
    </tr>`
    }
    addOrderBT.onclick = function () {
        if (!addNewOrder) {
            addNewOrder = true
            addOrderString()
            bodyOrder.innerHTML = order.concat(bodyOrder.innerHTML)
            addEventDelete()
            updateValue()
            startEditShipPlace()
            document.getElementById("submitAddOrder").onclick = function () {
                let userid = document.querySelector('.input_edit.userId.add')
                userid.className = "input_edit userId"
                let name = document.querySelector('.input_edit.name.add')
                name.className = "input_edit name"
                let color = document.querySelector(".input_edit.color.add")
                color.className = "input_edit color"
                let productid = document.querySelector('.input_edit.productID.add')
                productid.className = "input_edit productID"
                let time = document.querySelector('.input_edit.time.add')
                time.className = "input_edit time"
                let ship = document.querySelector('.input_edit.ship.add')
                ship.className = "input_edit ship"
                let pricee = document.querySelector('.input_edit.pricee.add')
                pricee.className = "input_edit pricee"
                let count = document.querySelector('.counter-btn.add')
                count.className = "counter-btn"
                document.getElementById("submitAddOrder").style.display = "none"
                document.querySelector('.container.b .product__subtotal').innerHTML = document.querySelector('.container.b .product__subtotal').innerHTML.replace("<br><br>", "")
                updateValue()
                addEventDelete()
                endEditShipPlace()
                endEdit()
                addNewOrder = false
            }
        }
    }
    //thêm user---------------------------------------------------------------------
    const addUserBT = document.querySelector('#addUser')
    const bodyUser = document.querySelector('#bodyUser')
    var addNewUser = false
    var user = `<tr>
    <td class="userID">
    <input type="text" placeholder="Mã đăng nhập" class="input_edit userID add"
    required >
    </td>
    <td class="password">
        <a href="#"> <input type="text" placeholder="Mật khẩu" class="input_edit pass add"
                required ></a>
    </td>
    <td class="create_date">
        <a href="#"> <input type="date" placeholder="Ngày tạo"
                class="input_edit datecr add" required ></a>
    </td>
    <td class="userName">
        <input type="text" placeholder="Tên khách hàng" required class="input_edit name add"
            >
    </td>
    <td class="sex">
        <select name="sex" class="input_edit sex add" >
            <option value="Nam">Nam</option>
            <option value="Nữ">Nữ</option>
            <option value="Khác">Khác</option>
        </select>
    </td>
    <td class="birthday">
        <input type="date" class="input_edit birthday add"
            required >
    </td>
    <td class="phoneNumber">
        <input type="tel" placeholder="Số điện thoại" pattern="[0]{1}[0-9]{9}" required
            class="input_edit phoneNum add" >
            
    </td>
    <td class="product__subtotal">
    <a href="#" class="submitAdd" id="submitAddUser">Ok</a>
    <a href="#" class="remove__cart-item">
        <svg>
            <use xlink:href="./images/sprite.svg#icon-trash"></use>
        </svg>
    </a>
</td>
</tr>`
    addUserBT.onclick = function () {
        if (!addNewUser) {
            addNewUser = true
            bodyUser.innerHTML = user.concat(bodyUser.innerHTML)
            addEventDelete()
            updateValue()
            document.getElementById("submitAddUser").onclick = function () {
                $('#checkSubmit').click()
                let userid = document.querySelector('.input_edit.userID.add')
                userid.className = "input_edit userID"
                let name = document.querySelector('.input_edit.pass.add')
                name.className = "input_edit pass"
                let color = document.querySelector(".input_edit.datecr.add")
                color.className = "input_edit datecr"
                let productid = document.querySelector('.input_edit.name.add')
                productid.className = "input_edit name"
                let time = document.querySelector('.input_edit.sex.add')
                time.className = "input_edit sex"
                let ship = document.querySelector('.input_edit.birthday.add')
                ship.className = "input_edit birthday"
                let pricee = document.querySelector('.input_edit.phoneNum.add')
                pricee.className = "input_edit phoneNum"
                document.getElementById("submitAddUser").style.display = "none"
                endEdit()
                addNewUser = false
            }
        }
    }
    //edit sản phẩm-------------------------------------------------------------------------
    function updateValue() {
        arr_input = document.querySelectorAll("#tabContent input")
        arr_imgProducts = document.querySelectorAll(".imageProduct")
        arr_fileBT = document.querySelectorAll('.fileIp')
        arr_minusBT = document.querySelectorAll('.minus-btn')
        arr_plusBT = document.querySelectorAll('.plus-btn')
        arr_quantity = document.querySelectorAll('.counter-btn')
        arr_shipPlaceP = document.querySelectorAll('.shipPlace p')
        arr_shipPlaceIP = document.querySelectorAll('.shipPlace .input_edit.ship')
        arr_price_container2 = document.querySelectorAll('.container.b .input_edit.pricee')
        arr_count_container2 = document.querySelectorAll('.container.b .counter-btn')
        unitPrice()
        chooseImg()
        minus()
        plus()
    }
    var editMode = false
    var editBtn = document.querySelector("#edit_start a")
    var arr_input = document.querySelectorAll("#tabContent .input_edit")
    var arr_imgProducts = document.querySelectorAll(".imageProduct")
    var arr_fileBT = document.querySelectorAll('.fileIp')
    var arr_minusBT = document.querySelectorAll('.minus-btn')
    var arr_plusBT = document.querySelectorAll('.plus-btn')
    var arr_quantity = document.querySelectorAll('.counter-btn')
    var arr_shipPlaceP = document.querySelectorAll('.shipPlace p')
    var arr_shipPlaceIP = document.querySelectorAll('.shipPlace .input_edit.ship')
    var arr_price_container2 = document.querySelectorAll('.container.b .input_edit.pricee')
    var arr_count_container2 = document.querySelectorAll('.container.b .counter-btn')
    var arr_unitPrice = []

    function chooseImg() {
        for (let i = 0; i < arr_imgProducts.length; i++) {
            arr_imgProducts[i].onclick = function () {
                console.log(i)
                if (addNewProduct && i == 0) {
                    console.log(1)
                    arr_fileBT[i].click()
                }
                else if (editMode) {
                    arr_fileBT[i].click()
                }
                arr_fileBT[i].onchange = function () {
                    changeImgProduct(arr_imgProducts[i], arr_fileBT[i])
                }
            }
        }
    }
    function changeImgProduct(img, inp) {
        let file = inp.files[0]
        img.src = URL.createObjectURL(file)
    }
    function startEdit() {
        for (let i of arr_input) {
            i.disabled = false
        }
        editBtn.innerHTML = "LƯU CHỈNH SỬA"
        editBtn.className = "true"
    }
    function endEdit() {
        for (let i of arr_input) {
            i.disabled = true
        }
        editBtn.innerHTML = "CHỈNH SỬA"
        editBtn.className = ""
    }
    function minus() {
        for (let i = 0; i < arr_minusBT.length; i++) {
            arr_minusBT[i].onclick = function () {
                if (editMode && parseInt(arr_quantity[i].value) > 0) {
                    arr_quantity[i].value = parseInt(arr_quantity[i].value) - 1
                    for (let j = 0; j < arr_count_container2.length; j++)
                        if (arr_quantity[i] == arr_count_container2[j])
                            arr_price_container2[j].value = intToString(arr_count_container2[j].value * arr_unitPrice[j])
                }
            }
        }
    }
    function plus() {
        for (let i = 0; i < arr_plusBT.length; i++) {
            arr_plusBT[i].onclick = function () {
                if (editMode) {
                    if (!isNaN(arr_quantity[i].value))
                        arr_quantity[i].value = parseInt(arr_quantity[i].value) + 1
                    else arr_quantity[i].value = 1
                    for (let j = 0; j < arr_count_container2.length; j++)
                        if (arr_quantity[i] == arr_count_container2[j])
                            arr_price_container2[j].value = intToString(arr_count_container2[j].value * arr_unitPrice[j])
                }
            }
        }
    }
    function startEditQuantity() {
        for (let i = 0; i < arr_minusBT.length; i++) {
            arr_quantity[i].style.width = "4rem"
            arr_quantity[i].style.border = "1px solid #f1f1f1"
            arr_minusBT[i].style.display = "inline-block"
            arr_plusBT[i].style.display = "inline-block"
        }
    }
    function endEditQuantity() {
        for (let i = 0; i < arr_minusBT.length; i++) {
            arr_minusBT[i].style.display = "none"
            arr_plusBT[i].style.display = "none"
            arr_quantity[i].style.border = "none"
            arr_quantity[i].style.width = "50%"
        }
    }
    function startEditShipPlace() {
        for (let i = 0; i < arr_shipPlaceIP.length; i++) {
            arr_shipPlaceP[i].style.display = "none"
            arr_shipPlaceIP[i].style.display = "inline-block"
        }
    }
    function endEditShipPlace() {
        let pValue
        for (let i = 0; i < arr_shipPlaceIP.length; i++) {
            pValue = arr_shipPlaceIP[i].value
            arr_shipPlaceIP[i].style.display = "none"
            arr_shipPlaceP[i].innerHTML = pValue
            arr_shipPlaceP[i].style.display = "block"
        }
    }
    $("#edit_start").click(function () {
        editMode = !editMode
        if (editMode) {
            startEditQuantity()
            startEditShipPlace()
            startEdit()
        }
        else {
            updateValue()
            endEditQuantity()
            endEditShipPlace()
            endEdit()
        }
    })
    chooseImg()
    minus()
    plus()

    //Hàm tính tiền-----------------------------------------------------
    function stringToInt(str) {
        let temp = str.substring(0, str.length - 4)
        temp = temp.replaceAll(".", "")
        return parseInt(temp)
    }
    function intToString(int) {
        let temp = int.toString();
        let count = 0
        let res = ""
        for (let i = temp.length - 1; i >= 0; i--) {
            if (count % 3 == 0 && count != 0) res = "." + res
            res = temp[i] + res
            count++
        }
        return res + " VND"
    }

    unitPrice()
    price()
    function unitPrice() {
        for (let i = 0; i < arr_price_container2.length; i++) {
            arr_unitPrice[i] = stringToInt(arr_price_container2[i].value) / arr_count_container2[i].value
        }
    }
    function price() {
        for (let i = 0; i < arr_price_container2.length; i++) {
            arr_count_container2[i].onchange = function () {
                arr_price_container2[i].value = intToString(arr_count_container2[i].value * arr_unitPrice[i])
            }
        }
    }




});