package restArea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.answerDAO;
import restArea.model.answerVO;
import restArea.model.userVO;
import restArea.model.writeDAO;
import restArea.model.writeVO;

@WebServlet("/mycheckWrite")
public class mycheckWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		HttpSession session = request.getSession();
		userVO uvo = (userVO) session.getAttribute("vo");

		String id = uvo.getId();
		int write_seq = Integer.parseInt(request.getParameter("write_seq"));

		writeDAO dao = new writeDAO();
		writeVO vo = new writeVO(id, write_seq);
		writeVO wvo = dao.mycheckWrite(vo);

		answerVO avo = new answerVO(write_seq);
		answerDAO adao = new answerDAO();
		
		List<answerVO> list = adao.mycheckAnswer(avo);

//		request.setAttribute("list", list);
//		request.setAttribute("wvo", wvo);
		
		session.setAttribute("list", list);
		session.setAttribute("wvo", wvo);
		response.sendRedirect("checkAnswerBoard.jsp");

//		RequestDispatcher rd = request.getRequestDispatcher("checkAnswerBoard.jsp");
//		rd.forward(request, response);
	}

}