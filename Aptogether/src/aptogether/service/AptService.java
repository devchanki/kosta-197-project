package aptogether.service;

import java.util.List;

import aptogether.model.AptDao;
import aptogether.model.AptInfo;

public class AptService {
	private static AptService service = new AptService();
	private static AptDao dao = null;

	public static AptService getService() {
		dao = AptDao.getInstance();
		return service;
	}

	public int insertAptService(AptInfo apt) {
		return dao.insertApt(apt);
	}

	public List<AptInfo> showAptService(String keyword) {
		return dao.showApt(keyword);
	}

}
