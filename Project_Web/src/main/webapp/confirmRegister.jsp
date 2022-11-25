<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="phone_nam/login.css"/>
    <!-- Font awesome CDN Link for icons -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <title>Confirm</title>
</head>

<body>
<!-- icon back -->
<div class="container">
    <a href="index.html">
        <img class="homelogin" src="phone_nam/icon/back7.png" alt=""/></a>
</div>

<!-- content login -->
<div class="total">
    <div class="image-text">
        <div class="image">
            <img src="phone_nam/jcphone.png" alt="JC Team"/>
        </div>
        <div class="text">
            <p class="text-two-line">
                <br/><br/>
                Sự hài lòng là phương châm của chúng tôi
            </p>
        </div>
    </div>
    <div class="login">
        <div class="login-contains">
            <h3>Đăng nhập</h3>
            <div class="form">
                <form action="/RegisterServlet" method="get">
                    <div class="field email">
                        <div class="form-text">
                            <input
                                    type="text"
                                    name="confirmCode"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="username"
                                    value="<%=request.getAttribute("confirmCode")%>"
                            />

                            <!-- required -->
                            <label for="username" class="form-label">
                                <!-- <span class="content-name">Tên đăng nhập</span> -->
                                Email
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">
                            Mã xác nhận không chính xác
                        </div>
                    </div>
                    <input class="login1" type="submit" value="Xác nhận"/>
                </form>
            </div>
        </div>
        <div class="two-a">
            <a class="left" href="login.jsp">Trở lại trang đăng nhập</a>
        </div>
    </div>
</div>
<script>
    const form = document.querySelector("form");
    eField = form.querySelector(".email");
    eInput = eField.querySelector("input");

    function check() {
        if (eInput.value == "") {
            eField.classList.add("shake", "error");
        }
        checkCode();
        setTimeout(() => {
            //remove shake class after 500ms
            eField.classList.remove("shake");
        }, 500);

        function checkCode() {
            //checkEmail function
            let pattern = /[0-9]{4}\b/; //pattern for validate email
            if (!eInput.value.match(pattern)) {
                //if pattern not matched then add error and remove valid class
                eField.classList.add("error");
                eField.classList.remove("valid");
                let errorTxt = eField.querySelector(".error-txt");
                //if email value is not empty then show please enter valid email else show Email can't be blank
                eInput.value != ""
                    ? (errorTxt.innerText = "Mã xác nhận không đúng")
                    : (errorTxt.innerText = "Mã xác nhận không thể để trống");
            } else {
                //if pattern matched then remove error and add valid class
                eField.classList.remove("error");
                eField.classList.add("valid");
            }
        }

        if (!eField.classList.contains("error")) return true
        else return false
    }

    form.onsubmit = check
</script>

<!-- footer -->

<%----%>
</body>
</html>
