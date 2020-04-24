package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.AptMapper;


public class AptDao {
public static AptDao dao = new AptDao();
	
	public static AptDao getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;

		try {
			in = Resources.getResourceAsStream(resource);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 

		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public int insertApt(AptInfo apt) {
		SqlSession sql = getSessionFactory().openSession();
		int re = -1;
		try {
			re = sql.getMapper(AptMapper.class).insertApt(apt);
			if(re > 0) {
				sql.commit();
			}else {
				sql.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sql.close();
		}
		return re;
	}
	public List<AptInfo> showApt(String keyword){
		SqlSession sqlSession = getSessionFactory().openSession();
		List<AptInfo> list = null;
		try {
			list = sqlSession.getMapper(AptMapper.class).showApt(keyword);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error");
		}finally {
			sqlSession.close();
		}
		return list;
				
	}
}
