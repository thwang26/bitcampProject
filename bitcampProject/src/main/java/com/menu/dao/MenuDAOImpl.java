package com.menu.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menu.bean.MenuDTO;

@Repository
@Transactional
public class MenuDAOImpl implements MenuDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MenuDTO getMenu(int seq) {
		return sqlSession.selectOne("menuSQL.getMenu", seq); //mapper만들고, spring폴더, spring.conf파일 가져와서 완성하기 root-context설정도!
	}

}
