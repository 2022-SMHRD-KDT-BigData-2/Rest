package restArea.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import restArea.model.writeDAO;
import restArea.model.writeVO;

// �׷���

@WebServlet("/graph")
public class graph extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		writeDAO dao = new writeDAO();
		writeVO vo = dao.drawGraph();
		
		Gson gson = new Gson();
		String json = gson.toJson(vo);
		System.out.println(vo);
		
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(json);
	}
}
