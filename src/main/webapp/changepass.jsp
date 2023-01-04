<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/forgetpass.css"/>
    <!-- Font awesome CDN Link for icons -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <title>Forget password</title>
</head>

<body>
<!-- header -->

<div class="container">
    <a href="home.html">
        <img class="homelogin" src="/phone_nam/icon/back7.png" alt=""/>
    </a>
</div>

<!-- content -->
<div class="total">
    <div class="image-text">
        <div class="image">
            <img src="../jcphone.png" alt="JC Team"/>
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
            <h3>Quên Mật Khẩu</h3>
            <div class="form">
                <form action="/ChangePassForgetServlet" method="post">
                    <div class="field password">
                        <div class="form-text">
                            <input
                                    type="password"
                                    name="newPass"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="newPass"
                            />
                            <!-- required -->
                            <label for="newPass" class="form-label">
                                <!-- <span class="content-name">Mật khẩu</span> -->
                                Mật Khẩu Mới
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">Mật khẩu không thể để trống</div>
                    </div>
                    <div class="field checkpassword">
                        <div class="form-text">
                            <input
                                    type="password"
                                    name="confirmPass"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="confirmPass"
                            />
                            <!-- required -->
                            <label for="confirmPass" class="form-label">
                                <!-- <span class="content-name">Mật khẩu</span> -->
                                Xác nhận mật khẩu
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">
                            Xác nhận mật khẩu không thể để trống
                        </div>
                    </div>
                    <input class="login1" type="submit" value="Đổi Mật Khẩu"/>
                    <div class="two-a">
                        <p class="left" href="">Xác minh thành công</p>
                        <!-- <a class="right" href="login.jsp">gửi lại</a> -->
                    </div>
                </form>
            </div>
        </div>
        <div>
            <div class="or">
                <div class="cross-bar"></div>
                <span>Hoặc</span>
                <div class="cross-bar"></div>
            </div>
            <div class="icon">
                <div class="item-icon">
                    <img src="image/icon/facebook.png" alt="logo facebook"/>
                </div>
                <div class="item-icon">
                    <img src="image/icon/google-plus.png" alt="logo google-plus"/>
                </div>
                <div class="item-icon">
                    <img src="image/icon/twitter.png" alt="logo twitter"/>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    const form = document.querySelector("form");
    pField = form.querySelector(".password");
    pInput = pField.querySelector("input");
    cField = form.querySelector(".checkpassword");
    cInput = cField.querySelector("input");

    function check() {
        e.preventDefault(); //preventing from form submitting
        if (pInput.value == "") {
            pField.classList.add("shake", "error");
        }
        checkPass();
        if (cInput.value == "") {
            cField.classList.add("shake", "error");
        }
        checkCheckPass();
        setTimeout(() => {
            //remove shake class after 500ms
            pField.classList.remove("shake");
            cField.classList.remove("shake");
        }, 500);
        cInput.onkeyup = () => {
            checkCheckPass();
        }; //calling checkPassword function on pass input keyup

        function checkPass() {
            //checkPass function
            if (pInput.value == "") {
                //if pass is empty then add error and remove valid class
                pField.classList.add("error");
                pField.classList.remove("valid");
            } else if (pInput.value.length<8 ||pInput.value.length>16){
                pField.classList.add("error");
                pField.classList.remove("valid");
                let errorTxt = pField.querySelector(".error-txt");
                errorTxt.innerHTML="Mật khẩu phải từ 8 đến 16 kí tự"
            } else {
                //if pass is empty then remove error and add valid class
                pField.classList.remove("error");
                pField.classList.add("valid");
            }
        }

        function checkCheckPass() {
            //checkPass function
            if (cInput.value == "" || cInput.value != pInput.value) {
                //if pass is empty then add error and remove valid class
                cField.classList.add("error");
                cField.classList.remove("valid");
                let errorTxt = cField.querySelector(".error-txt");
                //if email value is not empty then show please enter valid email else show Email can't be blank
                cInput.value != ""
                    ? (errorTxt.innerText = "Xác nhận mật khẩu phải giống mật khẩu")
                    : (errorTxt.innerText = "Xác nhận mật khẩu không thể để trống");
            } else {
                //if pass is empty then remove error and add valid class
                cField.classList.remove("error");
                cField.classList.add("valid");
            }
        }

        //if eField and pField doesn't contains error class that mean user filled details properly
        if (!pField.classList.contains("error") &&
            !cField.classList.contains("error")) return true
        else return false;
    }
    form.onsubmit = check
</script>
</body>
</html>
