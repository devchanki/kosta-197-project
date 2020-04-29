package aptogether.service;

import java.util.List;

import aptogether.model.Member;
import aptogether.model.MemberDao;

public class MemberService {
	private static MemberService service = new MemberService();
	private static MemberDao dao = null;

	public static MemberService getService() {
		dao = MemberDao.getInstance();
		return service;
	}

	public int signupService(Member member) {
		return dao.signup(member);
	}

	public Member signinService(Member member) {
		int count = dao.countMember(member);
		Member returnMember = null;
		if (count == 1) {
			returnMember = dao.signin(member);
		}
		return returnMember;
	}
	
	public List<Member> watingMemberService(int seq) {
		return dao.waitingMember(seq);
	}

	public int admitService(int seq) {
		return dao.admitUser(seq);
	}
	
}
