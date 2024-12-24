package com.kos.vo.buy;

import lombok.Data;

@Data
public class BuyVO {
	
	private String buyCode;		//구매번호
	private String userCode;	//고객번호
	private String rxdt;		//처방전교부년월일
	private String rxCode;		//처방전교부코드
	private String prdCode;		//상품코드
	private String payPrice;	//상품금액
	private String buyQty;		//구매수량
	private String buyDt;		//구매일
	
	private String prdImg;
	private String sellPrice;
	
	private String prdName;
}
