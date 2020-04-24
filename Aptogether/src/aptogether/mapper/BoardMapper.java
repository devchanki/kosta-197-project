package aptogether.mapper;

import aptogether.model.Board;

public interface BoardMapper {
	int insertBoard(Board board);
	int insertProcess(String string);
}
