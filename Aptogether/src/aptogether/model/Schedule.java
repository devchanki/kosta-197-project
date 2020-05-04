package aptogether.model;

import java.io.Serializable;

public class Schedule implements Serializable{
	private int schedule_Seq;
	private String title;
	private String contents;
	private String start_Date;
	private String end_Date;
	private int apt_Seq;
	private String backgroundColor;
	private String dong;
	
	public Schedule() {}

	public Schedule(int schedule_Seq, String title, String contents, String start_Date, String end_Date, int apt_Seq, String backgroundColor,String dong) {
		super();
		this.schedule_Seq = schedule_Seq;
		this.title = title;
		this.contents = contents;
		this.start_Date = start_Date;
		this.end_Date = end_Date;
		this.apt_Seq = apt_Seq;
		this.backgroundColor=backgroundColor;
		this.dong=dong;
	}

	public int getSchedule_Seq() {
		return schedule_Seq;
	}

	public void setSchedule_Seq(int schedule_Seq) {
		this.schedule_Seq = schedule_Seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getStart_Date() {
		return start_Date;
	}

	public void setStart_Date(String start_Date) {
		this.start_Date = start_Date;
	}

	public String getEnd_Date() {
		return end_Date;
	}

	public void setEnd_Date(String end_Date) {
		this.end_Date = end_Date;
	}

	public int getApt_Seq() {
		return apt_Seq;
	}

	public void setApt_Seq(int apt_Seq) {
		this.apt_Seq = apt_Seq;
	}

	public String getBackgroundColor() {
		return backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	@Override
	public String toString() {
		return "Schedule [schedule_Seq=" + schedule_Seq + ", title=" + title + ", contents=" + contents
				+ ", start_Date=" + start_Date + ", end_Date=" + end_Date + ", apt_Seq=" + apt_Seq
				+ ", backgroundColor=" + backgroundColor + ", dong=" + dong + "]";
	}

	


	
}
