package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// ·Î±×¾Æ¿ô 

@WebServlet("/logout")
public class logout extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      HttpSession session = request.getSession();
      session.removeAttribute("vo");
      session.removeAttribute("gcnt");
      session.removeAttribute("uid");
      session.removeAttribute("user");
      session.removeAttribute("list");
      session.removeAttribute("wvo");
      session.removeAttribute("avo");
      session.removeAttribute("ruid");
      session.removeAttribute("ruser");
      session.removeAttribute("rvo");
      session.removeAttribute("bvo");
      
      response.sendRedirect("goMain");
      
   }
}