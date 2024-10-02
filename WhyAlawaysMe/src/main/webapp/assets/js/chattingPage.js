let ws;
let currentRoom = "";
var userId = "${sessionScope.user_id}"; 

function sendMessage() {
	let message = document.getElementById("message").value;
	let chatArea = document.getElementById("chatArea");

	if (currentRoom) {
		chatArea.value += "나 : " + message + "\n";
		ws.send(currentRoom + ":" + message);
	} else {
		alert("Please join a room first.");
	}
	document.getElementById("message").value = '';
}

function creatRoom(element) {
	// 클릭한 요소의 부모 <form>에서 input 값을 찾아오기
	let form = element.closest('form');
	let roomIdx = form.querySelector('input[name="room_idx"]').value;
	
	console.log("Room Index:", roomIdx);
	console.log("User ID:", userId);

	// 방 이름과 사용자 ID 확인
	if (!roomIdx || !userId) {
		return;
	}

	// WebSocket URL에 방 이름과 사용자 ID를 포함
	let ws = new WebSocket("ws://" + location.host + "/WhyAlawaysMe/chat/" + roomIdx + "/" + userId);

	ws.onmessage = function(event) {
		var chatArea = document.getElementById("chatArea");
		chatArea.value += event.data + "\n";
	};

	ws.onclose = function() {
		console.log("Disconnected from server.");
	};

	// 폼을 제출
	form.submit();
}

window.addEventListener('click', (event) => {
    let button = event.target;
    if (document.documentElement.contains(event.target)) {
        do {
            if (button.matches('.toggle-button[data-toggle-target-selector]')) {
                event.preventDefault();
                let target = document.querySelector(button.getAttribute('data-toggle-target-selector'));
                if (target) {
                    if (target.classList.contains('toggle-target-active')) {
                        button.classList.remove('toggle-button-active');
                        target.classList.remove('toggle-target-active');
                    } else {
                        button.classList.add('toggle-button-active');
                        target.classList.add('toggle-target-active');
                    }
                }
            }
            button = button.parentElement;
        } while (button !== null);
    }
});