package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
    protected Connection conn;
    protected PreparedStatement pstmt;
    protected ResultSet rs;
    protected Statement stmt;

    public JDBConnect(ServletContext application) {
        try {
            String driver = application.getInitParameter("dbDriver");
            String url = application.getInitParameter("dbUrl");
            String user = application.getInitParameter("dbUser");
            String password = application.getInitParameter("dbPassword");

            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
