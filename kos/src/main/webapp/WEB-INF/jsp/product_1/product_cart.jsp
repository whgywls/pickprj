<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/assets/css_p/product_cart.css" rel="stylesheet">
<link href="/assets/vars_p/product_cart_vars.css" rel="stylesheet">
<title>Insert title here</title>
</head>
	<body>
		<div class="kiosk-1-3">
			<div class="kiosk-1-3__rectangle-32"></div>
			<div class="kiosk-1-3__div">구매목록!</div>
			<div class="kiosk-1-3__line-3"></div>
			<div class="kiosk-1-3__ellipse-6"></div>
			<div class="kiosk-1-3__ellipse-7"></div>
			<div class="kiosk-1-3__ellipse-8"></div>
			<div class="kiosk-1-3__ellipse-9"></div>
			<img class="kiosk-1-3___2-1" src="/assets/icon_p/medi_1.svg" /> <img
				class="kiosk-1-3___2-2" src="/assets/icon_p/medi_1.svg" /> <img
				class="kiosk-1-3___2-3" src="/assets/icon_p/medi_1.svg" />
			<div class="kiosk-1-3__div2">서비스가 본격 시작되면 위의 진행도가 보여요!(일부 프로세스
				제외)</div>
			<img class="kiosk-1-3___2" src="/assets/icon_p/cart.svg" />
			<div class="kiosk-1-3__div3">주문</div>
			<div class="kiosk-1-3__line-9"></div>
			<form id="getform">
				<table class="order-table">
					<thead>
						<tr>
							<th>취소</th>
							<th>상품명</th>
							<th>수량</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody id="getitem">
					</tbody>
				</table>
			</form>
	
	
			<div class="kiosk-1-3__line-10"></div>
			<div class="kiosk-1-3__div4">합계</div>
			<div class="kiosk-1-3__divPrice" id="totalAmount">$0원</div>
		</div>
	
		<a class="kiosk-1-3__rectangle-64" href="/product_end">주문 완료</a>
		<div class="kiosk-1-3__rectangle-65">도움기능...</div>
		<a class="kiosk-1-3__rectangle-66" href="/main">처음으로</a>
	
	
	
		<div class="kiosk-1-3__div9">약품 알레르기가 있은 분께서는 상세페에지 를 통하여 확인 하여
			주시길 바랍니다.</div>
	
	
		<script src="assets/js/common.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
		
		var totalAmount = 0; // 초기값 0으로 설정
		      //숫자 표시할 요소와 버튼을 변수에 저장
		      const minusButtons = document.querySelectorAll('.minus');
		      const plusButtons = document.querySelectorAll('.plus');
		      
		      // 숫자 표시할 요소를 변수에 저장
		      const quantityElements = document.querySelectorAll('.prdCount');
		      
		      // 버튼 클릭 시 숫자 변경하는 함수
		      minusButtons.forEach((button, index) => {
		          button.addEventListener('click', () => {
		              let currentValue = parseInt(quantityElements[index].textContent); // 현재 값 가져오기
		              if (currentValue > 1) {
		                  quantityElements[index].textContent = currentValue - 1; // 1 감소
		              } else {
		                  alert('1 이하로 내려갈 수 없습니다!'); // 1 이하로 내려가려고 하면 경고 메시지
		              }
		          });
		      });
		      
		      plusButtons.forEach((button, index) => {
		          button.addEventListener('click', () => {
		              let currentValue = parseInt(quantityElements[index].textContent); // 현재 값 가져오기
		              quantityElements[index].textContent = currentValue + 1; // 1 증가
		          });
		      });
				
		     	$(document).ready(function() {
	                call_server(getform, '/get_product_cart', getProductitem);
	            });	
		    
		     	function getProductitem(list) {
		     	    $('#getitem').empty(); 
		     	    console.log(list);
		     	    for (var i = 0; i < list.length; i++) {
		     	    	var productTotal = Number(list[i].buyQty) * Number(list[i].sellPrice);  // 각 상품의 총액 계산
		                totalAmount += productTotal;
		     	    	
		     	        var str = "<tr id='row" + i + "'>";
		     	        str += "<td><button class='delete-btn' data-row='row" + i + "'>삭제</button></td>";
		     	        str += "<td>" + list[i].prdName + "</td>"; 
		     	        str += "<td>" + list[i].buyQty + "</td>"; 
		     	        str += "<td>" + productTotal + "</td>"; 
		     	        str += "</tr>";
		     	        $('#getitem').append(str);
		     	    }
		            // 총합을 #totalAmount 및 kiosk-1-3__divPrice에 설정
		            $('#totalAmount').text(totalAmount+'원');  // 숫자 형식 그대로 출력
	

		     	    $('.delete-btn').on('click', function () {
		     	        var rowId = $(this).data('row'); 
		     	        $('#' + rowId).remove();
		     	    });
		     	}

		     	
		     	
		        
		</script>
	</body>
	</html>