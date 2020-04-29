package aptogether.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import aptogether.model.ManageFee;
import aptogether.model.Member;

public interface ManageFeeMapper {
	Member findMemberSeq(Member member);
	int insertManageFee(ManageFee manage_Fee);
	List<ManageFee> listManageFee(Member member);
	List<ManageFee> listManageFeePart(int apt_seq);
}