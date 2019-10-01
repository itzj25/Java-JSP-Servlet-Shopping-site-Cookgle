package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductDAO_Oracle;
import service.ProductService;
import service.ProductServiceImpl;
import vo.ProductVO;

@WebServlet("/listProduct.do")
public class ListProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void service(HttpServletRequest request, HttpServletResponse response) 
			    throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8"); 
		
		System.out.println("/listProduct.do 요청 처리");
		System.out.println("userid : "+request.getParameter("userid"));
		
		ProductDAO dao = new ProductDAO_Oracle();
		ProductService service = new ProductServiceImpl(dao);
		List<ProductVO> list = service.ProductList(request.getParameter("userid"));
		request.setAttribute("productlist", list);
		System.out.println("리스트서블릿"+request.getParameter("userid"));
		request.setAttribute("userid", request.getParameter("userid"));
		
		System.out.println(list);
		String view ="/list.jsp";
		getServletContext().getRequestDispatcher(view).forward(request, response);
		
		
	}
}






