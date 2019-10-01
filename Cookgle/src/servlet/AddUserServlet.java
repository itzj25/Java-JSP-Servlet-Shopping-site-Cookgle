package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import javafx.scene.control.Alert;
import service.UserService;
import service.UserServiceImpl;
import vo.UserVO;

@WebServlet("/AddUser.do")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate(); // session 개체 파괴
		}
		response.sendRedirect("./main.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		UserDao dao = new UserDao();
		UserService service = new UserServiceImpl(dao);
		UserVO vo = new UserVO();
		vo .setId(id);
		vo.setName(name);
		vo.setPassword(pw);
		
		int result = service.idCheck(id);
		
		System.out.println(result);
		  if(result==1) { 
			  request.setAttribute("id", id);
			  request.setAttribute("result", result);
			  request.getRequestDispatcher("signup.jsp").forward(request, response);
		  }else if(result==0){ 
			  request.setAttribute("id", id);
			  request.setAttribute("result", result);
			  service.insertUser(vo);
			  request.getRequestDispatcher("login_jsp.jsp").forward(request, response); 
		  };
		 
	}
		
}


