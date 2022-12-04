<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="description" content="" />

<title></title>
<link rel="stylesheet" href="./web_project/global.css" />
<link rel="stylesheet" href="./web_project/seat.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Segoe UI:wght@400&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=HelveticaNeue:wght@400&display=swap" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Helvetica Neue:wght@400&display=swap" />
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
</head>
<body>
	<div class="seat-div">
		<div class="div">
			<div class="div1">
				<img class="tgv-logo-icon" alt=""
					src="web_project/public/tgv-logo@2x.png" />
				<div class="div2">
					<b class="tgv-b">TGV</b>
					<div class="tu-golden-village">TU Golden Village</div>
				</div>
				<div class="div3" onclick="logout()">
					<div class="logout-div" onclick="logout()">Logout</div>
				</div>
			</div>
			<div class="div4">
				<div class="div5">
					<div class="div6">
						<div class="div7">
							<b class="b">${movie.title}</b>
							<div class="div8">
								<div class="b">장르: ${movie.genre}</div>
								<div class="div10">감독: ${movie.director}</div>
								<div class="div11">시놉시스: </div>
								<div class="div12">
									<p class="p" style="font-size: 15px">${movie.info}</p>
								</div>
							</div>
						</div>
						<img class="icon" alt="" src="web_project/public/-2@2x.png" />
					</div>
					<div class="div13">
						<b class="b">TGV</b>
					</div>
				</div>
				<div class="div14">
					<div class="div15">
						<div class="div16">11월</div>
						<div class="div17">
							<div class="div18">
								<b class="b1">21</b><b class="b2">23</b><b class="b3">22</b><b
									class="b4">24</b><b class="b5">25</b><b class="div10">26</b>
							</div>
							<div class="iconnavigationchevron-right-div">
								<img class="color-icon" alt=""
									src="web_project/public/-color3.svg" />
							</div>
							<div class="div19">
								<img class="color-icon1" alt=""
									src="web_project/public/-color4.svg" />
							</div>
						</div>
					</div>
					<div class="div20">
						<div class="div21" id="reserve-0" onclick="OpenModal(0)">
							<div class="div22">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div25" id="reserve-1" onclick="OpenModal(1)">
							<div class="div22">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div29" id="reserve-2" onclick="OpenModal(2)">
							<div class="div30">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div33" id="reserve-8" onclick="OpenModal(8)">
							<div class="div34">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div37" id="reserve-5" onclick="OpenModal(5)">
							<div class="div34">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div41" id="reserve-7" onclick="OpenModal(7)">
							<div class="div34">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div45" id="reserve-4" onclick="OpenModal(4)">
							<div class="div34">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div49" id="reserve-6" onclick="OpenModal(6)">
							<div class="div50">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
						<div class="div53" id="reserve-3" onclick="OpenModal(3)">
							<div class="div50">
								<div class="div23">
									<span>003 </span><span class="span">/ 036</span>
								</div>
								<div class="div24">
									<b class="b">09:20</b>
								</div>
							</div>
						</div>
					</div>
					<div class="div57">
						<div class="div58">
							<b class="b" id="seat-ID">--:-- ---</b>
						</div>
						<div class="not-reserved-div" id="reserved">Not Reserved</div>
					</div>
					<div class="div59" id="back" onclick="Back()">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-1">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(1)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(1)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-2">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(2)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(2)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-3">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(3)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(3)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-4">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(4)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(4)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-5">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(5)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(5)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-6">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(6)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(6)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-7">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(7)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(7)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-8">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(8)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(8)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
		<div class="div60" id="modal-9">
			<div class="div61">
				<div class="div62">
					<b class="seat-b">Seat</b>
					<div class="div63">
						<div class="div10">
							<span>003</span><span class="span9"> / 036</span>
						</div>
						<div class="div65">0인</div>
					</div>
					<div class="div66">
						<div class="div67">
							<div class="b">1</div>
							<div class="div69">2</div>
							<div class="div70">3</div>
							<div class="div71">4</div>
							<div class="div72">5</div>
							<div class="div73">6</div>
							<div class="div74">7</div>
							<div class="div75">8</div>
							<div class="div10">9</div>
						</div>
						<div class="div77">
							<div class="b">A</div>
							<div class="b-div">B</div>
							<div class="c-div">C</div>
							<div class="d-div">D</div>
						</div>
						<div class="div78">
							<div class="div79">
								<div class="div80"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div89">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div93"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div99">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div104"></div>
								<div class="div105"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
							<div class="div109">
								<div class="div90"></div>
								<div class="div81"></div>
								<div class="div82"></div>
								<div class="div83"></div>
								<div class="div84"></div>
								<div class="div85"></div>
								<div class="div86"></div>
								<div class="div87"></div>
								<div class="div88"></div>
							</div>
						</div>
						<div class="div119">
							<div class="screen-div">screen</div>
						</div>
					</div>
					<div class="div120" onclick="ConfirmModal(9)">
						<div class="div121" id="confirm">선택하기</div>
					</div>
					<div class="div122" id="cancel" onclick="CloseModal(9)">
						<img class="color-icon2" alt="" src="web_project/public/-color5.svg" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
      var seleted;
      var seat = [
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
        {
          A: [0, 0, 0, 0, 0, 0, 0, 0, 0],
          B: [0, 2, 0, 0, 0, 0, 0, 0, 0],
          C: [0, 0, 2, 0, 0, 0, 0, 0, 0],
          D: [0, 0, 2, 0, 0, 0, 0, 0, 0],
        },
      ];

      var httpRequest = new XMLHttpRequest();
      var GetData = new XMLHttpRequest();

      GetData.onreadystatechange = () => {
        /* readyState가 Done이고 응답 값이 200일 때, 받아온 response로 name과 age를 그려줌 */
        if (GetData.readyState === XMLHttpRequest.DONE) {
          if (GetData.status === 200) {
            var result = GetData.response;
            console.log(result);
            seat = [...result];
          } else {
            console.log("Request Error!");
          }
        }
      };
      GetData.open("GET", "http://localhost:8080/webtest/seatLoad?mid=${movie.id}");
      /* Response Type을 Json으로 사전 정의 */
      GetData.responseType = "json";
      /* 정의된 서버에 요청을 전송 */
      GetData.send();

      var QuerySeat = document.querySelectorAll(".div78");
      var People = document.querySelectorAll(".div65");
      var ModalCurrentReserved = document.querySelectorAll(".div63 .div10");
      var beforeSeat_I = -1;
      var beforeSeat_J = -1;
      var beforeSeat_K = -1;
      var mappingObject = {
        0: "A",
        1: "B",
        2: "C",
        3: "D",
      };

      if (QuerySeat.length > 0) {
        for (let i = 0; i < QuerySeat.length; i++) {
          for (let j = 0; j < QuerySeat[i].childElementCount; j++) {
            for (
              let k = 0;
              k < QuerySeat[i].children[j].childElementCount;
              k++
            ) {
              if (seat[i][mappingObject[j]][k] == 1) {
                QuerySeat[i].children[j].children[k].style.cssText =
                  "border: 1px solid var(--color-gray-800);  background-color: var(--color-white)";
              } else if (seat[i][mappingObject[j]][k] == 0) {
                QuerySeat[i].children[j].children[k].style.cssText =
                  "border: none; background-color: var(--color-gray-100);";
              } else if (seat[i][mappingObject[j]][k] == 2) {
                QuerySeat[i].children[j].children[k].style.cssText =
                  "border: none; background-color: var(--color-black);";
              }
              QuerySeat[i].children[j].children[k].addEventListener(
                "click",
                (e) => {
                  SelectSeat(i, j, k);
                  beforeSeat_J = j;
                  beforeSeat_K = k;
                  beforeSeat_I = i;
                }
              );
            }
          }
        }
      }

      function OpenModal(i) {
        console.log(`modal-\${i + 1}`);
        var modal = document.getElementById(`modal-\${i + 1}`);
        if (modal) {
          console.log(`OpemModal-\${i + 1}: open`);
          InitModal(i);
          modal.style.display = "flex";
        }
      }
      function CloseModal(i) {
        var modal = document.getElementById(`modal-\${i}`);
        if (modal) {
          console.log(`CloseModal-\${i}: closed`);
          let copy = _.cloneDeep(seat);
          for (let j = 0; j < Object.keys(copy[i - 1]).length; j++) {
            for (let k = 0; k < copy[i - 1][mappingObject[j]].length; k++) {
              if (copy[i - 1][mappingObject[j]][k] == 1) {
                copy[i - 1][mappingObject[j]][k] = 0;
              }
            }
          }
          seat = copy;
          modal.style.display = "none";
        }
      }
      function ConfirmModal(i) {
        var modal = document.getElementById(`modal-\${i}`);
        var id = document.getElementById(`reserve-\${i - 1}`);
        var reserved = document.getElementById("reserved");
        var seatID = document.getElementById("seat-ID");
        if (modal) {
          console.log(`ConfirmModal-\${i}: Confirmed`);
          let copy = _.cloneDeep(seat);
          let max = Number(
            id.children[0].children[0].children[1].innerHTML.slice(2)
          );
          let current = Number(
            id.children[0].children[0].children[0].innerHTML
          );
          let x = 0;
          let y = 0;
          for (let j = 0; j < Object.keys(copy[i - 1]).length; j++) {
            for (let k = 0; k < copy[i - 1][mappingObject[j]].length; k++) {
              if (copy[i - 1][mappingObject[j]][k] == 1) {
                copy[i - 1][mappingObject[j]][k] = 2;
                current += 1;
                x = k + 1;
                y = j;
              }
            }
          }
          if (current > max) {
            alert("overflow seat");
            CloseModal(i);
          } else {
            seat = copy;
            id.children[0].children[0].children[0].innerHTML = `\${String(
              current
            ).padStart(3, "0")} `;
            reserved.innerHTML = "Reserved";
            seatID.innerHTML = `\${id.children[0].children[1].children[0].innerHTML} \${mappingObject[y]}-\${x}`;
            getRequest(i, y, x);
          }
          modal.style.display = "none";
        }
      }
      function SelectSeat(axis, line, num) {
        let peopleNumber = Number(People[axis].innerHTML.slice(0, 1));
        let currentReserved = Number(
          ModalCurrentReserved[axis].children[0].innerHTML
        );
        if (beforeSeat_I != -1) {
          if (
            beforeSeat_I != axis ||
            beforeSeat_J != line ||
            beforeSeat_K != num
          ) {
            if (
              seat[beforeSeat_I][mappingObject[beforeSeat_J]][beforeSeat_K] != 2
            ) {
              seat[beforeSeat_I][mappingObject[beforeSeat_J]][beforeSeat_K] = 0;
              QuerySeat[beforeSeat_I].children[beforeSeat_J].children[
                beforeSeat_K
              ].style.cssText =
                "border: none; background-color: var(--color-gray-100);";
              currentReserved -= 1;
              // People[axis].innerHTML = peopleNumber - 1 + "인";
            }
          }
        }
        if (seat[axis][mappingObject[line]][num] == 0) {
          seat[axis][mappingObject[line]][num] = 1;
          // People[axis].innerHTML = peopleNumber + 1 + "인";
          currentReserved += 1;
          QuerySeat[axis].children[line].children[num].style.cssText =
            "border: 1px solid var(--color-gray-800);  background-color: var(--color-white)";
        } else if (seat[axis][mappingObject[line]][num] == 1) {
          seat[axis][mappingObject[line]][num] = 0;
          // People[axis].innerHTML = peopleNumber - 1 + "인";
          currentReserved -= 1;
          QuerySeat[axis].children[line].children[num].style.cssText =
            "border: none; background-color: var(--color-gray-100);";
        }
        ModalCurrentReserved[axis].children[0].innerHTML = String(
          currentReserved
        ).padStart(3, "0");
        console.log(`axis: \${axis}, line: \${line}, num: \${num}`);
      }
      function InitModal(k) {
        People[k].innerHTML = "1인";
        let currentReserved = 0;
        if (QuerySeat) {
          for (let i = 0; i < QuerySeat[k].childElementCount; i++) {
            for (
              let j = 0;
              j < QuerySeat[k].children[i].childElementCount;
              j++
            ) {
              if (seat[k][mappingObject[i]][j] == 1) {
                QuerySeat[k].children[i].children[j].style.cssText =
                  "border: 1px solid var(--color-gray-800);  background-color: var(--color-white)";
              } else if (seat[k][mappingObject[i]][j] == 0) {
                QuerySeat[k].children[i].children[j].style.cssText =
                  "border: none; background-color: var(--color-gray-100);";
              } else if (seat[k][mappingObject[i]][j] == 2) {
                QuerySeat[k].children[i].children[j].style.cssText =
                  "border: none; background-color: var(--color-black);";
                currentReserved += 1;
              }
            }
          }
          ModalCurrentReserved[k].children[0].innerHTML = String(
            currentReserved
          ).padStart(3, "0");
        }
      }
      var back = document.getElementById("back");
      if (back) {
        back.addEventListener("click", function (e) {
          window.location.href = "/webtest/Movie_page";
        });
      }

      function getRequest(i, j, k) {
        httpRequest.onreadystatechange = () => {
          if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
              console.log("seat.html::getRequest > GET 200");
            } else {
              console.log("seat.html::getRequest > Request ERROR");
            }
          }
        };
        let currentURL = window.location.href;
        httpRequest.open("GET", `${currentURL}?mid=${movie.id}&action=\${i-1}\${mappingObject[j]}\${k-1}`);
        httpRequest.responseType = "json";
        httpRequest.send();
      }
      function logout(){
    	  window.location.href = "/webtest/Logout";
      }
    </script>
</body>
</html>