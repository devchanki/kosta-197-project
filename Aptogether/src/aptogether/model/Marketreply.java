package aptogether.model;

import java.io.Serializable;

public class Marketreply implements Serializable{
	private int r_no;
	private String r_writer;
	private String r_contents;
	private String r_regdate;
	private int seq;
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public Marketreply() {}
	public Marketreply(int r_no, String r_writer, String r_contents, String r_regdate, int seq) {
		super();
		this.r_no = r_no;
		this.r_writer = r_writer;
		this.r_contents = r_contents;
		this.r_regdate = r_regdate;
		this.seq = seq;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public String getR_contents() {
		return r_contents;
	}
	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}
	public String getR_regdate() {
		return r_regdate;
	}
	public void setR_regdate(String r_regdate) {
		this.r_regdate = r_regdate;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
}
