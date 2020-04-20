package vo;

public class AptName {
	private String kaptName;
	private String name;
	
	public String getKaptName() {
		return kaptName;
	}
	public void setKaptName(String kaptName) {
		this.kaptName = kaptName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "AptName [kaptName=" + kaptName + ", name=" + name + "]";
	}
	
	
}
