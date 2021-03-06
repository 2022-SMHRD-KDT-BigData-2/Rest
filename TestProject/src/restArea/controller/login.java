package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.userDAO;
import restArea.model.userVO;


// ?α??? 

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		userVO vo = new userVO(id, pw);
		
		userDAO dao = new userDAO();
		userVO uvo = dao.login(vo);
		
		if(uvo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);
			response.sendRedirect("goMain");
		} else {
			response.sendRedirect("login.jsp");
		}

	}
}
