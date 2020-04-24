package aptogether.model;

import java.io.Serializable;

public class Member implements Serializable{
	private int member_seq;
	private String id;
	private String pass;
	private int apt_seq;
	private String dong;
	private String ho;
	private char admit;
	private int type;
	
	public Member() {}

	public Member(String dong, String ho) {
		super();
		this.dong = dong;
		this.ho = ho;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getApt_seq() {
		return apt_seq;
	}

	public void setApt_seq(int apt_seq) {
		this.apt_seq = apt_seq;
	}

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

	public char getAdmit() {
		return admit;
	}

	public void setAdmit(char admit) {
		this.admit = admit;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Member [member_seq=" + member_seq + ", id=" + id + ", pass=" + pass + ", apt_seq=" + apt_seq + ", dong="
				+ dong + ", ho=" + ho + ", admit=" + admit + ", type=" + type + "]";
	}
	
	
}
