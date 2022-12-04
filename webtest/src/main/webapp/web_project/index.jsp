<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <title></title>

    <meta name="description" content="" />

    <link rel="stylesheet" href="./web_project/global.css" />
    <link rel="stylesheet" href="./web_project/index.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=HelveticaNeue:wght@400&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Helvetica Neue:wght@400&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Segoe UI:wght@400&display=swap"
    />
  </head>
  <body>
    <div class="mainpage-div" id="MainPage">
      <div class="mainpage-div1">
        <div class="login-div">
          <img class="tgv-logo-icon" alt="" src="public/tgv-logo@2x.png" />
          <form action = "/webtest/Loginservlet" class="loginmenu-div">
            <div class="dropdownitem-div" >
              <div class="rectangle-div"></div>
              <div class="label-div">
                <span>New around here? </span
                ><span class="sign-up-span" id="dropdownitemContainer">Sign up</span>
              </div>
            </div>
            <div class="divider"></div>
            <div class="formform-groupbasicdefault-div">
              <div class="group-label-div">ID</div>
              <div class="forminputtextdefault-div">
                <input type="text" class="inputbase-div" placeholder="Input ID" name = "site_id"></input>
              </div>
            </div>
            <div class="formform-groupbasicdefault-div1">
              <div class="group-label-div">Password</div>
              <div class="forminputtextdefault-div">
                <input type="text" class="inputbase-div" placeholder="Input Password" name = "password"></input> 
              </div>
            </div>

            <!-- input Button -->
            <button type = "submit" class="loginbutton-div" id="loginButtonContainer">
              <div class="login-div1">Login</div>
            </button>
          
          </form>
          <div class="tgv-div">
            <b class="tgv-b">TGV</b>
            <div class="tu-golden-village">TU Golden Village</div>
          </div>
        </div>
      </div>
    </div>

    <script>
      var dropdownitemContainer = document.getElementById("dropdownitemContainer");
      if (dropdownitemContainer) {
        dropdownitemContainer.addEventListener("click", function (e) {
          window.location.href = "./web_project/sign_up.jsp";
        });
      }
      
      var loginButtonContainer = document.getElementById("loginButtonContainer");
      if (loginButtonContainer) {
        loginButtonContainer.addEventListener("click", function (e) {
          window.location.href = "/webtest/Loginservlet";
        });
      }
      </script>
  </body>
</html>