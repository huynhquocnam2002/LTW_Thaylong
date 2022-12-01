<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/login.css"/>
    <!-- Font awesome CDN Link for icons -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <title>Login</title>
</head>

<body>
<!-- icon back -->
<div class="container">
    <a href="index.jsp">
        <img class="homelogin" src="image/icon/back7.png" alt=""
        /></a>
</div>

<!-- content login -->
<div class="total">
    <div class="image-text">
        <div class="image">
            <img src="jcphone.png" alt="JC Team"/>
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
                <form action="/LoginServlet" method="post">
                    <div class="field email">
                        <div class="form-text">
                            <input
                                    type="text"
                                    name="name"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="username"
                            />
                            <!-- required -->
                            <label for="username" class="form-label">
                                <!-- <span class="content-name">Tên đăng nhập</span> -->
                                Email
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">
                            Tên đăng nhập không thể để trống
                        </div>
                    </div>
                    <div class="field password">
                        <div class="form-text">
                            <input
                                    type="password"
                                    name="pass"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="password"
                            />
                            <!-- required -->
                            <label for="password" class="form-label">
                                <!-- <span class="content-name">Mật khẩu</span> -->
                                Mật khẩu
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">Mật khẩu không thể để trống</div>
                    </div>
                    <input class="login1" type="submit" value="Đăng nhập"/>
                </form>
            </div>
        </div>
        <div class="two-a">
            <a class="left" href="forgetPassword.jsp">Quên mật khẩu?</a>
            <a class="right" href="register.jsp">Tạo tài khoản</a>
        </div>
        <div>
            <div class="or">
                <div class="cross-bar"></div>
                <span>Hoặc</span>
                <div class="cross-bar"></div>
            </div>
            <div class="icon">
                <div class="item-icon">
                    <img src="phone_nam/icon/facebook.png" alt="logo facebook"/>
                </div>
                <div class="item-icon">
                    <img src="phone_nam/icon/google-plus.png" alt="logo google-plus"/>
                </div>
                <div class="item-icon">
                    <img src="phone_nam/icon/twitter.png" alt="logo twitter"/>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<script>
    const form = document.querySelector("form");
    eField = form.querySelector(".email");
    eInput = eField.querySelector("input");
    pField = form.querySelector(".password");
    pInput = pField.querySelector("input");
    <%if (request.getAttribute("error")!=null){
    String error= request.getAttribute("error")+"";%>
    eField.classList.add("error");
    eField.classList.remove("valid");
    pField.classList.add("error");
    pField.classList.remove("valid");
    let errorTxt = eField.querySelector(".error-txt");
    errorTxt.innerHTML="<%=error%>"
    errorTxt = pField.querySelector(".error-txt");
    errorTxt.innerHTML=""
    <%}%>

    function check() {
        if (eInput.value == "") {
            eField.classList.add("shake", "error");
        }
        checkEmail();
        if (pInput.value == "") {
            pField.classList.add("shake", "error");
        }
        checkPass();
        setTimeout(() => {
            //remove shake class after 500ms
            eField.classList.remove("shake");
        }, 500);
        eInput.onkeyup = () => {
            checkEmail();
        }; //calling checkEmail function on email input keyup
        function checkEmail() {
            //checkEmail function
            let pattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; //pattern for validate email
            if (!eInput.value.match(pattern)) {
                //if pattern not matched then add error and remove valid class
                eField.classList.add("error");
                eField.classList.remove("valid");
                let errorTxt = eField.querySelector(".error-txt");
                //if email value is not empty then show please enter valid email else show Email can't be blank
                eInput.value != ""
                    ? (errorTxt.innerText = "Email không đúng")
                    : (errorTxt.innerText = "Email không thể để trống");
            } else {
                //if pattern matched then remove error and add valid class
                eField.classList.remove("error");
                eField.classList.add("valid");
            }
        }

        function checkPass() {
            //checkPass function
            if (pInput.value == "") {
                //if pass is empty then add error and remove valid class
                pField.classList.add("error");
                pField.classList.remove("valid");
            } else {
                //if pass is empty then remove error and add valid class
                pField.classList.remove("error");
                pField.classList.add("valid");
            }
        }

        //if eField and pField doesn't contains error class that mean user filled details properly
        if (
            !eField.classList.contains("error")
        ) {
            return true
        } else return false
    }

    form.onsubmit = check
</script>

<%----%>
</body>
</html>
