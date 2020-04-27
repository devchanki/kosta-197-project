package aptogether.model;

import java.io.InputStream;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.scheduleMapper;


public class ScheduleDao {
   private static ScheduleDao dao = new ScheduleDao();
   
   public static ScheduleDao getInstance() {
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
   

   
	public int insertSchedule(Schedule schedule) {
		int re = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(scheduleMapper.class).insertSchedule(schedule); // ���� �μ�Ʈ�� �ο��� ������ ����

			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}

		return re;
	}
	  
	public List<Schedule> listSchedule() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Schedule> list = null;

		try {
			list = sqlSession.getMapper(scheduleMapper.class).listSchedule();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return list;
	}
	

	public int updateSchedule(Schedule schedule) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(scheduleMapper.class).updateSchedule(schedule);

			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;
	}



	public int deleteSchedule(int schedule_Seq) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(scheduleMapper.class).deleteSchedule(schedule_Seq);


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;
	}
	
	public List<Schedule> listSchedule_APT(int apt_Seq) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Schedule> list = null;
		
		try {
			list = sqlSession.getMapper(scheduleMapper.class).listSchedule_APT(apt_Seq);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return list;
	}
	
	
	
	
	
	
}
   
   
   
  
   
   
  