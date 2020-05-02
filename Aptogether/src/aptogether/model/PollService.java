package aptogether.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class PollService {
	private static PollService service = new PollService();
	private static PollDao dao;
	
	public static PollService getinstance() {
		dao = PollDao.getinstance();
		return service;
	}
	
	public int PollInsertService(Poll poll, List<Option> option){
		return dao.PollInsert(poll, option);
	}
	
	public List<Poll> PollListService(HttpServletRequest request) {
		return dao.PollList();
	}
	
	public List<Option> OptionListService(HttpServletRequest request){
		int seq = Integer.parseInt(request.getParameter("poll_seq"));
		
		return dao.OptionList(seq);
	}
	
	public Integer PollSelectInsertService(PollSelect pollselect) {
		return dao.PollSelectInsert(pollselect);
	}
	
	public List<Detail> PollDetailListService(HttpServletRequest request) throws Exception{

		int seq = Integer.parseInt(request.getParameter("seq"));
		
		return dao.PollDetailList(seq);
	}
	
	public int PollHitcountService(HttpServletRequest request){
		int seq = Integer.parseInt(request.getParameter("poll_seq"));
		return dao.PollHitCount(seq);
	}

}
