<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/assets/css/qrcode.css" rel="stylesheet">
<link href="/assets/vars/qrcode_vars.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="kiosk-1-1">
		<a class="kiosk-1-1__rectangle-4" href="/main">취소</a>
		<div class="kiosk-1-1__qr">
			<span> <span class="qr-span">QR코드</span> <span
				class="qr-span2">대기중 입니다...</span>
			</span>
		</div>
		<div class="kiosk-1-1__qr2">
			키오스크 하단 스캐너에 <br /> 처방전 QR코드를 인식시켜 주세요
		</div>
		<a href="/qrcode_m"> <img
			class="kiosk-1-1__image-3" src="/assets/icon/px_p.svg" alt="Icon">
		</a>
	</div>
</body>
</html>
