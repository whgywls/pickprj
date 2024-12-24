<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/assets/css_p/product_voice.css" rel="stylesheet">
    <link href="/assets/vars_p/product_voice_vars.css" rel="stylesheet">
    <title>Insert title here</title>
</head>
<body>
    <div class="kiosk-1-3__div">
        <span>
            <span class="div-span">약품</span>
            <span class="div-span2">알레르기</span>
            <span class="div-span3">안내</span>
        </span>
    </div>
    <div class="kiosk-1-3__div2">
        약품 알레르기가 있는 분께서는
        <br />
        구매전 음성인식을 통해 말씀해 주시길 바랍니다.
    </div>
    <div class="kiosk-1-3__div3">
        식약처 고시 알레르기 안내
        <br />
        감기약, 진통제, 소염진통제
    </div>
    <div class="kiosk-1-3__div4">
        아스피린, 이부프로펜, 페니실린,
        <br />
        세팔로스포린, 퀴놀론설파계 항생제, 에날라프릴
    </div>
    <div class="kiosk-1-3__component-2">
        <div class="kiosk-1-3__div5">식약처 고시 약물 알레르기 유발품</div>
        <div class="kiosk-1-3__rectangle-5"></div>
    </div>
    
    <a href="/product_cat" class="kiosk-1-3__rectangle-31">동의하기</a>
    <div class="kiosk-1-3__component-22">
        <div class="kiosk-1-3__rectangle-312"></div>
        <div class="kiosk-1-3__div8">
            <div class="kiosk-1-3__div9">
                <div class="kiosk-1-3__div10" onclick="window.history.back()">취소</div>
            </div>
        </div>
    </div>

    
<button type="button" class="voice-button" onclick="startVoiceRecognition()">
    <img class="kiosk-1-3___1" src="/assets/icon_p/voice.svg" alt="음성 버튼" />
</button>

<!-- 모달 창 -->
<div id="voiceModal" class="modal">
    <div class="modal-content">
        <span class="close-button">&times;</span>
        <h2>알레르기를 말해주세요.</h2>
        <p id="voiceMessage">듣는중....</p>
        <div class="modal-buttons">
            <button class="cancel-button">취소</button>
            <button class="confirm-button">확인</button>
        </div>
    </div>
</div>


    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script>
 // 모달과 버튼을 가져오기
    const modal = document.getElementById("voiceModal");
    const button = document.querySelector(".voice-button");
    const closeButton = document.querySelector(".close-button");
    const cancelButton = document.querySelector(".cancel-button");
    const confirmButton = document.querySelector(".confirm-button");

    // 버튼 클릭 시 모달 열기
    button.addEventListener("click", function() {
        modal.style.display = "flex";
    });

    // 모달 닫기 버튼 클릭 시 모달 닫기
    closeButton.addEventListener("click", function() {
        modal.style.display = "none";
    });

    // 취소 버튼 클릭 시 모달 닫기
    cancelButton.addEventListener("click", function() {
        modal.style.display = "none";
    });

    // 확인 버튼 클릭 시 다음 페이지로 이동
    confirmButton.addEventListener("click", function() {
        // 다음 페이지로 이동 (예: /next-page)
        window.location.href = "/next-page"; // 원하는 페이지 URL로 변경
    });

    // 모달 밖을 클릭하면 모달 닫기
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });

    
	<!--음성인식 코드-->
	function startVoiceRecognition(){
		$.ajax({
		        url: '/order/getSpeech',  
		        type: 'GET',
		        success: function(data) {
		            if (data) {
						successRequest(data);
		            } else {
		                console.log("에러발생");
		            }
		    	},
				error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
		});
	}
	
	<!--음성인식 성공시 호출하는 함수-->
	function successRequest(data){
		console.log(data);
		document.getElementById('voiceMessage').textContent = data;
	}
    </script>
    
</body>
</html>
