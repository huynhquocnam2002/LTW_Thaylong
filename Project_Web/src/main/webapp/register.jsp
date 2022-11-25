<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="phone_nam/register.css" />
    <!-- Font awesome CDN Link for icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <title>Register</title>
  </head>

  <body>
    <!-- header -->
    <div class="container">
      <a href="index.html">
        <img class="homelogin" src="/phone_nam/icon/back7.png" alt="" />
      </a>
    </div>

    <!-- content -->
    <div class="total">
      <div class="image-text">
        <div class="image">
          <img src="jcphone.png" alt="JC Team" />
        </div>
        <div class="text">
          <p class="text-two-line">
            <br /><br />
            Sự hài lòng là phương châm của chúng tôi
          </p>
        </div>
      </div>
      <div class="login">
        <div class="login-contains">
          <h3>Đăng kí</h3>
          <div class="form">
            <form action="indexLogin.html">
              <div class="field email">
                <div class="form-text">
                  <input
                    type="text"
                    name="name"
                    autocomplete="off"
                    placeholder=" "
                    class="form-input"
                  />
                  <!-- required -->
                  <label for="name" class="form-label"> Tên đăng nhập </label>
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
                    name="name"
                    autocomplete="off"
                    placeholder=" "
                    class="form-input"
                  />
                  <!-- required -->
                  <label for="name" class="form-label">
                    <!-- <span class="content-name">Mật khẩu</span> -->
                    Mật khẩu
                  </label>
                  <i class="error error-icon fas fa-exclamation-circle"></i>
                </div>
                <div class="error error-txt">Mật khẩu không thể để trống</div>
              </div>
              <div class="field checkpassword">
                <div class="form-text">
                  <input
                    type="password"
                    name="name"
                    autocomplete="off"
                    placeholder=" "
                    class="form-input"
                  />
                  <!-- required -->
                  <label for="name" class="form-label">
                    <!-- <span class="content-name">Mật khẩu</span> -->
                    Xác nhận mật khẩu
                  </label>
                  <i class="error error-icon fas fa-exclamation-circle"></i>
                </div>
                <div class="error error-txt">
                  Xác nhận mật khẩu không thể để trống
                </div>
              </div>
              <input class="login1" type="submit" value="Đăng kí" />
              <div class="two-a">
                <p class="left" href="">Đã Có Tài Khoản</p>
                <a class="right" href="login.html">Đăng Nhập</a>
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
              <img src="icon\facebook.png" alt="logo facebook" />
            </div>
            <div class="item-icon">
              <img src="icon\google-plus.png" alt="logo google-plus" />
            </div>
            <div class="item-icon">
              <img src="icon\twitter.png" alt="logo twitter" />
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
      cField = form.querySelector(".checkpassword");
      cInput = cField.querySelector("input");
      form.onsubmit = (e) => {
        e.preventDefault(); //preventing from form submitting
        //if email and password is blank then add shake class in it else call specified function
        if (eInput.value == "") {
          eField.classList.add("shake", "error");
        }
        checkEmail();
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
          eField.classList.remove("shake");
          pField.classList.remove("shake");
          cField.classList.remove("shake");
        }, 500);
        eInput.onkeyup = () => {
          checkEmail();
        }; //calling checkEmail function on email input keyup
        pInput.onkeyup = () => {
          checkPass();
        };
        cInput.onkeyup = () => {
          checkCheckPass();
        }; //calling checkPassword function on pass input keyup
        function checkEmail() {
          //checkEmail function
          let pattern = /^[^ ]{6,100}$/; //pattern for validate email
          if (!eInput.value.match(pattern)) {
            //if pattern not matched then add error and remove valid class
            eField.classList.add("error");
            eField.classList.remove("valid");
            let errorTxt = eField.querySelector(".error-txt");
            //if email value is not empty then show please enter valid email else show Email can't be blank
            eInput.value != ""
              ? (errorTxt.innerText = "Tên đăng nhập trên 6 kí tự")
              : (errorTxt.innerText = "Tên đăng nhập không thể để trống");
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
        if (
          !eField.classList.contains("error") &&
          !pField.classList.contains("error") &&
          !cField.classList.contains("error")
        ) {
          window.location.href = form.getAttribute("action"); //redirecting user to the specified url which is inside action attribute of form tag
        }
      };
    </script>
  </body>
</html>
