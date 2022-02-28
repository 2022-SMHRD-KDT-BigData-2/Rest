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

import restArea.model.userDAO;
import restArea.model.userVO;
import restArea.model.writeDAO;
import restArea.model.writeVO;


@WebServlet("/date")
public class date extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 request.setCharacterEncoding("EUC-KR");

	      HttpSession session = request.getSession();
	      userVO uvo = (userVO) session.getAttribute("vo");

	      String id = uvo.getId();
	   
	      writeDAO dao = new writeDAO();
	      List<writeVO> list = dao.viewBoard(id);
	      
	      System.out.println(list);
	      
	      request.setAttribute("list", list);
	      
	      System.out.println(list);
	      
	      RequestDispatcher rd = request.getRequestDispatcher("checkBoard.jsp");
	      rd.forward(request, response);
	
	

		
	}

}
