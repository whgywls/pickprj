package com.kos.vo.settle;

import lombok.Data;

@Data
public class SettleVO {
	
	private String settleDt;		//정산일
	private String totalPrice;		//총금액
	private String sellQty;			//판매수량
	private String rtprice;			//반품금액
	private String trQty;			//반품수량
}
