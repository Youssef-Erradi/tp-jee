package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Etudiant;

@WebServlet("/main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Etudiant etudiant = new Etudiant("Erradi", "Youssef");
		request.setAttribute("etudiant", etudiant);
		request.getRequestDispatcher("/Etudiant.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("nom", request.getParameter("nom"));
		request.setAttribute("prenom", request.getParameter("prenom"));
		request.setAttribute("sexe", request.getParameter("sexe"));
		request.setAttribute("loisirs", request.getParameterValues("loisirs"));
		request.getRequestDispatcher("/affichage.jsp").forward(request, response);
	}

}
