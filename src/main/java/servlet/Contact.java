package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		if(company == null || company.trim().isEmpty()) {
			 company = "お客様の会社名は伏せさせて頂きます。";
		}
		String email = request.getParameter("email");
		String requests = request.getParameter("request");
		String[] options = request.getParameterValues("option");
		String materials = request.getParameter("materials");
		
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("requests", requests);
		request.setAttribute("options", options);
		
		
		
		if("YES".equals(materials)) {
			request.getRequestDispatcher("/jsp/contact01.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/jsp/contact02.jsp").forward(request, response);
		}
		
		
	}

}
