package aptogether.model;

import java.io.Serializable;
import java.util.List;

public class Option implements Serializable {

	private int option_seq;
	private String option_text;
	private int poll_seq;
	
	public Option() {}

	public int getOption_seq() {
		return option_seq;
	}

	public void setOption_seq(int option_seq) {
		this.option_seq = option_seq;
	}

	public String getOption_text() {
		return option_text;
	}

	public void setOption_text(String option_text) {
		this.option_text = option_text;
	}

	public int getPoll_seq() {
		return poll_seq;
	}

	public void setPoll_seq(int poll_seq) {
		this.poll_seq = poll_seq;
	}

}
