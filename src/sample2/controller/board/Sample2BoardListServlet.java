package sample2.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardListServlet
 */
@WebServlet("/sample2/board/list")
public class Sample2BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageStr = request.getParameter("page");
		int page = 1;
		if (pageStr != null) {
			page = Integer.parseInt(pageStr);
		}
		
		BoardDao dao = new BoardDao();
//		List<Board> boardList = dao.list();
//		List<BoardDto> boardList = dao.list2();
		List<BoardDto> boardList = dao.list3(page);
		int total = dao.countAll();
		
		int cnt = total;
		
		if ((cnt % 5) != 0) {
			cnt = (cnt / 5) + 1;
		} else {
			cnt = cnt / 5;
		}
		
		request.setAttribute("boards", boardList);
		request.setAttribute("totalNum", total);
		request.setAttribute("pageCnt", cnt);
		
		String path = "/WEB-INF/sample2/board/list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
