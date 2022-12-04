<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <title></title>

    <meta name="description" content="" />

    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" href="./main-page-sign-up.css" />
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
    <form action = "/webtest/Sign_Up" class="mainpage-sign-up-div" id="MainPage-SignUp" method = "post">
      <div class="mainbox-div"></div>
      <img class="tgv-logo-icon12" alt="" src="public/tgv-logo@2x.png" />
      <div class="card-backgroundsimple-div1"></div>
      <div class="group-label-div2">ID</div>
      <div class="forminputtextdefault-div2">
        <input class="inputbase-div2" placeholder="Input ID" type="text" id="input-ID" name = "new_site_id"></input>
      </div>
      <div class="group-label-div3">Password</div>
      <div class="group-label-div4">Password Check</div>
      <div class="forminputtextdefault-div3">
        <input id="first-Password" class="inputbase-div2" placeholder="Input Password" type="text" name = "new_password"></input>
        
      </div>
      <div class="forminputtextdefault-div4">
        <input id="check-Password" class="inputbase-div2" placeholder="Password Check" type="text"></input>
      </div>
      <!-- <div class="base-div"></div> -->
      <button type = "submit" class="sign-up-div" id="signUpText" onclick="checkPassword(); checkID(['123','23']);">Sign up</button>
      <div class="div288">
        <b class="tgv-b16">TGV</b>
        <div class="tu-golden-village12">TU Golden Village</div>
      </div>
      <div class="iconactioncheck-circle-outli-div">
        <img class="color-icon25" alt="" src="public/-color25.svg" />
      </div>
    </form>

    <script>  
      function checkPassword(){
        var inputPassword = document.getElementById('first-Password').value;
        var checkPassword = document.getElementById('check-Password').value;
        if (inputPassword != checkPassword
          || inputPassword == ''  ||
          checkPassword == '' 
        ){
          alert('check Your Password');
          window.location.href = "./main-page-sign-up.html";
        }
        else {
          return true
        }
      }

      function checkID(data){
        var inputID = document.getElementById('input-ID').value
        if (data.includes(inputID)){
          alert('aleady Exist ID');
          return false;
        }
        if (inputID == ''){
          alert('check Your ID');
          return false
        } else{
          alert('Success');
          window.location.href = "./index.html";
          return true
        }
      }
      </script>
  </body>
</html>
