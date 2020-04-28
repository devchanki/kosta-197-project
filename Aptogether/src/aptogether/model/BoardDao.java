package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.BoardMapper;



public class BoardDao {
	private static BoardDao dao = new BoardDao();
	public static BoardDao getInstance() {
		return dao;
	}
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";	
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	
	public int insertBoard(Board board) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(BoardMapper.class).insertBoard(board);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return re;
	}
	public List<Board> listBoard() {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		List<Board> list = null;
		try {
		list = sqlsession.getMapper(BoardMapper.class).listBoard();
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(sqlsession != null) {
			sqlsession.close();
		}
	}
	return list;
	}
	
	public void deleteBoard(int seq) {
		System.out.println("ªË¡¶");
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			System.out.println("delete SEQ: "  + seq);
			 sqlSession.getMapper(BoardMapper.class).deleteBoard(seq);
			 sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
	}
}
	
	
	