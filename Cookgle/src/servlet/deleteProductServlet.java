package servlet;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductDAO_Oracle;
import service.ProductService;
import service.ProductServiceImpl;


@WebServlet("/deleteProduct.do")
public class deleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String[] pid = request.getParameterValues("pid");
		String n = request.getParameter("userid");
		System.out.println(n);
		ProductDAO dao = new ProductDAO_Oracle();
		ProductService service = new ProductServiceImpl(dao);
		try {
			for (String data : pid) {
				int r = service.deleteProduct(data);
				System.out.println(data+" => "+r);
			}
			System.out.println("하이"+n);
			String new_name = URLEncoder.encode(n);
			response.sendRedirect("listProduct.do?userid="+new_name);
		} catch (Exception e) {
			request.setAttribute("exception", e);
			System.out.println(e);
			request.getRequestDispatcher("/error.jsp").forward(request, response);

		}
	}

}
