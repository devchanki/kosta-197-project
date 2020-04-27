package aptogether.model;

import java.io.Serializable;

public class AptInfo implements Serializable{
	private int apt_seq;
	private String kaptCode; 
	private String aptName;
	private String location;
	private String x;
	private String y;
	
	public int getApt_seq() {
		return apt_seq;
	}
	public void setApt_seq(int apt_seq) {
		this.apt_seq = apt_seq;
	}
	public String getKaptCode() {
		return kaptCode;
	}
	public void setKaptCode(String kaptCode) {
		this.kaptCode = kaptCode;
	}
	public String getAptName() {
		return aptName;
	}
	public void setAptName(String aptName) {
		this.aptName = aptName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getX() {
		return x;
	}
	public void setX(String x) {
		this.x = x;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	
	public AptInfo() {
		super();
	}
	public AptInfo(int apt_seq, String kaptCode, String aptName, String location, String x, String y) {
		super();
		this.apt_seq = apt_seq;
		this.kaptCode = kaptCode;
		this.aptName = aptName;
		this.location = location;
		this.x = x;
		this.y = y;
	}
	@Override
	public String toString() {
		return "AptInfo [apt_seq=" + apt_seq + ", kaptCode=" + kaptCode + ", aptName=" + aptName + ", location="
				+ location + ", x=" + x + ", y=" + y + "]";
	}
	
	
}
