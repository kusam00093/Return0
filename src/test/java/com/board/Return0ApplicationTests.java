package com.board;


import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.board.company.domain.CompanyVo;
import com.board.company.mapper.CompanyMapper;

@SpringBootTest
class BoardApplicationTests {
	
	@Autowired 
	private DataSource  ds;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private CompanyMapper mapper;

	@Test
	void contextLoads() {
	}
	

	@Test 
	public void testConnection() throws SQLException {
		// db 연결 테스트
		Connection conn = ds.getConnection();
		System.out.println(conn);
		conn.close();
	}
	

	
	@Test
	public void testInsert() {
		CompanyVo vo = new CompanyVo();

		vo.setCom_id("ku00092");
		vo.setCom_passwd("1234");
		vo.setCom_num("9785-4655");
		vo.setCom_name("박사장");
		vo.setCom_address("범향빌딩 4층 426호 입니다");
		vo.setCom_ceo("김사장");
		vo.setCom_type("중견기업");
		vo.setCom_phone("010-4568-8851");
		vo.setCom_email("parksajang@naver.com");
		System.out.println( vo );
		
		mapper.insertComuser(vo);
	}
	
}
