package aptogether.model;

import java.io.Serializable;

public class Board implements Serializable{
	private int seq;
	private String Title;
	private String Email;
	private String Tel;
	private String Content;
	private String Fname;
	private String Compdate;
	
	public Board() {}
	
	





	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}





	public String getTitle() {
		return Title;
	}



	public void setTitle(String title) {
		Title = title;
	}



	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
		Email = email;
	}



	public String getTel() {
		return Tel;
	}



	public void setTel(String tel) {
		Tel = tel;
	}



	public String getContent() {
		return Content;
	}



	public void setContent(String content) {
		Content = content;
	}



	public String getFname() {
		return Fname;
	}



	public void setFname(String fname) {
		Fname = fname;
	}



	public String getCompdate() {
		return Compdate;
	}



	public void setCompdate(String compdate) {
		Compdate = compdate;
	}



	@Override
	public String toString() {
		return "Board [Title=" + Title + ", Email=" + Email + ", Tel=" + Tel + ", Content=" + Content + ", Fname="
				+ Fname + ", Compdate=" + Compdate + "]";
	}
	
}
