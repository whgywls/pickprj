package com.kos.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kos.vo.rx.RxVO;

@Repository
public interface MainDao {

	public List<RxVO> setRxList(RxVO vo) throws Exception; //처방전정보 불러오기
	
	public int verifyQrNumber(RxVO vo) throws Exception;
	
	public RxVO selectpayMoneyVO(RxVO vo) throws Exception;
	
	public RxVO selectcardMoneyVO(RxVO vo) throws Exception;
}
