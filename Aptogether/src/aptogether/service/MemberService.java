package aptogether.service;

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
	
}
