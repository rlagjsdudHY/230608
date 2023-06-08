package com.qd09.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.qd09.dto.GoodsDto;

@Mapper
public interface GoodsDao {

	// 상품목록
	public List<GoodsDto> mtdGoodsList();

	// 상품등록
	public int mtdGoodsReg(String goodsCode, String goodsName, int price, int cnt);

	// 상품검색
	public List<GoodsDto> mtdGoodsSearch(String searchGoods);

	// 상품삭제
	public int mtdGoodsDelete(String[] idx);

}
