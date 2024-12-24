package com.kos.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.product.dao.ProductDao;
import com.kos.vo.buy.BuyVO;
import com.kos.vo.product.ProductVO;

@Service
public class ProductService {
	
	@Autowired
	ProductDao dao;
	
	public List<ProductVO> selectProductList(ProductVO vo) throws Exception{
		return dao.selectProductList(vo);
	}
	
	public List<BuyVO> getProductitem(ProductVO vo) throws Exception{
		return dao.getProductitem(vo);
	}
}
