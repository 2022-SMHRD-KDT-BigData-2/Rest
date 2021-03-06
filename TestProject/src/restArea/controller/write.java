package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.userVO;
import restArea.model.writeDAO;
import restArea.model.writeVO;

// 글 작성 + 2주 후 삭제 메시지

@WebServlet("/write")
public class write extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		userVO uvo = (userVO)session.getAttribute("vo");	
		
		String id = uvo.getId(); 
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String wcontent = request.getParameter("wcontent");
		
		writeVO vo = new writeVO(id, category, title, wcontent);
		
		writeDAO dao = new writeDAO();
		int cnt = dao.write(vo);

		response.sendRedirect("writeSubmit.jsp");	
	}
}
