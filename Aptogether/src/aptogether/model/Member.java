package aptogether.model;

import java.io.Serializable;

public class Member implements Serializable {
	int member_seq;
	String id;
	String password;
	int apt_seq;
	String dong;
	String ho;
	boolean admit;
	int type;
	String name;

	public Member() {
		super();
	}

	public Member(String id, String password, int apt_seq, String dong, String ho, int type, String name) {
		super();
		this.id = id;
		this.password = password;
		this.apt_seq = apt_seq;
		this.dong = dong;
		this.ho = ho;
		this.type = type;
		this.name = name;
	}

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public boolean isAdmit() {
		return admit;
	}

	public void setAdmit(boolean admit) {
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

	@Override
	public String toString() {
		return "Member [member_seq=" + member_seq + ", id=" + id + ", password=" + password + ", apt_seq=" + apt_seq
				+ ", dong=" + dong + ", ho=" + ho + ", admit=" + admit + ", type=" + type + ", name=" + name + "]";
	}
	
	

}