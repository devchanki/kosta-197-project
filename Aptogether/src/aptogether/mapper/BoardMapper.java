package aptogether.mapper;

import java.util.List;


import aptogether.model.Board;
import aptogether.model.Board;

public interface BoardMapper {
	int insertBoard(Board board);
	List<Board> listBoard();
	void deleteBoard(int seq);
}
