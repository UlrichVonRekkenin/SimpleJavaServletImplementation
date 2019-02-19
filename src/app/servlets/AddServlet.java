package app.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.entities.Rectangle;
import app.model.Model;

@WebServlet("/add")
public class AddServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("jsps/add.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int a = Integer.parseInt(req.getParameter("sideA")); 
		int b = Integer.parseInt(req.getParameter("sideB"));
		
		Rectangle r = new Rectangle(a, b);
		Model.getInstance().add(r);
		
		req.setAttribute("test", r.toString());
		doGet(req, resp);
	}

	
}