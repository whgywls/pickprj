package com.kos.product.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.product.service.ProductService;
import com.kos.util.SessionUtil;
import com.kos.vo.buy.BuyVO;
import com.kos.vo.product.ProductVO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	
	@RequestMapping("/product_age")	//키오스크 첫화면
	public String product_age() throws Exception {
		return "product_1/product_age";
	}
	
	@RequestMapping("/Safety_65")	//키오스크 첫화면
	public String Safety_65() throws Exception {
		return "product_1/Safety_65";
	}
	
	@RequestMapping("/Safety_1364")	//키오스크 첫화면
	public String Safety_1364() throws Exception {
		return "product_1/Safety_1364";
	}
	
	@RequestMapping("/Safety_012")	//키오스크 첫화면
	public String Safety_012() throws Exception {
		return "product_1/Safety_012";
	}
	
	/*
	@RequestMapping("/product_cart")	//키오스크 첫화면
	public String product_cart() throws Exception {
		return "product_1/product_cart";
	}
	*/
	@RequestMapping("/product_cat")	//키오스크 첫화면
	public String product_cat() throws Exception {
		return "product_1/product_cat";
	}
	
	@RequestMapping("/product_end")	//키오스크 첫화면
	public String product_end() throws Exception {
		return "product_1/product_end";
	}
	
	@RequestMapping("/product_item")	//키오스크 첫화면
	public String product_item() throws Exception {
		return "product_1/product_item";
	}
	
	@RequestMapping("/product_view")	//키오스크 첫화면
	public String product_view() throws Exception {
		return "product_1/product_view";
	}
	
	@RequestMapping("/product_voice")	//키오스크 첫화면
	public String product_voice() throws Exception {
		return "product_1/product_voice";
	}
	
	@RequestMapping("/prd_item")	
	public String prd_item(@ModelAttribute ProductVO vo, HttpServletRequest request)
			throws Exception {
		SessionUtil.set(request,"PRDCART",vo);
		return "product_1/prd_item";
	}
	
	@RequestMapping("/product/search")
	@ResponseBody
	public List<ProductVO> productsearch(@ModelAttribute ProductVO vo)
		throws Exception {
		
		List<ProductVO> list = service.selectProductList(vo);
		return list;
	}
	
	@RequestMapping("/product_cart")
	public String productcart(@ModelAttribute ProductVO vo, HttpServletRequest request)
		throws Exception {
		
		//List<ProductVO> list = service.selectproductcart(vo);
		SessionUtil.set(request,"PRDCART",vo);
		//List<ProductVO> list = (List<ProductVO>)SessionUtil.getAttribute("PRDCART");
		
		return "product_1/product_cart";
	}
	
	@RequestMapping("/get_product_cart")
	@ResponseBody
	public List<BuyVO> getproductcart(@ModelAttribute ProductVO vo, HttpServletRequest request)
		throws Exception {
		
		vo = (ProductVO)SessionUtil.getAttribute("PRDCART");
		List<BuyVO> list = service.getProductitem(vo);
		for(int i=0;i<list.size();i++) {
			for(int j=0;j<vo.getBuylist().size();j++) {
				
				if( list.get(i).getPrdCode().equals(vo.getBuylist().get(j).getPrdCode()) ) {
					list.get(i).setBuyQty(vo.getBuylist().get(j).getBuyQty());
				}
			}
			
		}
		
		return list;
		
	}
	
	@RequestMapping("/order/getSpeech")
	@ResponseBody
	public String getSpeechFromPython() throws Exception {
		// 파이썬 스크립트 실행 경로 설정
		String pythonScriptPath = "C:\\IntellijProject\\py\\test1.py";

		// ProcessBuilder 객체로 파이썬 스크립트 실행
		ProcessBuilder processBuilder = new ProcessBuilder("python", pythonScriptPath);
		// processBuilder.redirectErrorStream(true); // 에러 출력도 표준 출력에 합침

		// 프로세스 시작
		Process process = processBuilder.start();

		// 파이썬에서 출력된 결과를 읽을 InputStream, 파이썬에서 print된 값을 읽어줌
		InputStream inputStream = process.getInputStream();
		// 언어 설정 EUC-KR
		BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "EUC-KR"));

		String line;
		StringBuilder output = new StringBuilder();

		// 파이썬 스크립트에서 출력된 내용을 한 줄씩 읽어 StringBuilder에 저장
		while ((line = reader.readLine()) != null) {
			output.append(line); // 각 줄을 StringBuilder에 추가
		}

		// 프로세스 종료 대기
		process.waitFor();
		// 파이썬에서 반환된 결과 반환
		System.out.println(output.toString());
		return output.toString(); // 파이썬에서 출력된 음성 인식 결과가 여기에 포함됩니다.
	}
}
