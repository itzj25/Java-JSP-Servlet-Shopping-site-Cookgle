package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dao.ProductDAO;
import dao.ProductDAO_Oracle;
import service.BoardService;
import service.BoardServiceImpl;
import service.ProductService;
import service.ProductServiceImpl;
import vo.BoardVO;
import vo.ProductVO;


@WebServlet("/listboard.do")
public class ListBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

		public void service(HttpServletRequest request, HttpServletResponse response) 
			    throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8"); 
		
		System.out.println("/listboard.do 요청 처리");
		System.out.println("userid : "+request.getParameter("userid"));
		
		BoardDAO dao = new BoardDAO();
		BoardService service = new BoardServiceImpl(dao);
		List<BoardVO> list = service.BoardList();
		request.setAttribute("Boardlist", list);
		
		request.setAttribute("userid", request.getParameter("userid"));
		
		System.out.println(list);
		String view ="/boardlist2.jsp";
		getServletContext().getRequestDispatcher(view).forward(request, response);
		
		


	}

}
