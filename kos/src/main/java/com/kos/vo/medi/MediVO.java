package com.kos.vo.medi;

import lombok.Data;

@Data
public class MediVO {
	
	private String rxCode;		//처방전교부번호
	private String rxdt;		//처방전교부년월일
	private String prdCode;		//상품코드
	private String mediName;	//약품명
	private String sellPrice;	//약품가격
	private String doseQty;		//1회투약량
	private String doseFrq;		//1일투여횟수
	private String doseTotal;	//총투약일수
}
