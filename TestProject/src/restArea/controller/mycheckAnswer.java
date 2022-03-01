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

import restArea.model.answerDAO;
import restArea.model.answerVO;
import restArea.model.userVO;
import restArea.model.writeDAO;
import restArea.model.writeVO;

@WebServlet("/mycheckAnswer")
public class mycheckAnswer extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("EUC-KR");

         HttpSession session = request.getSession();

       // int write_seq = Integer.parseInt(request.getParameter("write_seq"));
         answerDAO dao = new answerDAO();
         List<answerVO> list = dao.mycheckAnswer();

         
         System.out.println(list);
         
         request.setAttribute("list", list);
         
         RequestDispatcher rd = request.getRequestDispatcher("checkAnswerBoard.jsp");
         rd.forward(request, response);
   }

}
