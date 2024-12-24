<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제 화면</title>
    <link href="/assets/css/rx_order.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="title">
            <p>처방정보와 금액을 확인하신 후,</p>
            <p><span class="highlight">결제</span>를 눌러주세요</p>
        </div>
		<form id="Rxsearchform">
		    <input type='hidden' name='qrNumber' value='${qrNumber }'>
		    <table class="table" id="Rxtable">
		        <thead>
		            <tr>
		                <th scope="col">번호</th>
		                <th scope="col" id="rxDt">진료일</th>
		                <th scope="col" id="rxDoct">처방의</th>
		                <th scope="col" id="userName">성명</th>
		                <th scope="col" id="payMoney">수납금액</th>
		                <th scope="col">삭제</th>
		            </tr>
		        </thead>
		        <tbody>  
		        </tbody>
		    </table>
		</form>
		<div class="total-amount">
		    <p>결제금액: <span id="totalAmount"></span> 원</p>
		</div>
        <div class="button-container">
            <a href="#" class="button">카운터 결제</a>
            <a href="/card_order?qrNumber=${qrNumber}" class="button button-blue">카드 결제</a>
        </div>
    </div>
    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script>
    // 조회
    $(document).ready(function() {
        call_server(Rxsearchform, '/rx/search', setRxList);
    });

    function setRxList(list) {
        $('#Rxtable tbody').empty();
        var payMoney = 0;
        for (var i = 0; i < list.length; i++) {
        	payMoney+=Number(list[i].payMoney);
            var str = "<tr>";
            str += "<td>" + (i + 1) + "</td>"; 
            str += "<td>" + list[i].rxDt + "</td>"; 
            str += "<td>" + list[i].rxDoct + "</td>"; 
            str += "<td>" + list[i].userName + "</td>";
            str += "<td>" + list[i].payMoney + "원</td>";
            str += `<td><button onclick="deleteRow(${list[i].id})">삭제</button></td>`; 
            str += "</tr>";
            $('#Rxtable tbody').append(str);
        }
        $('#totalAmount').text(addComma(""+payMoney));
    }
    

    </script>
</body>
</html>
