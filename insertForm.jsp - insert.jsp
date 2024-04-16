# insertForm.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>/hyejin2/0416/InsertForm.jsp</h1>

<form action="insert.jsp" method="post">
	번호: <input type="text" name="num" /> <br />
	이름: <input type="text" name="name" /> <br />
	생일: <input type="text" name="birth" /> <br />
	휴대전화: <input type="text" name="phone" /> <br />


	<input type="submit" value="사원등록" />

</form>

# insert.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="web.bean.dao.OracleConnection" %>
<h1>/hyejin2/0416/Insert.jsp</h1>

<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String phone = request.getParameter("phone");

	
	Connection conn = OracleConnection.getConnection();
	
	String sql = "insert into test values(?,?,?,?)";	
	PreparedStatement pstmt = conn.prepareStatement(sql);	
	pstmt.setString(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, birth);
	pstmt.setString(4, phone);

	
	int result = pstmt.executeUpdate();
%> <h1>[<%=name %>] 사원 추가되었습니다.</h1>

<%
	pstmt.close();
	conn.close();
%>
