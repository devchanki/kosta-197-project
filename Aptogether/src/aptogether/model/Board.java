package aptogether.model;

import java.io.Serializable;

public class Board implements Serializable{
	private int No_comp;
	private String Title;
	private String Email;
	private String Tel;
	private String Content;
	private String Fname;
	private String PROCESS;
	
	public String getPROCESS() {
		return PROCESS;
	}

	public void setPROCESS(String pROCESS) {
		PROCESS = pROCESS;
	}

	public Board() {}

	public int getNo_comp() {
		return No_comp;
	}

	public void setNo_comp(int no_comp) {
		No_comp = no_comp;
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

	@Override
	public String toString() {
		return "Board [No_comp=" + No_comp + ", Title=" + Title + ", Email=" + Email + ", Tel=" + Tel + ", Content="
				+ Content + ", Fname=" + Fname + ", PROCESS=" + PROCESS + "]";
	}

	
	
}
