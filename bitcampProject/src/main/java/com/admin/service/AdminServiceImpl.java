package com.admin.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.AdminDAO;
import com.order.bean.OrderDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public OrderDTO getOrder() {
		System.out.println(adminDAO.getOrder().getOrderprice());
		return adminDAO.getOrder();
	}
	
	

}
