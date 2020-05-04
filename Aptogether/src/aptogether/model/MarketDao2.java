package aptogether.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import aptogether.mapper.MarketMapper;

public class MarketDao2 {
	private static MarketDao2 dao = new MarketDao2();

	public static MarketDao2 getInstance() {
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

	/*
	 * public int insertBoard(Board board) { int re = -1; SqlSession sqlSession =
	 * getSqlSessionFactory().openSession();
	 * 
	 * try { re = sqlSession.getMapper(BoardMapper.class).insertBoard(board); if(re
	 * > 0) { sqlSession.commit(); }else { sqlSession.rollback(); } } catch
	 * (Exception e) { e.printStackTrace(); }finally { if(sqlSession != null) {
	 * sqlSession.close(); } }
	 * 
	 * return re; }
	 * 
	 * public List<Board> listBoard(Search search,int startRow){ SqlSession
	 * sqlSession = getSqlSessionFactory().openSession(); List<Board> list = null;
	 * try { list = sqlSession.getMapper(BoardMapper.class).listBoard(search,new
	 * RowBounds(startRow, 2)); //list =
	 * sqlSession.selectList("kosta.mapper.BoardMapper.listBoard"); } catch
	 * (Exception e) { e.printStackTrace(); }finally { if(sqlSession != null) {
	 * sqlSession.close(); } }
	 * 
	 * return list; } public Board detailBoard(int seq) { SqlSession sqlSession =
	 * getSqlSessionFactory().openSession(); Board board = null; try {
	 * board=sqlSession.getMapper(BoardMapper.class).detailBoard(seq); } catch
	 * (Exception e) { e.printStackTrace(); } finally { if(sqlSession != null) {
	 * sqlSession.close(); } } return board; } public int countBoard(Search search)
	 * { SqlSession sqlSession = getSqlSessionFactory().openSession(); int re=0; try
	 * { re=sqlSession.getMapper(BoardMapper.class).countBoard(search); } catch
	 * (Exception e) { e.printStackTrace(); }finally { sqlSession.close(); } return
	 * re; }
	 * 
	 * public void deleteBoard(int seq) { System.out.println("�λ�"); SqlSession
	 * sqlSession = getSqlSessionFactory().openSession(); try {
	 * System.out.println("delete SEQ: " + seq);
	 * sqlSession.getMapper(BoardMapper.class).deleteBoard(seq);
	 * sqlSession.commit(); } catch (Exception e) { e.printStackTrace(); }finally {
	 * if(sqlSession != null) { sqlSession.close(); } }
	 * 
	 * } public int insertReply(Reply reply) { SqlSession sqlSession =
	 * getSqlSessionFactory().openSession(); int re=0; try {
	 * re=sqlSession.getMapper(BoardMapper.class).insertReply(reply); if(re > 0) {
	 * sqlSession.commit(); }else { sqlSession.rollback(); } } catch (Exception e) {
	 * e.printStackTrace(); }finally { if(sqlSession != null) { sqlSession.close();
	 * } } return re; }
	 * 
	 * public List<Reply> listReply(int seq) { List<Reply> list=null; SqlSession
	 * sqlSession = getSqlSessionFactory().openSession(); try {
	 * list=sqlSession.getMapper(BoardMapper.class).listReply(seq); } catch
	 * (Exception e) { e.printStackTrace(); }finally { if(sqlSession != null) {
	 * sqlSession.close(); } } return list; }
	 * 
	 * public int updateBoard(Board board) { SqlSession sqlSession =
	 * getSqlSessionFactory().openSession(); int re=0; try {
	 * re=sqlSession.getMapper(BoardMapper.class).updateBoard(board); if(re > 0) {
	 * sqlSession.commit(); }else { sqlSession.rollback(); } } catch (Exception e) {
	 * e.printStackTrace(); }finally { if(sqlSession != null) { sqlSession.close();
	 * } } return re; }
	 * 
	 * public int insertMarket(Market_Product market) { int re = -1; SqlSession
	 * sqlSession = getSqlSessionFactory().openSession();
	 * 
	 * try { re = sqlSession.getMapper(MarketMapper.class).insertMarket(market);
	 * if(re > 0) { sqlSession.commit(); }else { sqlSession.rollback(); } } catch
	 * (Exception e) { e.printStackTrace(); }finally { if(sqlSession != null) {
	 * sqlSession.close(); } }
	 * 
	 * return re; return 0; }
	 */
	public int insertmarketproduct(Market_Product product) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(MarketMapper.class).insertmarketproduct(product);
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

	public int countMarket() {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(MarketMapper.class).countmarketproduct();
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

	public List<Market_Product> listMarket(int startRow) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Market_Product> list = null;
		try {
			list = sqlSession.getMapper(MarketMapper.class).listMarket(new RowBounds(startRow, 9));
			//list = sqlSession.selectList("kosta.mapper.BoardMapper.listBoard");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return list;
	}

	public Market_Product detailmarketproduct(int seq) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Market_Product prodcut = null;
		try {
			prodcut = sqlSession.getMapper(MarketMapper.class).detailmarketproduct(seq);
			//list = sqlSession.selectList("kosta.mapper.BoardMapper.listBoard");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		
		return prodcut;
	}

	public int deletemarketproduct(int seq) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(MarketMapper.class).deletemarketproduct(seq);
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

	public int updatemarketproduct(Market_Product product) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(MarketMapper.class).updatemarketproduct(product);
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

	public int insertmarketreply(Marketreply reply) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(MarketMapper.class).insertmarketreply(reply);
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

	public List<Marketreply> listmarketreply(int seq) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Marketreply> list = null;
		try {
			list = sqlSession.getMapper(MarketMapper.class).listmarketreply(seq);
			//list = sqlSession.selectList("kosta.mapper.BoardMapper.listBoard");
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
