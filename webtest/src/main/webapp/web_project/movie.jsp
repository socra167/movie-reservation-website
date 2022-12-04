<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="webtest.Review"%>
<%@ page import="webtest.Movie"%>
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
<link rel="stylesheet" href="./web_project/movie.css" />
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
	<div class="movie-div">
		<div class="searchbar-filter-div">
			<div class="div56">
				<b class="b53"><span>영화 | </span><span class="span1">리뷰</span></b>
			</div>

			<form action="/webtest/Movie_page" id="form">
				<div class="div57">
					<input class="icon" alt="" id="node" name="title" />
					<div class="iconactionsearch-24px-div1">
						<img class="color-icon9" src="./web_project/public/-color7.svg"
							onclick="document.getElementById('form').submit();" />
					</div>
				</div>
			</form>
		</div>
		<div class="header-div3">
			<img class="tgv-logo-icon3" alt=""
				src="./web_project/public/tgv-logo@2x.png" />
			<div class="div58">
				<b class="tgv-b3">TGV</b>
				<div class="tu-golden-village3">TU Golden Village</div>
			</div>
			<div class="div59">
				<div class="logout-div3">Logout</div>
			</div>
		</div>
		<div class="movies-div">
			<div class="first-item-div">
				<div class="movie-1-div">
					<b class="b54">${list.get(0).getTitle()}</b>
					<div class="div60">
						<p class="p10">${list.get(0).getDirector()}</p>
						<p class="p10">${list.get(0).getInfo()}</p>
					</div>
					<img class="icon1" alt="" src="./web_project/public/--1@2x.png" />
				</div>
				<div class="hover-1-div">
					<button class="button" autofocus id="button-1">
						<img class="base-icon" alt="" src="./web_project/public/base.svg" /><b
							class="b55">예약하기</b>
					</button>
				</div>
			</div>
			<div class="second-item-div">
				<div class="movie-2-div">
					<b class="b54">${list.get(1).getTitle()}</b>
					<div class="div60">
						<p class="p10">${list.get(1).getDirector()}</p>
						<p class="p10">${list.get(1).getInfo()}</p>
					</div>
					<img class="icon1" alt="" src="./web_project/public/--1@2x.png" />
				</div>
				<div class="hover-2-div">
					<div class="div64" id="button-2">
						<img class="base-icon" alt="" src="./web_project/public/base.svg" /><b
							class="b57">예약하기</b>
					</div>
				</div>
			</div>
			<div class="third-item-div">
				<div class="movie-3-div">
					<b class="b54">${list.get(2).getTitle()}</b>
					<div class="div60">
						<p class="p10">${list.get(2).getDirector()}</p>
						<p class="p10">${list.get(2).getInfo()}</p>
					</div>
					<img class="icon1" alt="" src="./web_project/public/--1@2x.png" />
				</div>
				<div class="hover-3-div">
					<div class="div64" id="button-3">
						<img class="base-icon" alt="" src="./web_project/public/base.svg" /><b
							class="b57">예약하기</b>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
      var button1 = document.getElementById("button-1");
      if (button1) {
    	  if (${list.get(0).getId()} != -1){
	        button1.addEventListener("click", function (e) {
    	    	window.location.href = "/webtest/Seat_controller?mid=${list.get(0).getId()}";
        	});  
    	  }
      }
      var button2 = document.getElementById("button-2");
      if (button2) {
    	  if (${list.get(1).getId()} != -1){
	        button2.addEventListener("click", function (e) {
    	    	window.location.href = "/webtest/Seat_controller?mid=${list.get(1).getId()}";
        	});  
    	  }
      }
      var button3 = document.getElementById("button-3");
      if (button3) {
    	  if (${list.get(2).getId()} != -1){
	        button3.addEventListener("click", function (e) {
    	    	window.location.href = "/webtest/Seat_controller?mid=${list.get(2).getId()}";
        	});  
    	  }
      }

      var review = document.querySelector(".div56");
      if (review) {
        review.addEventListener("click", function (e) {
          window.location.href = "/webtest/Review_page";
        });
      }
      var next = document.querySelector(".div59");
      if (next) {
        next.addEventListener("click", function (e) {
          window.location.href = "/webtest/Logout";
        });
      }
    </script>
</body>
</html>