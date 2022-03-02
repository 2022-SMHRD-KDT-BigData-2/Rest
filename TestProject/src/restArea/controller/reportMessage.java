package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.answerDAO;
import restArea.model.answerVO;
import restArea.model.userDAO;
import restArea.model.userVO;

@WebServlet("/reportMessage")
public class reportMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");

		HttpSession session = request.getSession();
		userVO uvo = (userVO) session.getAttribute("vo");

		String id = uvo.getId();
		
		userVO vo = new userVO(id);
		userDAO dao = new userDAO();
				
		int cnt = dao.sumReport(vo);
		
		if(cnt>0) {
			response.sendRedirect("reportMessage.jsp");
		} else {
		}
	}
}
