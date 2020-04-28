package aptogether.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.MemberMapper;

public class MemberDao {
	public static MemberDao dao = new MemberDao();

	public static MemberDao getInstance() {
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

	public int signup(Member member) {
		SqlSession session = getSessionFactory().openSession();
		int re = -1;

		try {
			re = session.getMapper(MemberMapper.class).signup(member);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}

		return re;
	}

	public Member signin(Member member) {
		SqlSession sqlSession = getSessionFactory().openSession();
		Member resultMember = null;

		try {
			resultMember = sqlSession.getMapper(MemberMapper.class).signin(member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return resultMember;
	}

	public int countMember(Member member) {
		SqlSession session = getSessionFactory().openSession();
		int count = -1;

		try {
			count = session.getMapper(MemberMapper.class).userMatchCount(member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
}
