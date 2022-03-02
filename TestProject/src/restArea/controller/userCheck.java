package restArea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.answerDAO;

@WebServlet("/userCheck")
public class userCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		HttpSession session = request.getSession();
		String acontent = (String)session.getAttribute("user");
		
		answerDAO adao = new answerDAO();
		int cnt = adao.userCheck(acontent);
			
		if(cnt>0) {
			 response.sendRedirect("symUpdate");          
	     }
		
	}
}