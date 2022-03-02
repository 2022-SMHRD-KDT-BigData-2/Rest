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

// 글 작성자 신고

@WebServlet("/answerReport")
public class answerReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		int avo = (int)session.getAttribute("aseq");
		
		int answer_seq = avo;
		
		answerVO vo = new answerVO(answer_seq);
		answerDAO dao = new answerDAO();
		int cnt = dao.areport(vo);
		
		if(cnt>0) {
			response.sendRedirect("checkAnswerboard.jsp");
		}
		
	}
}
