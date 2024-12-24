package com.kos.vo.user;

import lombok.Data;

@Data
public class UserVO {
	
	private String userCode;	//고객코드
	private String userRnn;		//주민등록번호
	private String userPhone;	//고객연락처
	private String userName;	//고객이름
}
