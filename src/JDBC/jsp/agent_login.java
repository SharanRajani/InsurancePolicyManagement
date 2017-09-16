package JDBC.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import JDBC.jsp.Connect;

public class agent_login {

	public int ID(String u_name, String pass) {
		int agent_id = 122;
		String sql;
		sql = "select agent_id from agent where a_uname=? AND a_passwd=?";
		try {

			Connection conn = new Connect().myDBConnect();
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, u_name);
			stmt.setString(2, pass);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			agent_id = rs.getInt("agent_id");
			return agent_id;
		} catch (Exception e) {
			System.out.println(e);
		}

		return agent_id;

	}

	public static void main(String args[]) {
		int key = new agent_login().ID("Sharan", "sharan123");
		System.out.println("key=" + key);
	}

}
