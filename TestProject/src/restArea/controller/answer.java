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
import restArea.model.userVO;

// ±Û ´äº¯

@WebServlet("/answer")
public class answer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		userVO uvo = (userVO)session.getAttribute("vo");	
		
		String id = uvo.getId(); 
		int write_seq = Integer.parseInt(request.getParameter("write_seq"));
		String acontent = request.getParameter("acontent");
		
		answerVO vo = new answerVO(id, write_seq, acontent);
		answerDAO dao = new answerDAO();
		int cnt = dao.answer(vo);

		response.sendRedirect("answerSubmit.jsp");
	}
}
