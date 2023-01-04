<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/forgetpass.css"/>
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
    <a href="/">
        <img class="homelogin" src="image/icon/back7.png" alt=""/>
    </a>
</div>

<!-- content -->
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
            <h3>Quên Mật Khẩu</h3>
            <div class="form">
                <form action="/ForgetPassServlet" method="post">
                    <div class="field email">
                        <div class="form-text">
                            <%String email=(String)session.getAttribute("email");
                            if (email==null){%>
                            <input
                                    type="text"
                                    name="email"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="email"
                            /><%}else{%>
                            <input
                                    type="text"
                                    name="email"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="email"
                                    value="<%=email%>"
                            /><%}%>
                            <!-- required -->
                            <label for="email" class="form-label">   Email </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">
                            Tên đăng nhập không thể để trống
                        </div>
                    </div>
                    <div class="field maxacnhan">
                        <div class="form-text">
                            <input
                                    type="text"
                                    name="code"
                                    autocomplete="off"
                                    placeholder=" "
                                    class="form-input"
                                    id="pass"
                            />
                            <!-- required -->
                            <label for="pass" class="form-label">
                                Nhập mã xác nhận
                            </label>
                            <i class="error error-icon fas fa-exclamation-circle"></i>
                        </div>
                        <div class="error error-txt">
                            Sai mã xác nhận vui lòng nhập lại
                        </div>
                    </div>

                    <input class="login1" value="Xác Nhận" type="submit"/>

                    <div class="two-a">
                        <p class="left" href="">Chưa có mã xác nhận</p>
                        <a class="right" href="/ForgetPassServlet">gửi mã</a>
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
    eField = form.querySelector(".email");
    eInput = eField.querySelector("input");
    pField = form.querySelector(".maxacnhan");
    pInput = pField.querySelector("input");
    twoa = form.querySelector(".two-a")

    <%if (request.getAttribute("error")!=null){%>
    eField.classList.add("error");
    eField.classList.remove("valid");
    let errorTxt = eField.querySelector(".error-txt");
    errorTxt.innerHTML = "<%=request.getAttribute("error")%>";
    <%}%>
    <%if (session.getAttribute("confirmCode")==null){%>
    twoa.style.display = "none"
    pField.style.display = "none";
    <%} else {%>
    twoa.style.display = "flex"
    pField.style.display = "block";
    <%}%>


    function check() {
        //if email and password is blank then add shake class in it else call specified function
        if (eInput.value == "") {
            eField.classList.add("shake", "error");
        }
        checkEmail();
        setTimeout(() => {
            //remove shake class after 500ms
            eField.classList.remove("shake");
        }, 500);
        eInput.onkeyup = () => {
            checkEmail();
        };
        //if eField and pField doesn't contains error class that mean user filled details properly
        if (!eField.classList.contains("error"))
            return true
        else return false
    }
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
    form.onsubmit = check

</script>
</body>
</html>
