package aptogether.mapper;

import java.util.List;

import aptogether.model.Member;

public interface MemberMapper {
	int signup(Member member);
	Member signin(Member member);
	int userMatchCount(Member member);
	List<Member> showWaitingMember(int seq);
	int admitUser(int seq);
}
