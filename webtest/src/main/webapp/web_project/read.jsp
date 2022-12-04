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
    <link rel="stylesheet" href="./web_project/read.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=HelveticaNeue:wght@400&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Segoe UI:wght@400&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Helvetica Neue:wght@400&display=swap"
    />
  </head>
  <body>
    <div class="read-div">
      <div class="div13">
        <div class="div14">
          <div class="div15">
            <div class="div16" onclick="gotoWrite()">
              <div class="div17" onclick="gotoWrite()">글쓰기</div>
              <div class="iconcontentcreate-24px-div1">
                <img class="color-icon4" alt="" src="./web_project/public/-color2.svg" onclick="gotoWrite()" />
              </div>
            </div>
          </div>
          <div class="div18">
            <div class="div19"><div class="div20"></div></div>
            <div class="div21">
              <div class="div22">
              <textarea style="resize: none; background: transparent; font-size:18px; margin-top:40px; border: none; width:100%; height:100%" disabled>${review.contents}</textarea>
                <div class="div23">
                  <p class="p">
                  </p>
                </div>
                <b class="b">${review.movie}</b>
              </div>
              <div class="div24">
                <div class="div25">${review.title}</div>
                <b class="b1">사용자: </b><b class="b2">날짜:</b
                ><b class="title-b">Title: </b
                ><b class="category-b">Category:</b>
                <div class="div26">${review.category}</div>
                <div class="user1-div">${review.username}</div>
                <div class="div27">${review.date}</div>
                <div class="div28">
                  <img class="color-icon5" alt="" src="./web_project/public/-color5.svg" onclick="history.go(-1)"/>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="header-div1">
          <img class="tgv-logo-icon1" alt="" src="./web_project/public/tgv-logo@2x.png" />
          <div class="div29">
            <b class="tgv-b1">TGV</b>
            <div class="tu-golden-village1">TU Golden Village</div>
          </div>
          <div class="div30"><div class="logout-div1">Logout</div></div>
        </div>
      </div>
    </div>

    <script>
    function gotoWrite(){
    	location.href="/webtest/writeControl"; 
    }
    var next = document.querySelector(".div30");
    if (next) {
      next.addEventListener("click", function (e) {
        window.location.href = "/webtest/Logout";
      });
    }
    </script>
  </body>
</html>
