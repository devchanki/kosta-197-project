<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
try {
String driver="oracle.jdbc.driver.OracleDriver";  
Class.forName(driver);  
String url="jdbc:oracle:thin:@localhost:1522:myoracle";  
String userName="koapt";  
String passWord="1234"; 
Connection con = DriverManager.getConnection(url , userName , passWord);
Statement st = con.createStatement();
//DB에 데이터 넣기

String sql2="select * from comp_board"; 
ResultSet rs = st.executeQuery(sql2);
while(rs.next()){
    String s = rs.getString("no_comp");
    String n1 = rs.getString("Title");
    String n2 = rs.getString("email");
    String n3 = rs.getString("Tel");
    String n4 = rs.getString("Content");
    String n5 = rs.getString("Fname");
    out.write(s+" "+n1+" "+n2+" "+n3+" "+n4+" "+n5+"<br/>"); 
}
con.close();
st.close();

} catch (Exception e) {
          System.out.println(e);
}
%>

	
</body>
</html>