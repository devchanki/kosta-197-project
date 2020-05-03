package vo;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Req {
	private final String USER_AGENT = "Mozilla/5.0";
	
	public StringBuffer aptList() throws Exception{
		String url1 = "https://dapi.kakao.com/v2/local/search/category.json?category_group_code=PM9";
		String url2 = "&x=33.450701&y=126.570667";
		String basicAuth = "KakaoAK 15fb0aeb5a335f299ee0ec4fbaf97467";
		
		
		
		URL targetUrl = new URL(url1+url2);
		
		HttpURLConnection con = (HttpURLConnection) targetUrl.openConnection();
		
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", USER_AGENT);
		con.setRequestProperty ("Authorization", basicAuth);
		int responseCode = con.getResponseCode();
		//System.out.println("status code="+con.getResponseCode());
		//System.out.println("content type="+con.getContentType());
		//System.out.println("content length="+con.getContentLength());
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
		String inputLine;
		StringBuffer response = new StringBuffer();
		
		while((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		
		System.out.println(responseCode);
		System.out.println(response);
		
		return response;
		
	}}