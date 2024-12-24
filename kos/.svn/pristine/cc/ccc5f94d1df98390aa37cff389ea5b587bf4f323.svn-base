<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>키오스크 화면</title>
    <link href="/assets/css_p/product_item.css" rel="stylesheet">
</head>
<body>
    <div class="custom-box">
        <img src="/assets/icon_p/logo.svg" alt="로고">
    </div>
<!-- 버튼 클릭 시 카테고리별로 상품 목록을 가져옵니다 -->
<div class="button-container">
    <button class="custom-button" id="coldMedicineBtn" >
        <img src="/assets/icon_p/medi.svg" alt="아이콘 1"> 감기약
    </button>
    <button class="custom-button" id="digestiveBtn">
        <img src="/assets/icon_p/jang.svg" alt="아이콘 2"> 소화기관
    </button>
    <button class="custom-button" id="topicalBtn">
        <img src="/assets/icon_p/skin.svg" alt="아이콘 3"> 외용약
    </button>
    <button class="custom-button" id="energyBtn">
        <img src="/assets/icon_p/vita500.svg" alt="아이콘 4"> 자양강장제
    </button>
    <button class="custom-button" id="suppliesBtn">
        <img src="/assets/icon_p/mask.svg" alt="아이콘 5"> 용품
    </button>
</div>

    
    <!-- 구매목록 -->
    <div class="cartbox">
    	<form id="cartform">
        <table>
	        <thead>
	            <tr>
	                <td><img src="/assets/icon_p/cart.svg" alt="카트 아이콘"> 구매목록</td>
	            </tr>
	        </thead>
	        <tbody id="cart-item">
	            <!-- 구매목록 아이템이 여기에 동적으로 추가됩니다 -->
	        </tbody>
            
        </table>
        </form>
    </div>
    
        <!-- 알림창 -->
    <div id="errorPopup" class="popup">
        <div class="popup-content">
            <span class="popup-close" id="closePopup">&times;</span>
            <p>구매목록이 비어 있습니다. 상품을 추가해주세요.</p>
        </div>
    </div>

    <button class="callbox">
        <img src="/assets/icon_p/doct.svg" alt="화상통화 아이콘">
        <span>약사와 화상통화 연결</span>
    </button>
    <div class="medicine-cat">감기약</div>
    <div class="submenu-info">아래에서 세부메뉴를 확인하세요</div>
    <a href="/main">
    <button class="circle-button">
        <img src="/assets/icon_p/hhome.svg" alt="SVG 그림" class="circle-image">
    </button>
    </a>
    <button type="button" class="additional-button button-1">해열/진통</button>
    <button type="button" class="additional-button button-2">콧물/코막힘</button>
    <button type="button" class="additional-button button-3">가래</button>
    <button type="button" class="additional-button button-4">기침</button>

<div class="itembox-container">
	<form id="searchform">
    	<div class="itembox-row">
	        <div class="itembox">
	            <img id="prdImg" alt="상품 이미지" class="item-image">
	            
	            <div class="item-details">
	                <span class="item-name" id="prdName"></span>
	                <span class="item-price" id="sellPrice"></span>
	            </div>
	        </div>
		</div>
	</form>
</div>

<div id="sidebar" class="sidebar">
    <div class="sidebar-content">
        <!-- 닫기 버튼 (박스) -->
        <div id="closeSidebar" class="sidebar-close-btn">
            <img src="/assets/icon_p/엑스엑.svg" class="close-btn-image">
        </div>

        <!-- 사이드바 이미지 컨테이너 -->
        <div id="sidebarImageContainer">
            <img src="" alt="상품 이미지" class="sidebar-image" id="prdImg">
            <div id="prdName" class="sidebar-image-text">상품이름</div>
            <div id="sellPrice" class="sidebar-price">가격</div> 
            <div id="prdCode" class="sidebar-price" style="display: none;"></div>

            <!-- 성분 정보 -->
            <div class="ingredient-info">
                <div id="ingredientTitle" class="ingredient-title">성분정보</div>
                <div id="prdDesc" class="ingredient-item">· 1정 615mg</div>
            </div>
            
            <!-- 수량 선택 -->
            <div class="quantity-container">
                <button class="quantity-btn" id="decreaseQuantity">-</button>
                <input type="number" id="quantityInput" class="quantity-input" value="1" min="1">
                <button class="quantity-btn" id="increaseQuantity">+</button>
            </div>

            <!-- 추가 버튼 -->
            <button class="add-to-cart-btn">추가</button>
        </div>
    </div>
