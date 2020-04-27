package aptogether.model;

import java.io.Serializable;

public class Member implements Serializable{
	
	private int member_seq;
	private String id;
	private String pass;
	private int apt_seq;
	private String dong;
	private String ho;
	private String admit;
	private int type;
	private String name;
	
	public Member() {}
	
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
	public String getAdmit() {
		return admit;
	}
	public void setAdmit(String admit) {
		this.admit = admit;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
