package aptogether.mapper;

import java.util.List;


import aptogether.model.Member;
import aptogether.model.Option;
import aptogether.model.Poll;
import aptogether.model.PollSelect;
import aptogether.model.Detail;

public interface PollMapper {
	int PollInsert(Poll poll);
	int PollOption(List<Option> option);
	List<Poll> PollList();
	List<Option> OptionList(int seq);
	Integer PollSelectInsert(PollSelect pollselect);
	List<Detail> PollDetailList(int seq);
	int PollHitCount(int seq);
}
