/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.LocalBean;
import br.com.senaces.dao.EnderecoDAO;
import br.com.senaces.dao.LocalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MAX
 */
public class ValidarLocal extends HttpServlet {

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
            if (action.equals("cadastrarLocal")) {
                LocalBean local = new LocalBean();
                EnderecoBean endereco = new EnderecoBean();
                
                local.setNome(request.getParameter("txtLocalRegistro"));
                local.setTelefone(request.getParameter("txtTelefone"));
                local.setCelular(request.getParameter("txtCelular"));
                
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setEndereco(request.getParameter("txtEndereco"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setBairro(request.getParameter("txtBairro"));
                
                LocalDAO dao = new LocalDAO();
                EnderecoDAO daozinho = new EnderecoDAO();
                
                int res = daozinho.cadastrarEndereco(endereco);
                local.setIdendereco(res);
                dao.cadastrarLocal(local);
                
                request.getRequestDispatcher("formlocal.jsp").forward(request, response);
            }
            if (action.equals("listarLocais")) {
                LocalDAO daozim = new LocalDAO();
                
                request.setAttribute("local", daozim.listarLocais());
                request.getRequestDispatcher("sidebarLocal.jsp").forward(request, response);                
            }
            if (action.equals("listaLocais")) {
                LocalDAO daozim = new LocalDAO();
                
                
                request.setAttribute("local", daozim.listarLocais());
                request.getRequestDispatcher("visualizarLocal.jsp").forward(request, response);                
            }
            if (action.equals("editarLocal")) {
                int idlocal = Integer.parseInt(request.getParameter("idlocal"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                LocalDAO dao = new LocalDAO();
                LocalBean locs = new LocalBean();
                
                locs = dao.listarLocal(idlocal,idendereco);
                
                request.setAttribute("local", locs);
                request.getRequestDispatcher("editar_local.jsp").forward(request, response);
            }
            if (action.equals("atualizarLocal")) {
                int idlocal = Integer.parseInt(request.getParameter("idlocal"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                LocalBean local = new LocalBean();
                EnderecoBean endereco = new EnderecoBean();
                
                local.setNome(request.getParameter("txtLocalRegistro"));
                local.setTelefone(request.getParameter("txtTelefone"));
                local.setCelular(request.getParameter("txtCelular"));
                
                endereco.setEndereco(request.getParameter("txtEndereco"));
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setBairro(request.getParameter("txtBairro"));
                
                LocalDAO dao = new LocalDAO();
                
                dao.atualizarLocal(local,endereco,idlocal,idendereco);
                
                request.setAttribute("local", dao.listarLocais());
                request.getRequestDispatcher("visualizarLocal.jsp").forward(request, response);
            }
            if (action.equals("toexcluirLocal")) {
                int idlocal = Integer.parseInt(request.getParameter("idlocal"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                LocalDAO dao = new LocalDAO();
                LocalBean locs = new LocalBean();
                
                locs = dao.listarLocal(idlocal,idendereco);
                
                request.setAttribute("local", locs);
                request.getRequestDispatcher("excluir_local.jsp").forward(request, response);
                
            }
            if (action.equals("excluirLocal")) {
                int idlocal = Integer.parseInt(request.getParameter("idlocal"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                LocalDAO dao = new LocalDAO();
                LocalBean locs = new LocalBean();
                
                dao.excluirLocal(idlocal,idendereco);
                
                request.setAttribute("local", dao.listarLocais());
                request.getRequestDispatcher("visualizarLocal.jsp").forward(request, response); 
                
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarLocal</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarLocal at </h1>");
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
