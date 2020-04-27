package aptogether.model;

import java.io.Serializable;

public class PollSelect implements Serializable{
	
	private int poll_select_seq;
	private int member_seq;
	private String select_date;
	private int option_seq;
	
	public PollSelect() {}

	public int getPoll_select_seq() {
		return poll_select_seq;
	}

	public void setPoll_select_seq(int poll_select_seq) {
		this.poll_select_seq = poll_select_seq;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	public String getSelect_date() {
		return select_date;
	}

	public void setSelect_date(String select_date) {
		this.select_date = select_date;
	}

	public int getOption_seq() {
		return option_seq;
	}

	public void setOption_seq(int option_seq) {
		this.option_seq = option_seq;
	}

}
