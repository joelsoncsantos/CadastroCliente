package org.senai.projetoPagina.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.senai.projetoPagina.modelo.Pessoa;

/**
 * Servlet implementation class ServeletApagar
 */
@WebServlet(
		name ="ServeletApagar",
		urlPatterns = {"/serveletApagar"})
public class ServeletApagar extends HttpServlet {
	public void service(HttpServletRequest request,
			HttpServletResponse response) throws ServerException, IOException {
		
		Pessoa obj = new Pessoa();
		boolean sucesso = false;
		PrintWriter saida = response.getWriter();
		
		/*obj.setEmail(request.getParameter("email"));
		obj.setNome(request.getParameter("nome"));		
		obj.setSilhouette(request.getParameter("silhouette"));
		obj.setPromocao(request.getParameter("promocao"));
		obj.setArqGratuito(request.getParameter("arqGratuitos"));
		obj.setAchou(request.getParameter("achou"));
		obj.setCursoPago(request.getParameter("cursosPagos"));
		obj.setSenha(request.getParameter("senha"));*/
		obj.setCod(Integer.parseInt(request.getParameter("cod")));
		
		
		sucesso = obj.apagar();
		
		if(sucesso) {
			saida.print("true");
		}else {
			saida.print("false");
		}
		
		
	}

}
