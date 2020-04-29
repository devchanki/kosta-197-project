package aptogether.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import aptogether.model.ManageFee;
import aptogether.model.Member;

public interface ManageFeeMapper {
	Member findMemberSeq(Member member);
	int insertManageFee(ManageFee manage_Fee);
	List<ManageFee> listManageFee(Member member);
	List<ManageFee> listManageFeePart(@Param("member") Member member ,@Param("row") int row);
}