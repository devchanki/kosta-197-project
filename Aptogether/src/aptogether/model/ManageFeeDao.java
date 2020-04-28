package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.ManageFeeMapper;

public class ManageFeeDao {
		private static ManageFeeDao dao = new ManageFeeDao();
		public static ManageFeeDao getInstance() {
			return dao;
		}
		public SqlSessionFactory getSqlSessionFactory() {
			String resource ="mybatis-config.xml";
			InputStream in = null;
			try {
				in = Resources.getResourceAsStream(resource);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return new SqlSessionFactoryBuilder().build(in);
		}

	
		public Member findMemberSeq(Member member){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			Member m =null;
			try {
				m = sqlSession.getMapper(ManageFeeMapper.class).findMemberSeq(member);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null) {
					sqlSession.close();
				}
			}
			return m;
		}


		public int insertManageFee(ManageFee manage_Fee) {
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = sqlSession.getMapper(ManageFeeMapper.class).insertManageFee(manage_Fee);
				if(re>0) {
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
		
		public List<ManageFee> listManageFee(int apt_seq){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			List<ManageFee> list = null;
			try {
				list = sqlSession.getMapper(ManageFeeMapper.class).listManageFee(apt_seq);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null) {
					sqlSession.close();
				}
			}
			return list;
		}
	
}
