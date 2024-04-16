# deleteForm.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>/hyejin2/0416/deleteForm.jsp</h1>

<form action="delete.jsp" method="post">
	번호: <input type="text" name="num" />
		<input type="submit" value="사원 삭제" />

</form>

# delete.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="web.bean.dao.OracleConnection" %>

<h1>/hyejin2/0416/delete.jsp</h1>

<%
	String num = request.getParameter("num");

	Connection conn = OracleConnection.getConnection();
	
	String sql = "delete from test where num=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, num);
	
	int result = pstmt.executeUpdate();
	if(result == 1){
		out.println("<h1>삭제 되었습니다.</h1>");
	}else{
		out.println("<h1>사원 번호를 다시 입력하세요.</h1>");
	}
	pstmt.close();
	conn.close();
%>
