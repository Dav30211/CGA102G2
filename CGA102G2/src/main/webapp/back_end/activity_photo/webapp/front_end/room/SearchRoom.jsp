<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="h.com.room_type_photo.model.*"%>
<%@ page import="java.util.*"%>
<%@ page import="h.com.room_type.model.*"%>
<%@ page import="h.com.room_type_photo.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/searchroom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.datetimepicker.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<%-- <script src="${pageContext.request.contextPath}/js/jquery.js"></script> --%>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.datetimepicker.full.js"></script>
<script src="${pageContext.request.contextPath}/js/search.js"></script>

<script>
	$.datetimepicker.setLocale("zh"); // kr ko ja en
	$(function() {
	
		$("#start_date").datetimepicker(
				{
					minDate : "-1970-01-01",
					format : "Y-m-d",
					onShow : function() {
						if ($("#end_date").val() === "") {
							this.setOptions({
								maxDate : $("#end_date").val() ? $("#end_date")
										.val() : false
							});
						} else {
							maxDate: $("#end_date").val() === "";
						}
					},
					timepicker : false
				});
		$('#end_date')
				.datetimepicker(
						{
							format : 'Y-m-d',
							onShow : function() {
								let start = Date.parse(document
										.querySelector("#start_date").value) + 86400000 * 32;
								let date = new Date(start);
								let startdate = date.getFullYear() + '-'
										+ date.getMonth() + '-'
										+ date.getDate();
								console.log(startdate);
								this
										.setOptions({
											minDate : $('#start_date').val() ? startdate
													: false
										})
							},
							timepicker : false
						});
		$('#start_date').datetimepicker({
			scrollMonth : false,
			scrollInput : false
		});
		$('#end_date').datetimepicker({
			scrollMonth : false,
			scrollInput : false
		});

	});
</script>
<script>
$(document).ready(function(){
	const room_type_id = document.querySelector("#room_type_id");
		
			 if(room_type_id.value === "1"){
				 $("#select1 option:gt(2)").hide();
			 }else{
				$("#select1 option:gt(2)").show();
			 }
			
});
</script>
<style>
.xdsoft_datetimepicker .xdsoft_datepicker {
	width: 300px; /* width:  300px; */
}

.xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
	height: 151px; /* height:  151px; */
}
</style>
</head>
<body onload="connect();" onunload="disconnect();">
<!-- 		<header> -->
<!-- 		<nav> -->
<!-- 			<img class="nav-logo" -->
<%-- 				src="${pageContext.request.contextPath}/images/logo.png" alt=""> --%>
<!-- 			<table class="weather-div"> -->
<!-- 				<tbody class="weather-tbody"> -->
<!-- 					<tr class="weather-tr"> -->
<!-- 					</tr> -->
<!-- 					<tr class="weather-tr-1"> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table> -->
<!-- 			<div class="icon"></div> -->
<!-- 			<img class="nav-top-img" -->
<%-- 				src="${pageContext.request.contextPath}/images/wheather.png" alt=""> --%>
<%-- 			<a href="${pageContext.request.contextPath}/front_end/member/MemberLogin.jsp" class="text">????????????/??????</a> <a href="" class="nav-top-a"> --%>
<!-- 				<img class="nav-top-img-1" -->
<%-- 				src="${pageContext.request.contextPath}/images/shopping-cart.png" --%>
<!-- 				alt=""> -->
<!-- 			</a> -->
<!-- 			<div class="nav-top-bot"> -->
<!-- 				<ul class="nav-ul-bot"> -->
<%-- 					<li class="nav-li"><a href="${pageContext.request.contextPath}/front_end/frontpage/FrontPage.jsp" class=""> --%>
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>??????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<!-- 					<li class="nav-li"><a -->
<%-- 						href="${pageContext.request.contextPath}/News" class=""> --%>
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<%-- 					<li class="nav-li"><a href="${pageContext.request.contextPath}/front_end/room_type/room_type_introduce.jsp" class=""> --%>
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<!-- 					<li class="nav-li"><a href="" class=""> -->
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<!-- 					<li class="nav-li"><a href="" class=""> -->
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<!-- 					<li class="nav-li"><a href="" class=""> -->
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>???????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<!-- 					<li class="nav-li"><a href="" class=""> -->
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul class="nav-ul-bot"> -->
<%-- 					<li class="nav-li"><a href="${pageContext.request.contextPath}/front_end/protect/Member_Data.jsp" class=""> --%>
<!-- 							<div class="nav-left-div"> -->
<!-- 								<p>????????????</p> -->
<!-- 							</div> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</nav> -->
<!-- 	</header> -->
	<%@ include file="/front_end/frontpage/IncludeHeader.jsp" %>
	<main>
		<FORM METHOD="post"
			ACTION="${pageContext.request.contextPath}/SearchRoom">
			<div class="date">
				<span>????????????</span> <label for="start_date" class="checkin">????????????:</label>
				<input name="start_date" id="start_date" type="text"
					autocomplete="off" onkeydown="return false"> <label
					for="end_date" class="checkout">????????????:</label><input name="end_date"
					id="end_date" type="text" autocomplete="off"
					onkeydown="return false"> <input class="serach"
					type="submit" value="???????????? "> <select class="roomcount"
					name="select">
					<option value="" style="display: none">??????</option>
					<option value="1">1???</option>
					<option value="2">2???</option>
					<option value="3">3???</option>
					<option value="4">4???</option>

				</select> <select class="person" name="select1" id="select1">
					<option value="" style="display: none">??????</option>
					<option value="1">1???</option>
					<option value="2">2???</option>
					<option value="3">3???</option>
					<option value="4">4???</option>

				</select>

			</div>
			<input type="hidden" name="action" value="search"> <input
				type="hidden" name="room_type_id"
				value="${room_typeVO.room_type_id}" id="room_type_id">
		</FORM>
		<div class="room">
			<h4 class="title">${room_typeVO.room_type_name}</h4>
			<h4 class="price">TWD${room_typeVO.room_type_price}</h4>
			<span class="content">${room_typeVO.room_type_content}</span> <span
				class="free">???????????????</span> <span class="pay">?????????????????????</span>
			<div id="carouselExampleControls" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">

					<div class="carousel-item active" data-bs-interval="3000">
						<img
							src="${pageContext.request.contextPath}/RoomPhotoReader?room_type_photo_id=${list1.get(0).room_type_photo_id}"
							class="d-block w-100" alt="">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img
							src="${pageContext.request.contextPath}/RoomPhotoReader?room_type_photo_id=${list1.get(1).room_type_photo_id}"
							class="d-block w-100" alt="">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img
							src="${pageContext.request.contextPath}/RoomPhotoReader?room_type_photo_id=${list1.get(2).room_type_photo_id}"
							class="d-block w-100" alt="">
					</div>


				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

	</main>
	<footer>
		<div>
			<p>Copyright 2000 , CloudWind HotSpring , All Rights Reserved.
				Designed by</p>
			<p>DREAMCENTER</p>
		</div>
	</footer>

	<div  class="textinfo">
		<img src="${pageContext.request.contextPath}/images/chat.png" class="textimg">
	</div>
	<div class="chat">
		<h3 id="statusOutput" class="statusOutput"></h3>
		<div id="row"></div>
		<div id="messagesArea" class="panel message-area">
		</div>
		<div class="panel input-area">
			<input id="message" class="text-field" type="text"
				placeholder="Message"
				onkeydown="if (event.keyCode == 13) sendMessage();" /> <input
				type="submit" id="sendMessage" class="button" value="Send"
				onclick="sendMessage();" />

		</div>
	</div>
	<script>
	//??????????????????username
	
	if(localStorage.getItem(1) === null){
		let ID = Math.floor(Math.random() * 1000000);
		localStorage.setItem(1, ID);
	}else{
	let ID = localStorage.getItem(1);
	var MyPoint = "/FriendWS1/" + ID;
	var host = window.location.host;
	var path = window.location.pathname;
	var webCtx = path.substring(0, path.indexOf('/', 1));
	var endPointURL = "ws://" + window.location.host + webCtx + MyPoint;

	var statusOutput = document.getElementById("statusOutput");
	var messagesArea = document.getElementById("messagesArea");
	var self = ID;
	var webSocket;

	function connect() {
		// create a websocket

	

		document.getElementById("statusOutput").textContent = "????????????";

		webSocket = new WebSocket(endPointURL);

		webSocket.onopen = function(event) {
			console.log("Connect Success!");
			
			document.getElementById('sendMessage').disabled = false;
			/* document.getElementById('connect').disabled = true;
			document.getElementById('disconnect').disabled = false; */
		};

		webSocket.onmessage = function(event) {
		
			var jsonObj = JSON.parse(event.data);

			if ("open" === jsonObj.type) {
				refreshFriendList(jsonObj);
			} else if ("history" === jsonObj.type) {
				messagesArea.innerHTML = '';
				 var ul = document.createElement('ul');
				ul.id = "area"; 
				messagesArea.appendChild(ul);
				// ?????????jsonObj.message??????redis????????????????????????????????????parse???JSON????????????

				var messages = JSON.parse(jsonObj.message);
				for (var i = 0; i < messages.length; i++) {
					var historyData = JSON.parse(messages[i]);
					var showMsg = historyData.message;

					var li = document.createElement('li');
					// ??????????????????????????????????????????????????????class???, ???????????????????????????
					historyData.sender === self ? li.className += 'me'
							: li.className += 'friend';
					li.innerHTML = showMsg;
					ul.appendChild(li);
				}

				messagesArea.scrollTop = messagesArea.scrollHeight;
			} else if ("chat" === jsonObj.type) {
// 				var ul = document.createElement('ul');
// 				ul.id = "area";
				var li = document.createElement('li');
				jsonObj.sender === self ? li.className += 'me'
						: li.className += 'friend';
				li.innerHTML = jsonObj.message;
				document.getElementById("area").appendChild(li);
				messagesArea.scrollTop = messagesArea.scrollHeight;

			}/*  else if ("close" === jsonObj.type) {
				refreshFriendList(jsonObj);
			} */

		};

		/* webSocket.onclose = function(event) {
			console.log("Disconnected!");
		}; */
	}
	}

	function sendMessage() {
		var inputMessage = document.getElementById("message");
		var friend = statusOutput.textContent;
		var message = inputMessage.value.trim();
		friend = "????????????";
		if (message === "") {
			alert("Input a message");
			inputMessage.focus();
		} else {
			var jsonObj = {
				"type" : "chat",
				"sender" : self,
				"receiver" : friend,
				"message" : message
			};

			webSocket.send(JSON.stringify(jsonObj));
			console.log(JSON.stringify(jsonObj));
			console.log(webSocket);
			inputMessage.value = "";
			inputMessage.focus();
		}
	}
	// ???????????????????????????????????????
	function refreshFriendList(/* jsonObj */) {
		/* var friends = jsonObj.users;
		var row = document.getElementById("row");
		row.innerHTML = ''; */
		addListener();

	}

	//??????????????????????????????????????????????????????????????????
	function addListener() {
		const container = document.querySelector("#message");

		container.addEventListener("click", function(e) {

			var friend = e.srcElement.textContent;
			friend = "????????????";
			updateFriendName(friend);
			var jsonObj = {
				"type" : "history",
				"sender" : self,
				"receiver" : friend,
				"message" : ""
			};
			webSocket.send(JSON.stringify(jsonObj));
		});
	}

	function disconnect() {
		webSocket.close();
		document.getElementById('sendMessage').disabled = true;
/* 		document.getElementById('connect').disabled = false;
		document.getElementById('disconnect').disabled = true; */
	}

	function updateFriendName(name) {
		statusOutput.innerHTML = name;
	}
</script>
	<script>
	
	const chaat = document.querySelector(".textimg");
	const chat = document.querySelector(".chat");
	if(chaat){
	chaat.addEventListener("click", function() {
		if(chat.style.display === "none"){
			chat.style.display = "block";
		}else{
			chat.style.display = "none";
		}
		
	})
	};

</script>
</body>
</html>