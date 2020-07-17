package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Member.Dfinemember;

public class getUsrInfoObj {

	public Dfinemember getUsrInfo(String usrId) {

		Connection conn = getConn("localhost", "1521", "xe");

		Dfinemember usrDataObj = new Dfinemember();

		boolean result = true;

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = "SELECT * " +
					   "FROM DfineMember " +
					   "WHERE usrID = ? ";

		try {

			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, usrId);
				
			rs = pstmt.executeQuery();
			
			rs.next();

			usrDataObj.setUsrid(rs.getString("usrID"));
			usrDataObj.setUsrfirstname(rs.getString("usrFirstName"));
			usrDataObj.setUsrlastname(rs.getString("usrLastName"));
			usrDataObj.setUsraddress(rs.getString("usrAddress"));
			usrDataObj.setUsrphone(rs.getString("usrPhone"));

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
		}

		return usrDataObj;
	}
	
	public Connection getConn(String url, String port, String db) {
		Connection conn = null;
		String jdbcDriver = "jdbc:oracle:thin:@" + url + ":" + port + ":" + db;
		String dbUsr = "c##take";
		String dbPass = "546944";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 커넥션 정보를 가지고 Oracle DB 접근하기위함
			conn = DriverManager.getConnection(jdbcDriver, dbUsr, dbPass);
		}
		catch (Exception e) {	
			
			e.printStackTrace();
			}

		return conn;

	}
}
