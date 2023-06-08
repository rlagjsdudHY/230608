package com.qd09;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qd09.dao.GoodsDao;

@Controller
public class ShopController {

	@Autowired
	private GoodsDao goodsDao;

	@RequestMapping("/")
	public String root() throws Exception {
		return "index";
	}

//	상품 목록
	@RequestMapping("/list")
	public String mtdList(Model model) {
		model.addAttribute("goodsList", goodsDao.mtdGoodsList());
		return "/product/goodsList";
	}


	//	상품 등록 페이지
	@RequestMapping("/reg")
	public String mtdReg() {
		return "product/goodsReg";
	}

	// 상품 등록 실행
	@RequestMapping("/regProc")
	public String mtdRegProc(String goodsCode, String goodsName, int price, int cnt) {
		goodsDao.mtdGoodsReg(goodsCode, goodsName, price, cnt);
		
		return "redirect:list";
	}
	
	// 상품 검색
	@RequestMapping("/goodsSearch")
	public String mtdSearch(String searchGoods, Model model) {
		
		model.addAttribute(
				"goodsList", 
				goodsDao.mtdGoodsSearch(searchGoods)
			);
		
		return  "/product/goodsList";
	
	}
	// 상품 삭제
	@RequestMapping("/goodsDel")
	public String mtdDelete(String[] delIdx) {
		goodsDao.mtdGoodsDelete(delIdx);
		
		
		return  "redirect:list";
	}
}
