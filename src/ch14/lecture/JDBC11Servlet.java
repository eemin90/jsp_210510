package ch14.lecture;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC11Servlet
 */
@WebServlet("/JDBC11Servlet")
public class JDBC11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC11Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid = request.getParameter("eid");
		
		Employee employee = executeJDBC(eid);
		
		request.setAttribute("emp", employee);
		
		String path = "/ch14/jdbc11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private Employee executeJDBC(String id) {
		
		Employee employee = null;
		
		String sql = "SELECT EmployeeID, LastName, FirstName FROM Employees WHERE EmployeeID = " + id;
		
		String url = "jdbc:mysql://13.125.228.102/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			// JDBC 드라이버 로딩 (클래스 로딩)
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 연결 (DB Connection 생성)
			con = DriverManager.getConnection(url, user, password);
			
			// Statement 생성
			stmt = con.createStatement();
			
			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery(sql);
			
			// 결과 탐색
			if (rs.next()) {
				int eid = rs.getInt(1);
				String lastName = rs.getString(2);
				String firstName = rs.getString(3);
				
				employee = new Employee();
				employee.setEid(eid);
				employee.setLastName(lastName);
				employee.setFirstName(firstName);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return employee;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