</div>


    <a href="#" class="gocart">
        주문내역 확인 후 결제하기
    </a>

    <a href="#" class="help-box">
        <span class="help-text">도움기능...</span>
    </a>

    <div class="price-container">
        <img src="/assets/icon_p/cart.svg" alt="SVG 이미지" class="positioned-svg">
        <span class="price-text" id="totalSellPrice">￦0원</span>
    </div>

    <a href="/main" class="gohome">
        <span>처음으로</span>
    </a>

    <div class="allergy-text">
        약품 알레르기가 있은 분께서는 상세페이지를 통하여 확인하여 주시길 바랍니다.
    </div>
    
    <form id="hiddenform">
    	<input type='hidden' id='categoryCode' name='categoryCode'>
    	
    </form>

    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script>
    

        //화면 로딩 시 검색함수 시작
$(document).ready(function() {
    console.log("Document is ready.");

		//상품 클릭 시 사이드바 열기
		$(document).on('click', '.itembox', function() {
			var prdCode = $(this).data('code');
			var prdName = $(this).data('name');
		    var prdPrice = $(this).data('price');
		    var prdImg = $(this).find('img').attr('src');
		    var prdDesc = "여기에 제품 설명이 들어갑니다.";
		
		    console.log(prdCode);
		    console.log(prdName);
		    console.log(prdPrice);
		    
		    
		    
		    $('#prdCode').text(prdCode);
		    $('#prdName').text(prdName);
		    $('#sellPrice').text(prdPrice);
		    $('#prdImg').attr('src', prdImg); 
		    $('#prdDesc').text(prdDesc);
		    
		    console.log(prdCode);
		    // 수량 초기화
		    $('#quantityInput').val(1);  // 수량을 1로 초기화
		
		 // 사이드바가 이미 열려있을 경우에는 새로 열지 않음
	        if (!$('#sidebar').hasClass('expanded')) {
	            $('#sidebar').addClass('expanded');  // 'expanded' 클래스를 추가하여 'bottom' 값을 0으로 변경
	        }
	    });

	    // 사이드바 닫기 버튼 클릭 시
	    $('#closeSidebar').click(function() {
	        $('#sidebar').removeClass('expanded');  // 'expanded' 클래스를 제거하여 사이드바를 닫음
	    });

	    // 사이드바 외부 클릭 시 사이드바 닫기
	    $(window).click(function(event) {
	        if ($(event.target).is('#sidebar')) {
	            $('#sidebar').removeClass('expanded'); // 'expanded' 클래스를 제거하여 사이드바를 닫음
	        }
	    });
	    
	    
	    // 수량 감소 버튼
	    $('#decreaseQuantity').click(function() {
	        var currentQuantity = parseInt($('#quantityInput').val());
	        if (currentQuantity > 1) {
	            $('#quantityInput').val(currentQuantity - 1);  // 수량 1 감소
	        }
	    });

	    // 수량 증가 버튼
	    $('#increaseQuantity').click(function() {
	        var currentQuantity = parseInt($('#quantityInput').val());
	        $('#quantityInput').val(currentQuantity + 1);  // 수량 1 증가
	    });
	    
	 	// 수량 감소 버튼 클릭 시(구매목록)
	    $(document).on('click', '.decrease-quantity', function() {
	        var quantityElement = $(this).siblings('.quantity');
	        var currentQuantity = parseInt(quantityElement.text());
			
	        if (currentQuantity > 1) {
	            quantityElement.text(currentQuantity - 1);  // 수량 1 감소
	            $(this).siblings('.buyQtyClass').val(currentQuantity - 1);
	            updateTotalPrice();  // 총합 갱신
	            
	        }
	    });

	    // 수량 증가 버튼 클릭 시(구매목록)
	    $(document).on('click', '.increase-quantity', function() {
	        var quantityElement = $(this).siblings('.quantity');
	        var currentQuantity = parseInt(quantityElement.text());

	        quantityElement.text(currentQuantity + 1);  // 수량 1 증가
	        $(this).siblings('.buyQtyClass').val(currentQuantity + 1);
	        
	        updateTotalPrice();  // 총합 갱신
	
	    });
	    
		 // 전체 금액을 추적하는 변수
	    var totalPrice = 0;  // totalPrice 변수 초기화
   
		// "추가" 버튼 클릭 시 구매목록에 상품 추가
		var cartIdx = 0;
	    
	    $('.add-to-cart-btn').click(function() {
	    	
	    	// 사이드바에서 상품 이름을 가져옵니다.
	        var prdName = $('#prdName').text();  // 상품 이름만 가져옴
	        var sellPrice = $('#sellPrice').text();  // 상품 가격
	        var quantity = $('#quantityInput').val();  // 수량 가져오기
			var prdCode = $('#prdCode').text();
	        if (!prdName) {
	            console.log("상품 이름을 찾을 수 없습니다.");
	            return;  // 상품 이름이 없으면 종료
	        }
	        if(checkCartList(cartIdx,prdCode,quantity)){
	        	 $('#sidebar').removeClass('expanded');
	        	 updateTotalPrice(); 
	        	return;
	        }
	        
	     	// 가격을 숫자 형태로 변환 (필요한 경우)
	        var sellPrice = parseInt(sellPrice.replace('￦', '').replace(',', '').trim());  // 가격을 숫자로 변환
	        
	        // 구매목록에 추가할 항목을 작성
		    var cart = `<tr>
			                <td>`+prdName+`</td>
			                <td>
			                <div class="quantity-controls">
			                <input type='hidden'  name='buylist[`+cartIdx+`].prdCode' value='`+prdCode+`'>
			                <input type='hidden' name='buylist[`+cartIdx+`].buyQty' value='`+quantity+`' class='buyQtyClass'>
                            <button type='button' class="decrease-quantity">-</button>
                            	<span class="quantity">`+quantity+`</span>
                            <button type='button' class="increase-quantity">+</button>
                        </div><button class="remove-item">삭제</button></td>
			                <td class='sell-price' style='display: none;'>` + sellPrice + `</td>  <!-- 가격을 숨긴 td 추가 -->
			            </tr>`;
		                

	        // 구매목록에 항목 추가
	        $('#cart-item').append(cart);  // 구매목록에 항목 추가. 기존의 항목을 모두 덮어쓰지 않고 추가하려면 append를 사용하세요.
			
	    	// 총합 갱신
	        totalPrice += sellPrice;  // 총합에 가격 추가
	        updateTotalPrice();  // 총합을 화면에 갱신
	        cartIdx++;
	        // 사이드바 닫기
	        $('#sidebar').removeClass('expanded');
	        	       
	    });
		
	    // "삭제" 버튼 클릭 시 구매목록에서 해당 항목 제거
	    $(document).on('click', '.remove-item', function() {
	        var sellPrice = $(this).parent().parent().children().eq(1).text();  // 해당 항목의 가격을 가져옵니다.
	      
	        // 삭제할 항목 제거
	        $(this).closest('tr').remove();
			
			
	        // 총합 갱신 (삭제된 가격만큼 차감)
	        totalPrice -= sellPrice;  // 삭제된 가격을 차감
	       
	        updateTotalPrice();  // 총합을 갱신
	    });
	

			// 총합 갱신 함수
			function updateTotalPrice() {
			    var totalPrice = 0;

			    $('#cart-item tr').each(function() {
			        var sellPrice = parseInt($(this).find('.sell-price').text());  // 상품 가격
			        var quantity = parseInt($(this).find('.quantity').text());  // 상품 수량
			        totalPrice += sellPrice * quantity;  // 총합 계산
			    });
				
			    // 총합을 화면에 출력
				
			    $('#totalSellPrice').text('￦' + totalPrice.toLocaleString()+'원');  // 총합을 화면에 출력
			}

   	 
});
        
        function checkCartList(idx, cd, qty){
        	for(var i=0;i<idx;i++){
        		if( cd == $('input[name="buylist['+i+'].prdCode"').val() ){
        			qty1 = $('input[name="buylist['+i+'].prdCode"').siblings('.quantity').text();
        			qty =Number(qty)+Number(qty1);
        			$('input[name="buylist['+i+'].prdCode"').siblings('.quantity').text(qty);
        			$('input[name="buylist['+i+'].buyQty"').val(qty);
        			
        			return true;
        			
        		}
        		
        	}
        	return false;
        }

    
        
