package aptogether.mapper;

import java.util.List;

import aptogether.model.Manage_Fee;
import aptogether.model.Member;

public interface Manage_Fee_Mapper {
	Member findMemberSeq(Member member);
	int insertManageFee(Manage_Fee manage_Fee);
	List<Manage_Fee> listManageFee(int apt_seq);
}
