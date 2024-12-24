<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/assets/css/pay_card.css" rel="stylesheet">
<link href="/assets/vars/pay_card_vars.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<form id="payform">
	<input type='hidden' name='qrNumber' value='${qrNumber}'>
	<input type='hidden' name='payMoney' value='${payMoney}'>
	<div class="kiosk-3-1-1-1">
		<div class="kiosk-3-1-1__home-1">
			<img class="kiosk-3-1-1__home-12" src="/assets/icon/home.svg" /> <a
				href="/main" class="kiosk-3-1-1__div">처음으로</a>
		</div>
		<div class="kiosk-3-1-1-1___00-000" id="payMoney"></div>
		<div class="kiosk-3-1-1-1__div3">
			결제금액 <br />
		</div>
		<div class="kiosk-3-1-1-1__line-2"></div>
		<div class="kiosk-3-1-1-1__div4">영수증을 받아가 주세요</div>
		<div class="kiosk-3-1-1-1___001" id="newbuyCode">접수번호 :</div>
		<img class="kiosk-3-1-1-1___1" src="/assets/icon/sand.svg" />
		<div class="kiosk-3-1-1-1__div5">
			결제가 완료되었습니다. <br /> 약을 제조 중입니다.
		</div>
		<div class="kiosk-3-1-1-1__div6">
			처방전을 접수청구에 제출해 주세요. <br /> 결제완료 화면은 잠시후 자동으로 닫힙니다.
		</div>
	</div>
	</form>
    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script>
    $(document).ready(function() {
        call_server(payform, '/card/search', setpayList);
    });

    function setpayList(data) {
        $('#payMoney').text(addComma("" + data.payMoney + "원"));
        $('#newbuyCode').text("접수번호 : "+data.newbuyCode);
    }
    </script>

</body>
</html>
