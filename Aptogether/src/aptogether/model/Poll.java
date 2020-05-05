package aptogether.model;

import java.io.Serializable;

public class Poll implements Serializable{
	
	private int poll_seq;
	private String question;
	private String start_date;
	private String end_date;
	private int hitcount;
	private String contents;
	private int apt_seq;
	
	public Poll() {}



	public int getPoll_seq() {
		return poll_seq;
	}

	public void setPoll_seq(int poll_seq) {
		this.poll_seq = poll_seq;
	}
	
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getHitcount() {
		return hitcount;
	}

	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getApt_seq() {
		return apt_seq;
	}

	public void setApt_seq(int apt_seq) {
		this.apt_seq = apt_seq;
	}
	
}