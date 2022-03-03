package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.writeDAO;
import restArea.model.writeVO;

@WebServlet("/joy")
public class joy extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("EUC-KR");
      
      HttpSession session = request.getSession();
      
      int write_seq = Integer.parseInt(request.getParameter("write_seq"));
   
      writeVO vo = new writeVO(write_seq);
      
      writeDAO dao = new writeDAO();
      int cnt = dao.joy(vo);
      session.removeAttribute("writeSession");
      response.sendRedirect("yes.jsp");
   }

}
