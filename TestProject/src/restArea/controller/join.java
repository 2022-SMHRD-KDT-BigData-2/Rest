package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restArea.model.userDAO;
import restArea.model.userVO;

// 회원 가입

@WebServlet("/join")
public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		userVO vo = new userVO(id, pw);
		
		userDAO dao = new userDAO();
		int cnt = dao.join(vo);
		
		if(cnt>0) {
			response.sendRedirect("goMain");
		} else {
			response.sendRedirect("join.jsp");
		}	
		
	}
}