$(document).ready(function() {
	loadProducts('A'); // 초기에 A
	changeCategoryText('감기약'); // 기본 텍스트는 감기약으로 설정
	changeCategoryButtons('A');
    // 카테고리 버튼 클릭 이벤트
    $('#coldMedicineBtn').click(function() {
    	loadProducts('A'); // A는 감기약, A0101은 해열/진통
        changeCategoryText('감기약');
        changeCategoryButtons('A');
    });
	
    $('#digestiveBtn').click(function() {
        loadProducts('B'); // B는 소화기관, B0101은 소화제
        changeCategoryText('소화기관');
        changeCategoryButtons('B');
    });

    $('#topicalBtn').click(function() {
        loadProducts('C'); // C는 외용약, C0101은 소독제
        changeCategoryText('외용약');
        changeCategoryButtons('C');
    });

    $('#energyBtn').click(function() {
        loadProducts('D'); // D는 자양강장제, D0101은 비타민
        changeCategoryText('자양강장제');
        changeCategoryButtons('D');
    });

    $('#suppliesBtn').click(function() {
        loadProducts('E', 'E0101'); // E는 용품, E0101은 마스크
        changeCategoryText('용품');
        changeCategoryButtons('E');
    });
    
    // 카테고리별 버튼 클릭 시 서브 카테고리도 처리
    $(document).on('click', '.additional-button', function() {;
        loadProducts($(this).val());  // 해당 카테고리와 서브 카테고리로 상품 로드
    });
    
 // 카테고리 텍스트를 변경하는 함수
    function changeCategoryText(categoryName) {
        // '.medicine-cat' 클래스를 가진 div의 텍스트를 변경
        $('.medicine-cat').text(categoryName);
    }

    // 카테고리에 맞는 상품 목록을 가져오는 함수
    function loadProducts(categoryCode) {
        $('#categoryCode').val(categoryCode); // categoryCode 설정
       // $('#subCategoryCode').val(subCategoryCode); // subCategoryCode 설정
        call_server(hiddenform, '/product/search', setProductList);
    }
    
    // 카테고리 버튼 클릭 시 카테고리 버튼 텍스트를 변경하는 함수
    function changeCategoryButtons(categoryCode) {
    var buttons = $(".additional-button");
    
    // 카테고리별 버튼 텍스트 변경
    if (categoryCode === 'A') {  // 소화기관 카테고리
        //buttons.eq(0).text('해열/진통').data('categoryCode', 'A0101');
    	buttons.eq(0).text('해열/진통'); buttons.eq(0).val('A0101'); 
        buttons.eq(1).text('콧물/코막힘'); buttons.eq(1).val('A0102'); 
        buttons.eq(2).text('가래'); buttons.eq(2).val('A0103'); 
        buttons.eq(3).text('기침'); buttons.eq(3).val('A0104'); 
    } else if (categoryCode === 'B') {
        buttons.eq(0).text('소화제'); buttons.eq(0).val('B0101');
        buttons.eq(1).text('위장약'); buttons.eq(1).val('B0102');
        buttons.eq(2).text('변비약'); buttons.eq(2).val('B0103');
        buttons.eq(3).text('설사약'); buttons.eq(3).val('B0104');
    } else if (categoryCode === 'C') {  // 카테고리 C
        buttons.eq(0).text('소독제'); buttons.eq(0).val('C0101');
        buttons.eq(1).text('상처 치료제'); buttons.eq(1).val('C0102');
        buttons.eq(2).text('진통제 연고'); buttons.eq(2).val('C0103');
        buttons.eq(3).text('피부염 치료제'); buttons.eq(3).val('C0104');
    } else if (categoryCode === 'D') {  // 카테고리 D
        buttons.eq(0).text('비타민'); buttons.eq(0).val('D0101');
        buttons.eq(1).text('피로 회복제'); buttons.eq(1).val('D0102');
        buttons.eq(2).text('면역력 증진제'); buttons.eq(2).val('D0103');
        buttons.eq(3).text('체력 보충제'); buttons.eq(3).val('D0104');
    } else if (categoryCode === 'E') {  // 카테고리 E
        buttons.eq(0).text('마스크'); buttons.eq(0).val('E0101');
        buttons.eq(1).text('보호대'); buttons.eq(1).val('E0102');
        buttons.eq(2).text('체온,혈압계'); buttons.eq(2).val('E0103');
        buttons.eq(3).text('냉/온 찜질팩'); buttons.eq(3).val('E0104');
    }
}
    
 	
    // 서버에서 받은 상품 목록을 화면에 출력하는 함수
    function setProductList(products) {
        var str = "";
        var count = 0;

        products.forEach(function(product) {
            if (count % 3 === 0) {
                if (count !== 0) {
                    str += "</div>";  // 이전 row 닫기
                }
                str += "<div class='itembox-row'>";  // 새 row 시작
            }

            str += "<div class='itembox' data-name='" + product.prdName + "' data-price='" + product.sellPrice + "' data-code='" + product.prdCode + "'>";
            str += "<img src='" + product.prdImg + "' alt='상품 이미지' class='item-image'>";
            str += "<div class='item-details'>";
            str += "<span class='item-name'>" + product.prdName + "</span>";
            str += "<span class='item-price'>" + product.sellPrice + "</span>";
            
            str += "</div>";
            str += "</div>";

            count++;
        });

        str += "</div>"; // 마지막 row 닫기
        
        $('.itembox-container').html(str);  // .itembox-container에 추가
    }
});
        
        
// "주문내역 확인 후 결제하기" 버튼 클릭 시 AJAX 요청을 보내는 함수
$('.gocart').click(function(e) {
    // 구매목록이 비어 있는지 확인
    if ($('#cart-item tr').length === 0) {
        // 구매목록이 비어 있을 경우 알림창 띄우기
        $('#errorPopup').fadeIn();  // 알림창 표시
        e.preventDefault();  // 폼 제출을 막음
    } else {
        // 구매목록에 상품이 있으면 폼을 제출
        cartform.method = "post";
        cartform.action = "/product_cart";
        cartform.submit();
    }
});

// 알림창 닫기 버튼 클릭 시 알림창 숨기기
$('#closePopup').click(function() {
    $('#errorPopup').fadeOut();  // 알림창 숨기기
});
      
    </script>
</body>
</html>
