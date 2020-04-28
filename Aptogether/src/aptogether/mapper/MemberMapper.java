package aptogether.mapper;

import aptogether.model.Member;

public interface MemberMapper {
	int signup(Member member);
	Member signin(Member member);
	int userMatchCount(Member member);
}
