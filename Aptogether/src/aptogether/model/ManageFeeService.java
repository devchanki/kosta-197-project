package aptogether.model;

import java.util.List;


public class ManageFeeService {
	private static ManageFeeService service = new ManageFeeService();
	private static ManageFeeDao dao;

	public static ManageFeeService getInstance() {
		dao = ManageFeeDao.getInstance();
		return service;
	}

	public Member findMemberSeqService(Member member) throws Exception {
		return dao.findMemberSeq(member);
	}

	public int insertManageFeeService(ManageFee manage_Fee) throws Exception {
		return dao.insertManageFee(manage_Fee);
	}
	
	public List<ManageFee> listManageFeeService(Member member) throws Exception{
		List<ManageFee> list = dao.listManageFee(member);
		return list;
	}
	public List<ManageFee> listManageFeePartService(Member member ,int row) throws Exception{
		List<ManageFee> list = dao.listManageFeePart(member, row);
		return list;
	}
}
