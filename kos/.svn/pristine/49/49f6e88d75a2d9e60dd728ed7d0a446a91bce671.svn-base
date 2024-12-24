<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/assets/css/cardorder.css" rel="stylesheet">
    <title>Insert title here</title>
</head>
<body>
    <form id="payform">
    <input type='hidden' name='qrNumber' value='${qrNumber }'>
    <div class="kiosk-3-1-1">
        <div class="kiosk-3-1-1__home-1">
            <img class="kiosk-3-1-1__home-12" src="/assets/icon/home.svg" />
            <a href="/main" class="kiosk-3-1-1__div">처음으로</a>
        </div>
        <div class="kiosk-3-1-1__ic">IC 카드를 투입구에 넣어주세요.</div>
        <div class="kiosk-3-1-1__div3">
            카드 승인 및 취소 요청을 하시라면 닫기 버튼을 눌러주기기 바랍니다.
        </div>
        <div class="kiosk-3-1-1___00-000" id="payMoney"></div>
        <div class="kiosk-3-1-1__div4">
            결제금액
            <br />
        </div>
        <div class="kiosk-3-1-1__line-2"></div>
        <img class="kiosk-3-1-1___1" src="/assets/icon/cardorder.svg" />
        <a href="/pay_card?qrNumber=${qrNumber}" class="kiosk-3-1-1__div5">신용 카드를 삽입해주세요</a>
        <div class="kiosk-3-1-1__group-1">
            <div class="kiosk-3-1-1__div6">남은시간</div>
            <img class="kiosk-3-1-1___12" src="/assets/icon/clock.svg" />
        </div>
        <div class="kiosk-3-1-1___60" style="color: black; font-size: 24px; visibility: visible;" id="sec">60초</div>
        <a href="/rx_order" class="kiosk-3-1-1__rectangle-16">취소</a>
    </div>
    </form>

    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script>
    $(document).ready(function() {
        call_server(payform, '/pay/search', setpayList);
    });

    function setpayList(data) {
		$('#payMoney').text(addComma("" + data.payMoney + "원"));
    }

    let timeLeft = 60; 

    function updateTimer() {
		const timerElement = document.querySelector('.kiosk-3-1-1___60');
        if (timerElement) {
            timerElement.innerText = timeLeft+'초'; 
        } else {
            console.error('Timer element not found');
        }
		if (timeLeft > 0) {
            timeLeft--;
            setTimeout(updateTimer, 1000);
        } else {
            const qrNumber = document.querySelector('input[name="qrNumber"]').value;
            window.location.href = '/rx_order?qrNumber=${qrNumber}';
        }
    }

    window.onload = function() {
        updateTimer();
    }
    </script>
</body>
</html>
