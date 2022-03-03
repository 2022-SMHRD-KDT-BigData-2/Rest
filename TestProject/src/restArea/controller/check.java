package restArea.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

// 글 확인 (여러 개)

@WebServlet("/check")
public class check extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("EUC-KR");

      HttpSession session = request.getSession();
      userVO uvo = (userVO) session.getAttribute("vo");

      String id = uvo.getId();

      writeDAO dao = new writeDAO();
      List<writeVO> list = dao.viewBoard(id);

      session.setAttribute("list", list);
      writeVO writeSession = (writeVO)session.getAttribute("writeSession");
       
      writeVO dvo = new writeVO(id);    
      int delboard = dao.minusdate(dvo);
    
      List<writeVO> list2 = dao.seldel();
     
      request.setAttribute("list2", list2);    
      session.setAttribute("list", list);
      session.setAttribute("list2",list2 );
  
      RequestDispatcher rd = request.getRequestDispatcher("checkBoard.jsp");
      rd.forward(request, response);
   }
}
