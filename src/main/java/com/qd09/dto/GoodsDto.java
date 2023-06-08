package com.qd09.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class GoodsDto {

	private int num;
	private String goodsCode;
	private String goodsName;
	private int price;
	private int cnt;
	private Timestamp regTM;
	
}
