package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

<<<<<<< HEAD
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
	
	public List<ManageFee> listManageFeeService(int apt_seq) throws Exception{
		List<ManageFee> list = dao.listManageFee(apt_seq);
=======
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
>>>>>>> branch 'chanki' of https://github.com/devchanki/kosta-197-project.git
		return list;
	}
}
