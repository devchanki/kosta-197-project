package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.PollMapper;

public class PollDao {
	private static PollDao dao = new PollDao();

	public static PollDao getinstance() {
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

	public int PollInsert(Poll poll, List<Option> option) {
		int re = -1;
		int re1 = -1;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		try {
			re = sqlsession.getMapper(PollMapper.class).PollInsert(poll);
			re1 = sqlsession.getMapper(PollMapper.class).PollOption(option);
			if (re > 0 && re1 > 0) {
				sqlsession.commit();
			} else {
				sqlsession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlsession != null) {
				sqlsession.close();
			}
		}
		return re;
	}

	public List<Poll> PollList() {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		List<Poll> list = null;
		

		try {
			list = sqlsession.getMapper(PollMapper.class).PollList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlsession != null) {
				sqlsession.close();
			}
		}
		return list;
	}
	
	public List<Option> OptionList(int seq){
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		List<Option> item = null;
		
		try {
			item = sqlsession.getMapper(PollMapper.class).OptionList(seq);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (sqlsession != null) {
				sqlsession.close();
			}
		}
		return item;
	}
	
	public Integer PollSelectInsert(PollSelect pollselect) {
		Integer re = -1;
		
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		try {
			re = sqlsession.getMapper(PollMapper.class).PollSelectInsert(pollselect);
			if (re  != null) {
				sqlsession.commit();
			}else{
				sqlsession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		return re;
	}
	
	public List<Detail> PollDetailList(int seq){
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		List<Detail> detail = null;
		
		try {
			detail = sqlsession.getMapper(PollMapper.class).PollDetailList(seq);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		return detail;
	}
	
}
