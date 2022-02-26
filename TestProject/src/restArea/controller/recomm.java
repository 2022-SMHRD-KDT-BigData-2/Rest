package restArea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restArea.model.recommDAO;
import restArea.model.recommVO;

// ±Û ÃßÃµ

@WebServlet("/recomm")
public class recomm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
			
		recommDAO dao = new recommDAO();	
		String rvo = dao.getrecomm();
		
		request.setAttribute("rvo", rvo);
		
		RequestDispatcher rd = request.getRequestDispatcher("goMain");
		rd.forward(request, response);	
		
		System.out.println(rvo);
	}
}
