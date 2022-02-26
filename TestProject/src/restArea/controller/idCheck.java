package restArea.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restArea.model.userDAO;
import restArea.model.userVO;

@WebServlet("/idCheck")
public class idCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");

		userDAO dao = new userDAO();
		userVO vo = dao.idCheck(id);
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		out.print(vo == null);
	}
}
