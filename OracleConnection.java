package web.bean.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleConnection {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbURL="jdbc:oracle:thin:@192.168.219.198:1521:orcl";
			String user =  "scott3";
			String dbpw = "tiger";
			conn = DriverManager.getConnection(dbURL, user, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
