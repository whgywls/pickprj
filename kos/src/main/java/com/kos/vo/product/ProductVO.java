package com.kos.vo.product;

import java.util.List;

import com.kos.vo.buy.BuyVO;

import lombok.Data;

@Data
public class ProductVO {
	
	private String prdCode;		//상품코드
	private String prdName;		//상품이름	
	private String catCode;		//카테고리코드
	private String sellPrice;	//판매가
	private String prdQty;		//재고량
	private String prdIndt;		//입고일
	private String prdState;	//상품상태	
	private String vdCode;		//거래처코드
	private String prdImg;		//상품이미지
	private String prdDesc;		//삼품설명
	
	
	private List<BuyVO> buylist;
	private String categoryCode;
	private String subCategoryCode;
	
}
