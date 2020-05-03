package aptogether.mapper;

import java.util.List;

import aptogether.model.ManageFee;
import aptogether.model.Member;

public interface ManageFeeMapper {
	Member findMemberSeq(Member member);
	int insertManageFee(ManageFee manage_Fee);
	List<ManageFee> listManageFee(int apt_seq);
}
