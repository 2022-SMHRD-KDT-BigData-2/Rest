package restArea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.userDAO;

@WebServlet("/symUpdate")
public class symUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("uid");

		userDAO udao = new userDAO();		
		int cnt = udao.symUpdate(id);
		
		if(cnt>0) {
			response.sendRedirect("check");
		}
		
	}
}