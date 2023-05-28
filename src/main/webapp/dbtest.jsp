<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>DB 연결 테스트</title>
</head>
<body>
	<%
		Connection con = null;
		try {
			String url = "jdbc:mysql://localhost:3306/basic_connection";
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			out.println("DB 연결 ..");
		} catch {
			out.println("실패");
		} finally {
			out.println("성공");
		}
			/* out.println("실패");
		} finally {
			out.println("성공");
		} */
	
	%>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
	Connection conn = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?user=root&password=1234");
		out.println("DB 연결중");
	} catch (SQLException ex){
		out.println("연결 실패");
		out.println(ex);
	} finally {
		out.println("연결 성공");
	}
%>
</body>
</html>