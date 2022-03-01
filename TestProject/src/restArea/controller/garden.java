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
      
      HttpSession session= request.getSession();
        
      userVO uvo= (userVO)session.getAttribute("vo");
      String id = uvo.getId();
     
      gardenDAO dao = new gardenDAO();
      
      gardenVO vo = dao.garden(id);
   
      if(vo!=null) {
         session.setAttribute("gcnt", vo);   
         response.sendRedirect("gardenBoard.jsp");          
      }
  
   }
}