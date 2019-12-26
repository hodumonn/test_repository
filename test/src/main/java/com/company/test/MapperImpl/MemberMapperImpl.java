package com.company.test.MapperImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.test.Mapper.MemberMapper;

@Repository("MemberMapper")
public class MemberMapperImpl implements MemberMapper{

	@Autowired
	private SqlSession sqlSession;
	
	public void SetSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int chkId(String member_id) {
		System.out.println("여긴 매퍼"+member_id);
		return sqlSession.selectOne("chkId", member_id);
	}

}
