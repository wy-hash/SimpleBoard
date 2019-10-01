//websocket을 지정한 URL로 연결
const sock = new SockJS("/echo");
//websocket 서버에서 메세지를 보내면 자동으로 실행된다.
sock.onmessage = onMessage;
//websocket 과 연결을 끊고 싶을때 사용하는 메서드
sock.onclose = onClose;

$(function(){
	$("#chatForm").submit(function(event){
		//새로고침방지
		event.preventDefault();

		console.log('send message...');
		//소켓전송
		sendMessage();
	});
});

function sendMessage(){
	//websoket으로 메세지 전송
	sock.send($("#message").val());
	$("#message").val('').focus();//채팅 포커스
}

//e 파라미터는 websocket이 보내준 데이터
function onMessage(e){
	const data = e.data;
	let sessionid = null;
	let message = null;
	
	//문자열을 split
	const strArr = data.split('|');
	
	for(let i =0;i<strArr.length; i++){
		console.log('str['+i+']: '+ $.trim(strArr[i]));
	}
	
	//현재세션 id
	const curr_session = $('#sessionid').val();
	console.log('current session id: '+ curr_session);
	
	sessionid = $.trim(strArr[0]); // 현재 메세지를 보낸 사람의 세션 등록
	message = $.trim(strArr[1]);// 현재 메세지를 저장
	
	//나와 상대방이 보낸 메세지를 구분하여 영역을 나눈다.
	if(sessionid == curr_session){
		let printHTML = "<div class='well'>";
		printHTML += "<div class='alert alert-info'>";
		printHTML += "<strong>["+sessionid+"] -> "+message+"</strong>";
		printHTML += "</div>";
		printHTML += "</div>";
		
		$("#chatdata").append(printHTML);
	} else{

		let printHTML = "<div class='well'>";
		printHTML += "<div class='alert alert-warning'>";
		printHTML += "<strong>["+sessionid+"] -> "+message+"</strong>";
		printHTML += "</div>";
		printHTML += "</div>";
		
		$("#chatdata").append(printHTML);
	}
	console.log('chatting data: '+data);
	
	//sock.close();
}



function onClose(e){
	$('#data').append("연결 끊김");
}