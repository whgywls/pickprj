package com.kos.vo.category;

import lombok.Data;

@Data
public class CategoryVO {
	
	private String catCode;		//카테고리코드
	private String catName;		//카테고리명
	private String catLv;		//카테고리레벨
	private String upCatcode;	//상위카테고리
	private String catDelyn;	//카테고리삭제여부
	private String catUpdate;	//등록일
}
