package aptogether.model;

import java.io.Serializable;

public class Showcomp implements Serializable{
	
	private int no_comp;
	private String title;
	private String email;
	private String tel;
	private String contents;
	private String fname;
	private String process;
	
	public Showcomp() {}

	public Showcomp(int no_comp, String title, String email, String tel, String content, String fname, String process) {
		super();
		this.no_comp = no_comp;
		this.title = title;
		this.email = email;
		this.tel = tel;
		this.contents = content;
		this.fname = fname;
		this.process = process;
	}

	public int getNo_comp() {
		return no_comp;
	}

	public void setNo_comp(int no_comp) {
		this.no_comp = no_comp;
	}

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

	public String getContents() {
		return contents;
	}

	public void setContents(String content) {
		this.contents = content;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	@Override
	public String toString() {
		return "Showcomp [no_comp=" + no_comp + ", title=" + title + ", email=" + email + ", tel=" + tel + ", content="
				+ contents + ", fname=" + fname + ", process=" + process + "]";
	}
	
	
	
	
}
