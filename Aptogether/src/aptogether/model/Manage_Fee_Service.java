package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Manage_Fee_Service {
	private static Manage_Fee_Service service = new Manage_Fee_Service();
	private static Manage_Fee_Dao dao;

	public static Manage_Fee_Service getInstance() {
		dao = Manage_Fee_Dao.getInstance();
		return service;
	}

	public Member findMemberSeqService(Member member) throws Exception {
		return dao.findMemberSeq(member);
	}

	public int insertManageFeeService(Manage_Fee manage_Fee) throws Exception {
		return dao.insertManageFee(manage_Fee);
	}
	
	public List<Manage_Fee> listManageFeeService(int apt_seq) throws Exception{
		List<Manage_Fee> list = dao.listManageFee(apt_seq);
		return list;
	}
}
