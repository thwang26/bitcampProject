package com.order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	private int seqOrder;
	private String id;
	private String orderPrice;
	private int qty;
	private Date orderDate;
	private String menuName;
	private int orderCode;
	private int storeNum;
	private int takeoutOpt;
	private int shotOpt;
	private int sizeOpt;
	
}
