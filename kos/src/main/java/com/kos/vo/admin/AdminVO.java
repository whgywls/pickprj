package com.kos.vo.admin;

import lombok.Data;

@Data
public class AdminVO {
	
	private String adminId;			//관리자아이디
	private String adminName;		//관리자이름
	private String adminEmail;		//관리자이메일
	private String adminPhone;		//관리자연락처
	private String joinDt;			//가입일
	private String vdCode;			//소속
	
	
	
}
