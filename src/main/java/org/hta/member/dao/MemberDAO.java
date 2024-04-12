package org.hta.member.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.hta.member.domain.Member;

public class MemberDAO {
	
	private SqlSession getSession() {
		SqlSession session = null;
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("org/hta/mybatis/config/sqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return session;
	}
	

	public int chk(Member member) {
		int result = 0; // 아이디가 없는 경우
		
		try(SqlSession session = getSession()) {
			// 조회 결과가 없는 경우 dbmember는 null 입니다.
			Member dbmember = (Member) session.selectOne("org.hta.mybatis.member.select", member.getId());
		}
		
		return result;
	}

	public int insert(Member mem) {
		// TODO Auto-generated method stub
		return 0;
	}

}
