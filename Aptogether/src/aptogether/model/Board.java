package aptogether.model;

import java.io.Serializable;

public class Board implements Serializable{
	private String title;
	private String email;
	private String tel;
	private String content;
	private String fname;
	private String compdate;
	private int seq;

	public Board() {}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getCompdate() {
		return compdate;
	}

	public void setCompdate(String compdate) {
		this.compdate = compdate;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	@Override
	public String toString() {
		return "Board [title=" + title + ", email=" + email + ", tel=" + tel + ", content=" + content + ", fname="
				+ fname + ", compdate=" + compdate + ", seq=" + seq + "]";
	}
	
}	