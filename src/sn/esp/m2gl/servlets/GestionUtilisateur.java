package sn.esp.m2gl.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.esp.m2gl.beans.Utilisateur;

/**
 * Servlet implementation class GestionUtilisateur
 */
@WebServlet({ "/users/add", "/users/list", "/users/delete", "/users/update" })

public class GestionUtilisateur extends HttpServlet{
	
	private static final long serialVersionUID		= 1L;

	private static final String	VUE_AJOUT_UTILISATEUR = "/WEB-INF/templates/pages/ajouterUtilisateur.jsp";
	private static final String	VUE_LISTE_UTILISATEUR = "/WEB-INF/templates/pages/listerUtilisateur.jsp";
	private static final String	VUE_MODIFIER_UTILISATEUR = "/WEB-INF/templates/pages/modifierUtilisateur.jsp";

	
	
	public static final ArrayList<Utilisateur>	listeUtilisateurs		= new ArrayList<Utilisateur>();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println(request.getServletPath());
		String vue = null;

		String requestedUrl = request.getServletPath();

		if (requestedUrl.equals("/users/add"))
		{
			vue = VUE_AJOUT_UTILISATEUR;
		}
		else if (requestedUrl.equals("/users/delete"))
		{
			try
			{
				int id = Integer.parseInt(request.getParameter("id"));

				for (Utilisateur utilisateur : listeUtilisateurs)
				{
					if (utilisateur.getId() == id)
					{
						listeUtilisateurs.remove(utilisateur);
						// break;
					}
				}
			}
			catch (Exception e)
			{
			}
			vue = VUE_LISTE_UTILISATEUR;
			request.setAttribute("utilisateurs", listeUtilisateurs);
		}else if(requestedUrl.equals("/users/update")) {
			vue = VUE_MODIFIER_UTILISATEUR;
			try
			{
				int id = Integer.parseInt(request.getParameter("id"));

				for (Utilisateur utilisateur : listeUtilisateurs)
				{
					if (utilisateur.getId() == id)
					{
						request.setAttribute("utilisateur", utilisateur);
						
					}
				}
			}
			catch (Exception e)
			{
			}
		}
		else 
		{
			vue = VUE_LISTE_UTILISATEUR;
			request.setAttribute("utilisateurs", listeUtilisateurs);
		}

		getServletContext().getRequestDispatcher(vue).forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		String url = request.getServletPath();
		
		if(url.equals("/users/add")) {
			Utilisateur utilisateur = new Utilisateur(nom, prenom, login, password);
			listeUtilisateurs.add(utilisateur);
			response.sendRedirect("add");
		}else {
			int id = Integer.parseInt(request.getParameter("id"));
			
			for (Utilisateur utilisateur : listeUtilisateurs) {
				if (utilisateur.getId() == id) {
					
					utilisateur.setNom(nom);
					utilisateur.setPrenom(prenom);
					utilisateur.setLogin(login);
					utilisateur.setPassword(password);
				}
				break;
			}
			response.sendRedirect("list");
		}
	}

}
