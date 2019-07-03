package org.senai.projetoPagina.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;


import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.senai.projetoPagina.modelo.ConectarJDBC;
import org.senai.projetoPagina.modelo.Pessoa;

/**
 * Servlet implementation class loginSenha
 */
@WebServlet(name ="ServeletLoginSenha",
urlPatterns = {"/serveletLoginSenha"})
public class ServeletLoginSenha extends HttpServlet {
	
	public void service(HttpServletRequest request,
			HttpServletResponse response) throws ServerException, IOException {
		Pessoa obj = new Pessoa();
		boolean sucesso = false;
		PrintWriter saida = response.getWriter();
		String checarEmail = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(!checarEmail.equals("")) {
			sucesso = obj.pesquisarSenha(checarEmail, senha);
			//System.out.println(sucesso);
			if(sucesso ) {
				//System.out.println("usuario cadastrado");
				saida.print("true");
						
			}
			
		}
		
		
		/*Connection conexao = new ConectarJDBC().getConectar();
		try {
			
			PreparedStatement ps = conexao.prepareStatement("Select email,senha from emails where email=?");
			ps.setString(1,checarEmail);
			ResultSet rs = ps.executeQuery();
			ResultSet ms = ps.getResultSet();
			HttpSession session = request.getSession();
			String emailBanco = ms.getString("email");
            String senhabanco = ms.getString("senha");
			
			if (checarEmail.equals(emailBanco) && senha.equals(senhabanco)) {
				// ja tem um email
				session.setAttribute(emailBanco, emailBanco);
                RequestDispatcher dispatcher = request.getRequestDispatcher("localizar.jsp");
                //dispatcher.forward(request, response);
                //paramos aqui 01/07
			}else {
				// email nao encontrado
				response.sendRedirect("index.html");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}*/
		
	}
}

	
		
		
		
		
		
        
       

       
        
       
       