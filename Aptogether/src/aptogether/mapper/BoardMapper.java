package aptogether.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import aptogether.model.Board;
import aptogether.model.Search;
import aptogether.model.Board;

public interface BoardMapper {
	int insertBoard(Board board);
	List<Board> listBoard(Search search, RowBounds row);
	void deleteBoard(int seq);
	int countBoard(Search search);
}
