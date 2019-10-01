package servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jmx.snmp.Timestamp;

import dao.BoardDAO;
import service.BoardService;
import service.BoardServiceImpl;
import vo.BoardVO;

/**
 * Servlet implementation class insertBoardServlet
 */
@WebServlet("/insertBoard.do")
public class insertBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		System.out.println("/insertBoard.do 요청 처리");

		BoardDAO dao = new BoardDAO();
		BoardService service = new BoardServiceImpl(dao);
		BoardVO vo = new BoardVO();
//		
		vo.setBid(request.getParameter("bid"));
		vo.setContent(request.getParameter("content"));
		vo.setUserid(request.getParameter("userid"));
		vo.setWdate(request.getParameter("wdate"));
		String n = request.getParameter("userid");
		request.setAttribute("userid", n);
		//String encodeResult = URLEncoder.encode("listProduct.do?userid="+n, "UTF-8");
		String new_name = URLEncoder.encode(n);
		System.out.println("insertboard.do  : "+n);
		try {
			service.addBoard(vo);
			response.sendRedirect("listboard.do");
		} catch (Exception e) {
			request.setAttribute("exception", new Exception("데이터 입력이 잘못되었습니다"));
			System.out.println(e);
			getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
		}	}

}
