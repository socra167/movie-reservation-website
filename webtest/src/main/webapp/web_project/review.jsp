<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="initial-scale=1, width=device-width" />

<title></title>

<meta name="description" content="" />

<link rel="stylesheet" href="./web_project/global.css" />
<link rel="stylesheet" href="./web_project/review.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=HelveticaNeue:wght@400&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Segoe UI:wght@400&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Helvetica Neue:wght@400&display=swap" />
</head>
<body>

	<div class="review-div">
		<div class="div31">
			<div class="header-div2">
				<img class="tgv-logo-icon2" alt=""
					src="./web_project/public/tgv-logo@2x.png" />
				<div class="div32">
					<b class="tgv-b2">TGV</b>
					<div class="tu-golden-village2">TU Golden Village</div>
				</div>
				<div class="div33">
					<div class="logout-div2">Logout</div>
				</div>
			</div>
			<div class="div34">
				<div class="div35">
					<div class="div36">
						<div class="div37">글쓰기</div>
						<div class="iconcontentcreate-24px-div2">
							<img class="color-icon6" alt=""
								src="./web_project/public/-color4.svg" />
						</div>
					</div>
				</div>
				<div class="div38">
					<div class="div39">
						<div class="div40"></div>
					</div>
					<div class="div41">
						<div class="div42">
							<b class="b3">제목</b><b class="b4">영화</b><b class="b5">사용자</b><b
								class="b6">날짜</b><b class="no-b">No.</b><b class="category-b1">Category</b>
						</div>
						<div class="div43">
							<c:forEach var="feature" items="${list}" varStatus="status">
								<%-- <c:if text="${10 > status.count }"> --%>
								<div class="div${status.count+43}" onclick=read(
									"${feature.id}")>
									<b class="b7" onclick=read("${feature.id}")>${feature.getTitle()}
									</b><b class="b8" onclick=read("${feature.id}")>${feature.getMovie_name()}</b><b
										class="b9" onclick=read("${feature.id}")>${feature.getCategory()}</b><b
										class="user1-b" onclick=read("${feature.id}")>${feature.getUserName()}</b><b
										class="b10" onclick=read("${feature.id}")>${feature.getCreate_date()}</b><b
										class="no-b" onclick=read("${feature.id}")>${status.count}</b>
								</div>
								<%-- </c:if> --%>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="div53">
					<div class="div54">
						<b class="b52"><span>영화</span><span class="span"> | 리뷰</span></b>
					</div>
					<form action="/webtest/Review_page" id="form">
						<div class="div55" id="node" name="title">
							<div class="iconactionsearch-24px-div">
								<image class="color-icon6"
									src="./web_project/public/-color7.svg"
									onclick="document.getElementById('form').submit();">
							</div>
							<input class="categories-div" id="node" name="title">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
      var next = document.querySelector(".div36");
      if (next) {
        next.addEventListener("click", function (e) {
          window.location.href = "/webtest/writeControl";
        });
      }

      var next = document.querySelector(".div54");
      if (next) {
        next.addEventListener("click", function (e) {
          window.location.href = "/webtest/Movie_page";
        });
      }
      var next = document.querySelector(".div33");
      if (next) {
        next.addEventListener("click", function (e) {
          window.location.href = "/webtest/Logout";
        });
      }
    function read(id){
       window.location.href = `readControl?id=`+id;
    }
    </script>
</body>
</html>