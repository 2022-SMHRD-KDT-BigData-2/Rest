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

import restArea.model.bookDAO;
import restArea.model.bookVO;
import restArea.model.recommDAO;
import restArea.model.recommVO;
import restArea.model.userDAO;
import restArea.model.userVO;

// goMain

@WebServlet("/goMain")
public class goMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		userVO vo = (userVO)session.getAttribute("vo");
		
		userDAO udao = new userDAO();
		recommDAO rdao = new recommDAO();
		bookDAO bdao = new bookDAO();
		
			
		if(vo != null) {
			String id = vo.getId();
			userVO uvo = new userVO(id);		
			udao.sumReport(uvo);	
		} else {
			
		}
		// 오늘의 글
		recommVO rvo = rdao.todayRecomm();
		request.setAttribute("rvo", rvo);
		
		// 오늘의 책
		bookVO bvo = bdao.todayBook();
		request.setAttribute("bvo", bvo);
		
		// 이달의 책
		List<bookVO> list = bdao.monthBook();
		request.setAttribute("list", list);

		
		RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
		rd.forward(request, response);
	}
}
