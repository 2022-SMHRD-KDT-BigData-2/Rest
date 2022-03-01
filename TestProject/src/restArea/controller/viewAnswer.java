package restArea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.userVO;
import restArea.model.writeDAO;
import restArea.model.writeVO;


@WebServlet("/viewAnswer")
public class viewAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");

	    HttpSession session = request.getSession();
	    userVO uvo = (userVO) session.getAttribute("vo");

	    String id = uvo.getId();
		String category = request.getParameter("category");
		
		writeVO vo = new writeVO(id, category);
		
		writeDAO dao = new writeDAO();
		writeVO avo = dao.viewAnswer(vo);
		
		System.out.println(avo);
		
		request.setAttribute("avo", avo);
	      
	    RequestDispatcher rd = request.getRequestDispatcher("answerBoard.jsp");
	    rd.forward(request, response);

	}
}
