package restArea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restArea.model.bookDAO;
import restArea.model.bookVO;

@WebServlet("/todayBook")
public class todayBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		bookDAO dao = new bookDAO();
//		bookVO bvo = dao.todayBook();
//				
//		request.setAttribute("bvo", bvo);
//		
//		RequestDispatcher rd = request.getRequestDispatcher("goMain");
//		rd.forward(request, response);	
//		
//		System.out.println(bvo.getBname());
	}
}
