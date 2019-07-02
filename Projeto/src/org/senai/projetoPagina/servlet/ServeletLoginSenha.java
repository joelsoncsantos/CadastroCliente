package org.senai.projetoPagina.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.senai.projetoPagina.modelo.ConectarJDBC;
import org.senai.projetoPagina.modelo.Pessoa;

/**
 * Servlet implementation class loginSenha
 */
@WebServlet(name ="ServeletloginSenha",
urlPatterns = {"/serveletLoginSenha"})
public class ServeletLoginSenha extends HttpServlet {
//	
//	public void service(HttpServletRequest request,
//			HttpServletResponse response) throws ServerException, IOException {
//		Pessoa obj = new Pessoa();
//		boolean sucesso = false;
//		PrintWriter saida = response.getWriter();
//		String checarEmail = request.getParameter("email");
//		String senha = request.getParameter("senha");
//		
//		Connection conexao = new ConectarJDBC().getConectar();
//		try {
//			
//			PreparedStatement ps = conexao.prepareStatement("Select email,senha from emails where email=?");
//			ps.setString(1,checarEmail);
//			ResultSet rs = ps.executeQuery();
//			
//			if (rs.next()) {
//				// ja tem um email
//				
//			}else {
//				// email nao encontrado
//				return false;
//			}
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			
//		}
//		
//	}
//	
//		
//		
//		
//		
//		
//        
//       
//
//       
//        ps.executeQuery(sql);
//        ResultSet rs = ps.getResultSet();
//        HttpSession session = request.getSession();
//
//        while (rs.next()) {
//            String loginBanco = rs.getString("login");
//            String senhabanco = rs.getString("senha");
//
//            if (login.equals(loginBanco) && senha.equals(senhabanco)) {
//                session.setAttribute(loginBanco, loginBanco);
//                RequestDispatcher dispatcher = request.getRequestDispatcher("Paginas/painel.jsp");
//                dispatcher.forward(request, response);
//            } else {
//                response.sendRedirect("index.html");
//            }
//
//        }
//
//        ps.close();
//        con.close();
//        response.sendRedirect("index.html");
//    } catch (Exception e) {
//        System.out.println(e);
//    }
//		
//		
//	}
       
}
