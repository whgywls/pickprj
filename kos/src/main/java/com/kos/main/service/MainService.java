package com.kos.main.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.main.dao.MainDao;
import com.kos.vo.rx.RxVO;


@Service
public class MainService {
	
	@Autowired
	MainDao dao;
	
	public List<RxVO> setRxList(RxVO vo) throws Exception { //처방전정보 불러오기
		return dao.setRxList(vo);
	}
	
    public int verifyQrNumber(RxVO vo) throws Exception {
    	return dao.verifyQrNumber(vo);

    }
    
    public RxVO selectpayMoneyVO(RxVO vo) throws Exception{
        return dao.selectpayMoneyVO(vo);
    }

    public RxVO selectcardMoneyVO(RxVO vo) throws Exception{
        return dao.selectcardMoneyVO(vo);
    }
}
