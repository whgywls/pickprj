package com.kos.main.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.main.service.MainService;
import com.kos.vo.rx.RxVO;

@Controller
public class MainController {

	@Autowired
	MainService service;
	
	@RequestMapping("/main")	//키오스크 첫화면
	public String UserList() throws Exception {
		return "main/main";
	}
	
	@RequestMapping("/qrcode_p")	//키오스크 QR확인 화면(종이처방전)
	public String QRcode_p() throws Exception {
		return "main/qrcode_p";
	}
	
	@RequestMapping("/qrcode_m")	//키오스크 QR확인 화면(전자처방전)
	public String QRcode_m() throws Exception {
		return "main/qrcode_m";
	}
	
	@RequestMapping("/qrcode_no")	//카드결제
	public String QRcode_no() throws Exception {
		return "main/qrcode_no";
	}
	
	@RequestMapping("/qr/verify")
	@ResponseBody
	public boolean verifyQrNumber(@ModelAttribute RxVO rxVO) throws Exception {
	    
	    int c = service.verifyQrNumber(rxVO);
	    if(c>0) {
	    	return true;
	    }else {
	    	return false;
	    }
	    
	}


	
	@RequestMapping("/rx_order")	//결재화면
	public String rx_order(@ModelAttribute RxVO vo, Model model) throws Exception {
		model.addAttribute("qrNumber", vo.getQrNumber());
		return "main/rx_order";
	}
	
	//처방전정보 불러오기
	@RequestMapping("/rx/search")
	@ResponseBody
	public List<RxVO> setRxList(@ModelAttribute RxVO vo)
		throws Exception {
		
		List<RxVO> list = service.setRxList(vo);
		return list;
	}
	
	@RequestMapping("/card_order")	//결재화면(카드)
	public String card_order(@ModelAttribute RxVO vo, Model model) throws Exception {
		model.addAttribute("qrNumber", vo.getQrNumber());
		return "main/card_order";
	}
	
	@RequestMapping("/pay/search")
	@ResponseBody
	public RxVO selectpayMoneyVO(@ModelAttribute RxVO vo) throws Exception{
	    vo = service.selectpayMoneyVO(vo);
	    return vo;
	}

	@RequestMapping("/pay_card")	//카드결제
	public String pay_card(@ModelAttribute RxVO vo, Model model) throws Exception {
		model.addAttribute("qrNumber", vo.getQrNumber());
		return "main/pay_card";
	}
	
	@RequestMapping("/card/search")
	@ResponseBody
		public RxVO selectcardMoneyVO(@ModelAttribute RxVO vo) throws Exception{
	    vo = service.selectcardMoneyVO(vo);
	    return vo;
	}
	
	
	@RequestMapping("/pay_realmoney")	//카드결제
	public String pay_realmoney() throws Exception {
		return "main/pay_realmoney";
	}
	
	@GetMapping("/api/data")
	@ResponseBody
	public String test() {
		System.out.println("Call Server");
		return "Power!!!!";
	}
}
