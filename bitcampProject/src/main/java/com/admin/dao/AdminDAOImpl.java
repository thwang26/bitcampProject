package com.admin.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;


@Repository
@Transactional//commit과 close 담당
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public OrderDTO getOrder() {
		return sqlSession.selectOne("adminSQL.getOrder");
	}

	@Override
	public void menuWrite(MenuDTO menuDTO) {
		sqlSession.insert("adminSQL.menuWrite", menuDTO);
	}

	@Override
	public List<MenuDTO> menuLoad(String categoryNum) {
		return sqlSession.selectList("adminSQL.menuLoad", categoryNum);
	}

	@Override
	public void menuErase(int seqMenu) {
		sqlSession.delete("adminSQL.menuEarase", seqMenu);
	}

	@Override
	public MenuDTO menuUpdateForm(int seqMenu) {
		return sqlSession.selectOne("adminSQL.menuUpdateForm", seqMenu);
	}

	@Override
	public String orderAlert() {
		OrderDTO orderDTO = sqlSession.selectOne("adminSQL.orderAlert");
		
		if(orderDTO != null) {
			return "alert";
		}else return "null";
	}

	@Override
	public void menuUpdate(MenuDTO menuDTO) {
		sqlSession.update("adminSQL.menuUpdate", menuDTO);
	}

	@Override
	public List<OrderDTO> orderLoad() {
		return sqlSession.selectList("adminSQL.orderLoad");
	}

	@Override
	public void orderConfirm(int seqOrder) {
		sqlSession.update("adminSQL.orderConfirm", seqOrder);
	}

	@Override
	public void orderComplete(int seqOrder) {
		sqlSession.update("adminSQL.orderComplete", seqOrder);
	}

	@Override
	public void orderReject(int seqOrder) {
		sqlSession.update("adminSQL.orderReject", seqOrder);
	}

	@Override
	public List<OrderDTO> orderSales(int selectNum) {
		if(selectNum == 1){
			System.out.println(selectNum);
			return sqlSession.selectList("adminSQL.orderSales1", selectNum);
		}else if(selectNum == 2){
			System.out.println(selectNum);
			return sqlSession.selectList("adminSQL.orderSales2", selectNum);
		}else {
			System.out.println(selectNum);
			return sqlSession.selectList("adminSQL.orderSales3", selectNum);
		}
	}
}