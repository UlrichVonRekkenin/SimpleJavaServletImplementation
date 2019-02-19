package app.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.Model;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Model model = Model.getInstance();
		List<String> items = model.list();
		
		req.setAttribute("items", items);
		
		req.getRequestDispatcher("jsps/list.jsp").forward(req, resp);
	}
	
}