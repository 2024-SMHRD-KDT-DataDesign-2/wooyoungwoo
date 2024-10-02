<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
@import url('./assets/css/chattingPage.css');
</style>
<style>
.container {
	width: 60%;
	left: 20%;
	position: relative;
}
</style>
</head>
<body>
	<div class="container">
		<div class="messenger">
			<div class="conversations-list toggle-target toggle-target-active">
				<div class="head">
					<a href="#!" class="setting-button"><i
						class="ion-android-settings"></i></a>
					<div class="title">Messenger</div>
					<a href="#!" class="close-button toggle-button"
						data-toggle-target-selector=".conversations-list"><i
						class="ion-close"></i></a> <a href="#!"
						class="new-button toggle-button"
						data-toggle-target-selector=".conversation > .head > .create"><i
						class="ion-compose"></i></a>
				</div>
				<div class="search">
					<i class="icon search-icon ion-ios-search"></i> <input
						type="search" placeholder="Search Messenger" class="search-input" />
				</div>
				<div class="conversations-list-items slimscroll"
					data-height="calc(100% - 96px)">
					<div class="conversations-list-item single">
						<a href="#!" class="image"> <img
							src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
						</a> <a href="#!" class="name">John Doe</a> <a href="#!"
							class="message">You: Hi</a>
						<div class="time">11:20 AM</div>
						<div class="seen">
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
						</div>
					</div>
					<div class="conversations-list-item unread multiple">
						<a href="#!" class="image"> <img
							src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
							<img
							src="https://cdn.iconscout.com/icon/free/png-256/avatar-369-456321.png" />
						</a> <a href="#!" class="name">John Doe, Jane Doe</a> <a href="#!"
							class="message">John Doe: Hello everybody!</a>
						<div class="time">11:00 AM</div>
						<div class="unread-count">2</div>
					</div>
					<div class="conversations-list-item multiple">
						<div class="image">
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-369-456321.png" />
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-380-456332.png" />
						</div>
						<a href="#!" class="name">John Doe, Jane Doe, Jonathan Doe</a> <a
							href="#!" class="message">Jane Doe: Xup house!</a>
						<div class="time">10:30 AM</div>
					</div>
				</div>
			</div>
			<div class="conversation">
				<div class="head">
					<div class="create toggle-target">
						<label class="search-label">To:</label> <input type="search"
							class="search-input" placeholder="Type the name of person" /> <a
							href="#!" class="close-button toggle-button"
							data-toggle-target-selector=".conversation > .head > .create">
							<i class="ion-close"></i>
						</a>
					</div>
					<div class="dashboard">
						<a href="#!"
							class="conversations-list-toggle-button toggle-button"
							data-toggle-target-selector=".conversations-list"> <i
							class="ion-android-menu"></i>
						</a>
						<div class="name">John Doe</div>
						<div class="time">Active 25m ago</div>
						<div class="actions">
							<a href="#!" class="action call-button"
								title="This user is unavailable for voice call"
								data-disabled="1" data-user-id="4" data-type="voice"> <i
								class="ion-android-call"></i>
							</a> <a href="#!" class="action call-button "
								title="This user is unavailable for video call"
								data-disabled="1" data-user-id="4" data-type="video"> <i
								class="ion-ios-videocam"></i>
							</a> <a href="#!" class="toggle-button action info-button"
								data-toggle-target-selector=".conversation > .messaging"> <i
								class="ion-ios-information"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="messaging toggle-target">
					<div class="info single">
						<div class="image">
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png">
						</div>
						<a class="name" href="#!">John Doe</a>
						<div class="relationship">You are friends on Facebook</div>
						<div class="location">Lives in Abuja, Nigeria</div>
					</div>
					<div class="messages">
						<div class="message owned">
							<div class="avatar">
								<img
									src="https://cdn.iconscout.com/icon/free/png-256/avatar-367-456319.png" />
							</div>
							<div class="content">
								<div class="text">Hello</div>
								<div class="actions">
									<a class="action delete-button" href="#!"><i
										class="ion-android-delete"></i></a>
								</div>
								<div class="time">
									<time>9:15 AM</time>
								</div>
							</div>
						</div>
						<div class="message">
							<div class="avatar">
								<img
									src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
							</div>
							<div class="content">
								<div class="text">Are you there?</div>
								<div class="actions">
									<a class="action delete-button" href="#!"><i
										class="ion-android-delete"></i></a>
								</div>
								<div class="time">
									<time>10:55 AM</time>
								</div>
							</div>
						</div>
						<div class="message owned">
							<div class="avatar">
								<img
									src="https://cdn.iconscout.com/icon/free/png-256/avatar-367-456319.png" />
							</div>
							<div class="content">
								<div class="text">Hi</div>
								<div class="actions">
									<a class="action delete-button" href="#!"><i
										class="ion-android-delete"></i></a>
								</div>
								<div class="time">
									<time>11:20 AM</time>
								</div>
							</div>
						</div>
						<div class="seen">
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
						</div>
					</div>
					<form enctype="multipart/form-data" action="" method="post"
						class="editor">
						<textarea class="message-input" placeholder="Type a message..."></textarea>
						<div class="actions">
							<a href="#!" class="action voice-recorder-button"> <i
								class="icon ion-mic-a"></i>
							</a> <a href="#!" class="action emoticon-button"> <i
								class="icon ion-android-sad"></i>
							</a> <a href="#!" class="action gif-button"> <i
								class="icon gif-icon"></i>
							</a> <a href="#!" class="action photo-button"> <i
								class="icon ion-image"></i>
							</a> <a href="#!" class="action attachment-button"> <i
								class="icon ion-android-attach"></i>
							</a> <a href="#!" class="action send-button"> <i
								class="icon send-icon" data-content="SEND"></i>
							</a>
						</div>
					</form>
				</div>
				<div class="info single">
					<div class="head">
						<div class="image">
							<img
								src="https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png" />
						</div>
						<a class="name" href="#!">John Doe</a>
						<div class="time">Active 25m ago</div>
						<a href="#!" class="settings-button"> <i
							class="icon ion-android-settings"></i>
						</a>
					</div>
					<div class="body">
						<a class="options-toggle-button toggle-button" href="#!"
							data-toggle-target-selector=".conversation > .info .options-list">
							<span>Options</span> <i
							class="icon toggle-button-icon ion-chevron-left"></i>
						</a>
						<div class="options-list toggle-target">
							<div class="options-list-item">
								<a href="#!" class="action delete-button"> <i
									class="icon ion-android-delete"></i> <span class="label">Delete
										Conversation</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./assets/js/chattingPage.js"></script>
</body>
</html>