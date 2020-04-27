package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.Manage_Fee_Mapper;

<<<<<<< HEAD
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
				m = sqlSession.getMapper(Manage_Fee_Mapper.class).findMemberSeq(member);
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
				re = sqlSession.getMapper(Manage_Fee_Mapper.class).insertManageFee(manage_Fee);
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
=======
public class Manage_Fee_Dao {
		private static Manage_Fee_Dao dao = new Manage_Fee_Dao();
		public static Manage_Fee_Dao getInstance() {
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
				m = sqlSession.getMapper(Manage_Fee_Mapper.class).findMemberSeq(member);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null) {
					sqlSession.close();
				}
			}
			return m;
		}


		public int insertManageFee(Manage_Fee manage_Fee) {
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = sqlSession.getMapper(Manage_Fee_Mapper.class).insertManageFee(manage_Fee);
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
		
		public List<Manage_Fee> listManageFee(int apt_seq){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			List<Manage_Fee> list = null;
>>>>>>> branch 'chanki' of https://github.com/devchanki/kosta-197-project.git
			try {
				list = sqlSession.getMapper(Manage_Fee_Mapper.class).listManageFee(apt_seq);
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
