package restArea.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import restArea.model.gardenDAO;
import restArea.model.gardenVO;
import restArea.model.userVO;

// 화원 이미지

@WebServlet("/garden")
public class garden extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      
      // 1.파라미터 수집
      
      HttpSession session= request.getSession();
      
      
      userVO uvo= (userVO)session.getAttribute("vo");
      String id = uvo.getId();
      
      //gardenVO vo = new gardenVO(id);
      gardenDAO dao = new gardenDAO();
      
      gardenVO vo = dao.garden(id);
      
      //gardenVO vo = dao.gardenBoard(id);
      
      
      if(vo!=null) {
         session.setAttribute("gcnt", id);   
         response.sendRedirect("gardenBoard.jsp");
               
      }
//      
//      gardenDAO dao = new gardenDAO();
//      
//      String gcnt = dao.selectOne(id);
//      
//      gardenVO vo = new gardenVO(gcnt);
//      
//      if(vo!=null) {
//         session.setAttribute("gcnt", vo);         
//      }
      
      
   }
}