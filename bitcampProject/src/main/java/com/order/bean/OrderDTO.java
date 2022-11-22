package com.order.bean;

import lombok.Data;

@Data
public class OrderDTO {
	private int seq;
	private String id;
	private int orderprice;
	private int qty;
	private int orderdate;
	private String menuname;
	private int ordercode;
}
