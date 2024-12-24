<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QR 번호 입력</title>
    <link href="/assets/css/qrcode_no.css" rel="stylesheet">
</head>
<body>
    <div class="kiosk-container">
        <div class="title-area">
            <h1>QR 번호 입력</h1>
        </div>
        <div class="display-area">
            <input type="text" id="qrNumber" name="qrNumber" class="input-field" readonly placeholder="번호를 입력하세요">
        </div>
        <div class="keypad">
            <div class="key" onclick="addNumber('1')">1</div>
            <div class="key" onclick="addNumber('2')">2</div>
            <div class="key" onclick="addNumber('3')">3</div>
            <div class="key" onclick="addNumber('4')">4</div>
            <div class="key" onclick="addNumber('5')">5</div>
            <div class="key" onclick="addNumber('6')">6</div>
            <div class="key" onclick="addNumber('7')">7</div>
            <div class="key" onclick="addNumber('8')">8</div>
            <div class="key" onclick="addNumber('9')">9</div>
            <div class="key empty"></div>
            <div class="key" onclick="addNumber('0')">0</div>
            <div class="key" onclick="backspaceInput()">⌫</div>
        </div>
        <div class="action-buttons">
            <button class="cancel-button" onclick="cancelInput()">취소</button>
            <button class="submit-button" onclick="verifyQrNumber()">확인</button>
        </div>
    </div>

    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script>
        function addNumber(num) {
            const inputField = document.getElementById('qrNumber');
            if (inputField.value.length < 10) {
                inputField.value += num;
            }
        }

        function backspaceInput() {
            const inputField = document.getElementById('qrNumber');
            inputField.value = inputField.value.slice(0, -1);
        }

        function cancelInput() {
            const inputField = document.getElementById('qrNumber');
            inputField.value = '';
        }

        function verifyQrNumber() {
            const qrNumber = document.getElementById('qrNumber').value;

            if (!qrNumber) {
                alert("번호를 입력하세요!");
                return;
            }
            
            
            $.ajax({
	            type: 'POST',
	            url: '/qr/verify',
	            data: { qrNumber: qrNumber }, 
                success: function(data) {
                    if (data) {
                        window.location.href = '/rx_order?qrNumber='+qrNumber;
                    } else {                      
                        alert("번호를 확인해주세요.");
                    }
                },
	            error: function() {
	                alert("오류발생");
                }
            });
        }
    </script>
</body>
</html>


