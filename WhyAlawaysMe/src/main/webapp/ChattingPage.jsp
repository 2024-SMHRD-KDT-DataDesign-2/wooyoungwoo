<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="assets/css/chattingPage.css" />

</head>

<body>
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
		integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
		crossorigin="anonymous">

	<div class='chat-page-container'>
		<div class='area-1'>
			<div class='list-friend-container'>
				<div class='title-frame'>Message Page</div>
				<form action="ChattingRoomService" method="post">
					<div class='room-container'>
						<input type="text" id="roomName" name="room_info"
							placeholder="Room Name"> <input type="submit"
							value="Create Room">
					</div>
				</form>
				<div class='list-friend-frame'>
					<div class='friend-container'>
						<c:forEach items="${chatRoom}" var="cr">
							<form action="CreateRoom" method="post" onsubmit="return false;">
								<div class='avatar-name' onclick="creatRoom(this)">
									<input type="hidden" name="user_id" value="${cr.user_id}">
									<div class='avatar-frame'>
										<img src="${cr.user_profile}" alt="Avatar">
									</div>
									<div class='name-frame'>${cr.room_title}</div>
									<input type="hidden" name="room_idx" value="${cr.room_idx}">
								</div>
							</form>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class='area-2'>
			<div class='chat-area-container'>
				<div class='title-frame'>title</div>

				<div>
					<div>
						<div>
							<textarea id="chatArea" rows="20" cols="50" readonly>
								<c:forEach items="${chatList}" var="msg">
									<c:if test="${! empty msg.chatting}">
	        							${msg.chatter} : ${msg.chatting}						
									</c:if>
        							<c:if test="${! empty msg.emoticon}">
        								${msg.chatter} : ${msg.emoticon}
        							</c:if>
        							<c:if test="${! empty msg.chat_file}">
        								${msg.chatter} : ${msg.chat_file}
        							</c:if>
    							</c:forEach>	
							</textarea>
						</div>
					</div>

					<div class='input-chat-frame'>
						<div class='search-container'>
							<form action="CreateChat" method="post">
								<input type="text" class='search-input' id="message"
									name="message" placeholder='enter your messages'>
								<input type="hidden" name = "room_idx" id="currentRoomInput">
								<button class='search-button' onclick="sendMessage()">Send</button>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

		<script>
			document.getElementById("message").addEventListener("keypress",
					function(event) {
						if (event.key === "Enter") {
							sendMessage();
						}
					});
		</script>
	</div>
	<script src="./assets/js/chattingPage.js"></script>
</body>

</html>
