package com.other.dao;

public class OtherDAOsql implements OtherDAO {

	@Override
	public void delete(String memberId) throws Exception {
		sqlsession.delete("memberMapper.delete", memberId);
		
	}

}
