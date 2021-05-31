package ch14.lecture;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC15InsertServlet
 */
@WebServlet("/JDBC15InsertServlet")
public class JDBC15InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC15InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/ch14/jdbc15form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String birthDate = request.getParameter("birthDate");
		String notes = request.getParameter("notes");
		
		Employee emp = new Employee();
		emp.setLastName(lastName);
		emp.setFirstName(firstName);
		emp.setBirthDate(birthDate);
		emp.setNotes(notes);
		
		executeJDBC(emp);
		
		doGet(request, response);
	}
	
	private void executeJDBC(Employee employee) {
		
		String sql = "INSERT INTO Employees (LastName, FirstName, BirthDate, Notes) "
				+ "VALUES (?, ?, ?, ?)";
		
		String url = "jdbc:mysql://13.125.228.102/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		PreparedStatement stmt = null;
		
		try {
			// JDBC 드라이버 로딩 (클래스 로딩)
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 연결 (DB Connection 생성)
			con = DriverManager.getConnection(url, user, password);
			
			// PreparedStatement 생성
			stmt = con.prepareStatement(sql);
			
			// ? (파라미터)에 값 할당
			stmt.setString(1, employee.getLastName());
			stmt.setString(2, employee.getFirstName());
			stmt.setString(3, employee.getBirthDate());
			stmt.setString(4, employee.getNotes());
			
			// 쿼리 실행
			int cnt = stmt.executeUpdate();
			
			// 결과 확인용
			if (cnt == 1) {
				System.out.println("입력 성공");
			} else {
				System.out.println("입력 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
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
		
	}

}
