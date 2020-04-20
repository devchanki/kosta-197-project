package aptogether.action;

public class ActionForward {
	private boolean isRedirect;
	private String url;
	
	public ActionForward() {
		super();
	}

	public ActionForward(boolean isRedirect, String url) {
		super();
		this.isRedirect = isRedirect;
		this.url = url;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
