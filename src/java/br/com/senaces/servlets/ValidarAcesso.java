/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.dao.AcessoDAO;
import br.com.senaces.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sala302b
 */
public class ValidarAcesso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=ISO-8859-1");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("acao");

            HttpSession sessao = request.getSession();

            if (action.equals("logar")) {
                AcessoBean access = new AcessoBean();
                access.setEmail(request.getParameter("txtUsuario"));
                access.setSenha(request.getParameter("txtSenha"));

                
                AcessoDAO dao = new AcessoDAO();
                AcessoBean objeto = new AcessoBean();
                objeto = dao.logarAcesso(access);

                if (objeto.getIdacesso() != 0
                        && objeto.getIdusuario() != 0
                        && objeto.getEmail() != null) {
                    System.out.println("idacesso: " + objeto.getIdacesso() 
                            + " idusuario: " 
                            + objeto.getIdusuario() 
                            + " login: " 
                            + objeto.getEmail() 
                            + " tipo: " 
                            + objeto.getTipo());
                    // access.setIdusuario(rs);
                    sessao.setAttribute("acesso", objeto);
                    response.sendRedirect("sidebar.jsp");
                } else {
                    // sessao.invalidate();
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }
            if (action.equals("deslogar")) {
                sessao.invalidate();
                System.out.println("Deslogado");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            if (action.equals("listarAcesso")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                System.out.println(request.getParameter("idusuario"));
                AcessoBean acesso = new AcessoBean();
                AcessoDAO daozasso = new AcessoDAO();
                UsuarioBean user = new UsuarioBean();
                UsuarioDAO daozin = new UsuarioDAO();

                acesso = daozasso.localizarAcesso(id);

                user = daozin.localizar(id);
                request.setAttribute("usuario", user);
                request.setAttribute("acesso", acesso);
                request.getRequestDispatcher("sidebarAcesso.jsp").forward(request, response);

            }
            if (action.equals("atualizarAcesso")) {
                AcessoDAO dao = new AcessoDAO();
                AcessoBean acs = new AcessoBean();

                acs.setIdusuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
                acs.setEmail(request.getParameter("txtCadastroEmail"));
                acs.setSenha(request.getParameter("my_password"));

                dao.atualizarAcesso(acs);

                int id = Integer.parseInt(request.getParameter("idusuario"));
                AcessoBean acesso = new AcessoBean();
                AcessoDAO daozasso = new AcessoDAO();
                UsuarioBean user = new UsuarioBean();
                UsuarioDAO daozin = new UsuarioDAO();

                acesso = daozasso.localizarAcesso(id);
                user = daozin.localizar(id);
                request.setAttribute("usuario", user);
                request.setAttribute("acesso", acesso);
                request.getRequestDispatcher("sidebarAcesso.jsp").forward(request, response);

            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarAcesso</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarAcesso at</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
