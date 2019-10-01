package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import service.UserService;
import service.UserServiceImpl;
import vo.UserVO;

@WebServlet({"/login.do","/logout.do"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			                                      throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate(); // session 개체 파괴
		}
		response.sendRedirect("./main.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			                                      throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8"); 
		
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        
       // System.out.println("/login.do ");
       //System.out.println(id+"/"+pw);
        if (id==null || pw==null ||id.length()==0 ||pw.length()==0) {
        	request.setAttribute("msg", "pw 정보를 입력하세요");
        	request.setAttribute("id", id);
        	request.getRequestDispatcher("login_jsp.jsp").forward(request, response);
        }
        
        UserDao dao = new UserDao();
        UserVO vo = new UserVO(id,pw);
        UserService service = new UserServiceImpl(dao);
        UserVO data = service.LoginUser(vo);

          try {
        	  if(data != null ) {
             	HttpSession session = request.getSession();
             	session.setAttribute("login", id);
             	request.getRequestDispatcher("main.jsp").forward(request, response);
        	  }else {
        		  request.setAttribute("msg", "로그인 실패"); 
        		  request.setAttribute("id", id);
        		  request.getRequestDispatcher("login_jsp.jsp").forward(request, response); 
        	    }
        	  } catch (Exception e) {
        		  e.printStackTrace();
		}
	}
}




