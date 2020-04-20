package aptogether.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import aptogether.security.ApiKeys;

/**
 * Servlet implementation class aptInfoController
 */
@WebServlet("/apt/*")
public class aptInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aptInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = request.getRequestURI();
		String[] requestStringArray = url.split("/");
		String requestString = requestStringArray[requestStringArray.length - 1];

		if(requestString.equals("aptList")) {
			final String USER_AGENT = "Mozilla/5.0";
			String url1 = "http://apis.data.go.kr/1611000/AptListService/getLegaldongAptList?bjdCode=";
			String url2 = "&numOfRows=100&ServiceKey=" + ApiKeys.getAptListKey();
			String url3 = request.getParameter("bjdCode");
			
			URL targetUrl = new URL(url1+url3+url2);
			HttpURLConnection con = (HttpURLConnection) targetUrl.openConnection();
			
			con.setRequestMethod("GET");
			con.setRequestProperty("User-Agent", USER_AGENT);
			DocumentBuilder builder;
			Document doc = null;
			int responseCode = con.getResponseCode();
			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String inputLine;
			String responseString = new String();
			
			while((inputLine = in.readLine()) != null) {
				responseString += inputLine;
			}
			in.close();
			
			System.out.println(responseCode);
			System.out.println(response);
			
			InputSource is = new InputSource(new StringReader(responseString));
	        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	        factory.setNamespaceAware(true);
	        builder = factory.newDocumentBuilder();
	        doc = builder.parse(is);
			XPathFactory xpathFactory = XPathFactory.newInstance();
			XPath xpath = xpathFactory.newXPath();
			XPathExpression expr = xpath.compile("//items/item");
	        NodeList nodeList = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
	        JSONObject json = new JSONObject();
	        JSONArray jArray = new JSONArray();
	        for (int i = 0; i < nodeList.getLength(); i++) {
	            NodeList child = nodeList.item(i).getChildNodes();
	            JSONObject tmpObj = new JSONObject();
	            for (int j = 0; j < child.getLength(); j++) {
	                Node node = child.item(j);
	                tmpObj.put(node.getNodeName(), node.getTextContent());
	            }
	            jArray.add(tmpObj);
	        }
	        json.put("aptInfo", jArray);
	        response.setContentType("application/json");
	     // Get the printwriter object from response to write the required json object to the output stream      
	     response.setCharacterEncoding("utf-8");
	        PrintWriter out = response.getWriter();
	     
	     // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
	     out.print(json);
	     out.flush();
		}
		
		
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
