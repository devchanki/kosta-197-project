package aptogether.mapper;

import java.util.List;

import aptogether.model.AptInfo;

public interface AptMapper {
	List<AptInfo> showApt(String keyword);
	int insertApt(AptInfo apt);
}
