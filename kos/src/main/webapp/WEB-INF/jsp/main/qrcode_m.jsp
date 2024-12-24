<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/assets/css/qrcode_m.css" rel="stylesheet">
<link href="/assets/vars/qrcode_vars.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="kiosk-1-2">
  <div class="kiosk-1-2__rectangle-4"></div>
  <div class="kiosk-1-2__div">
	<a href="javascript:history.back()" class="kiosk-1-2__div2">취소</a>
  </div>
  <div class="kiosk-1-2__qr">
    <span>
      <span class="qr-span">QR코드</span>
      <span class="qr-span2">대기중 입니다</span>
    </span>
  </div>
  <div class="kiosk-1-2__qr2">
    키오스크 하단 스캐너에
    <br />
    QR코드를 인식시켜 주세요
  </div>
  <img class="kiosk-1-2__qr-1" src="/assets/icon/qrm.svg" />
  <div class="kiosk-1-2__group-4">
    <div class="kiosk-1-2__rectangle-16"></div>
    <a href="/qrcode_no" class="kiosk-1-2__div3">번호입력</a>
  </div>
</div>

</body>
</html>