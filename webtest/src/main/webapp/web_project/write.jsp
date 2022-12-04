<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="initial-scale=1, width=device-width" />

<title></title>

<meta name="description" content="" />
<link rel="stylesheet" href="./web_project/global.css" />
<link rel="stylesheet" href="././web_project/write.css" />
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
	<form method="post" id=frm action="/webtest/writeControl?action=insert">
		<div class="write-div">
			<div class="contents-div">Contents</div>
			<div class="action-div">Action</div>
			<div class="div">블랙팬서</div>
			<div class="div1">
				<div class="div2">
					<div class="div3">
						<b class="review-b">Review</b>
						<%-- textarea, contents 입력 --%>
						<textarea name="contents" id="contents" class="div4"
							style="resize: none; font-size: 18px; padding: 10px 10px"
							onkeyup="fn_checkLength(this)" placeholder="contents"
							tabindex="2" required></textarea>
						<%-- input, title 입력 --%>
						<input name="title" id="title" class="div5"
							style="font-size: 18px; padding: 10px" placeholder="Title"
							tabindex="1" required>
						<div class="div6">
							<div class="confirm-div" onclick="submit()">Confirm</div>
							<div class="iconcontentcreate-24px-div" onclick="submit()">
								<img class="color-icon" alt="" src="./web_project/public/-color2.svg"
									onclick="submit()" />
							</div>
						</div>
						<div class="div7">
							<div class="movie">Movie :</div>
							<div class="div8">
								<%-- input, movie 선택 --%>
								<input type="text" name="movie" id="movieID" value="1" readonly
									style="display: none"> <input type="text"
									id="movieSelected" disabled value="${movies[0].title}"
									style="border: none; font-size: 18px; padding: 10px; background: transparent">
								<div class="iconcontentfilter-list-24px-div"
									onclick="movieToggle()">
									<img class="color-icon1" alt="" src="./web_project/public/-color1.svg" />
								</div>
							</div>
							<div id="movie" class="dropdownmenuselect-div"
								style="display: none">
								<div class="content-div">
									<c:forEach items="${movies}" var="m" varStatus="stat">
										<div class="dropdownitem-div">
											<div class="rectangle-div"
												onclick="movieSelect('${m.title}', '${stat.count}')"></div>
											<div class="label-div"
												onclick="movieSelect('${m.title}', '${stat.count}')">${m.title}</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="div9">
							<div class="movie">Category :</div>
							<div class="div10">
								<%-- input, category 선택 --%>
								<input type="text" name="category" id="categorySelected"
									readonly value="Action"
									style="border: none; font-size: 18px; padding: 10px; background: transparent;">
								<div class="iconcontentfilter-list-24px-div1"
									onclick="categoryToggle()">
									<img class="color-icon1" alt="" src="./web_project/public/-color1.svg" />
								</div>
							</div>
							<div id="category" class="dropdownmenuselect-div1"
								style="display: none">
								<div class="content-div">
									<div class="dropdownitem-div4">
										<div class="rectangle-div" onclick="categorySelect('Action')"></div>
										<div class="label-div" onclick="categorySelect('Action')">👊
											Action</div>
									</div>
									<div class="dropdownitem-div4">
										<div class="rectangle-div" onclick="categorySelect('Romance')"></div>
										<div class="label-div" onclick="categorySelect('Romance')">❤️
											Romance</div>
									</div>
									<div class="dropdownitem-div4">
										<div class="rectangle-div" onclick="categorySelect('Comedy')"></div>
										<div class="label-div" onclick="categorySelect('Comedy')">🤣
											Comedy</div>
									</div>
									<div class="dropdownitem-div4">
										<div class="rectangle-div" id="Thriller"
											onclick="categorySelect('Thriller')"></div>
										<div class="label-div" id="Thriller"
											onclick="categorySelect('Thriller')">👻 Thriller</div>
									</div>
								</div>
							</div>
						</div>
						<img class="color-icon3" alt="" src="./web_project/public/-color5.svg"
							onclick="history.go(-1)" />
					</div>
				</div>
				<div class="header-div">
					<img class="tgv-logo-icon" alt="" src="./web_project/public/tgv-logo@2x.png" />
					<div class="div11">
						<b class="tgv-b">TGV</b>
						<div class="tu-golden-village">TU Golden Village</div>
					</div>
					<div class="div12">
						<div class="logout-div">Logout</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			function movieToggle() {
				var movie = document.getElementById('movie');
				if (movie.style.display == 'none') {
					movie.style.display = 'block';
				} else {
					movie.style.display = 'none';
				}
			}
			function categoryToggle() {
				var category = document.getElementById('category');
				if (category.style.display == 'none') {
					category.style.display = 'block';
				} else {
					category.style.display = 'none';
				}
			}
			function movieSelect(movie, mid) {
				document.getElementById('movieSelected').value = movie;
				document.getElementById('movie').style.display = 'none';
				document.getElementById('movieID').value = mid;
			}
			function categorySelect(category) {
				document.getElementById('categorySelected').value = category;
				document.getElementById('category').style.display = 'none';
			}

			function fn_checkLength(obj) {
				const maxLength = 50; // 최대 50글자
				const text_val = obj.value;
				const text_len = text_val.length;
				if (text_len > maxLength) {
					alert("50자 까지만 입력 가능합니다.");
					obj.value = obj.value.substring(0, 49);
				}
			}

			function submit() {
				var contents = document.getElementById('contents');
				var title = document.getElementById('title');
				if (contents.value == "" || title.value == "") {
					alert("내용을 입력해주세요.");
				} else {
					document.getElementById('frm').submit();
				}
			}
		      var next = document.querySelector(".div12");
		      if (next) {
		        next.addEventListener("click", function (e) {
		          window.location.href = "/webtest/Logout";
		        });
		      }
		</script>
	</form>
</body>
</html>
