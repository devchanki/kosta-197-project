package aptogether.model;

import java.io.Serializable;

public class Detail implements Serializable{
	
	private String dong;
	private String ho;
	private String name;
	private int poll_select_seq;
	
	public Detail() {}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPoll_select_seq() {
		return poll_select_seq;
	}

	public void setPoll_select_seq(int poll_select_seq) {
		this.poll_select_seq = poll_select_seq;
	}

}
