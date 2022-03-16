/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.VacinaBean;
import br.com.senaces.dao.VacinaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sala302b
 */
public class ValidarVacina extends HttpServlet {

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
            if (action.equals("cadastrarVacina")) {
                // request.setCharacterEncoding("utf-8");
 
                VacinaBean vacina = new VacinaBean();
                vacina.setNome(request.getParameter("txtNomeVacina"));
                vacina.setDoses(request.getParameter("txtDoses"));
                vacina.setIntervalo(request.getParameter("txtIntervalo"));
                vacina.setPrimeira_dose(request.getParameter("txtPrimeiraDose"));
                VacinaDAO daozao = new VacinaDAO();
                daozao.cadastrarVacina(vacina);
                
                request.getRequestDispatcher("formvacina.jsp").forward(request, response);
            }
            if (action.equals("listarVacinas")) {
                VacinaDAO dao = new VacinaDAO();
                
                request.setAttribute("vacina", dao.listarVacinas());
                request.getRequestDispatcher("visualizarVacina.jsp").forward(request, response);
                
            }
            if (action.equals("editarVacina")) {
                int idvacina = Integer.parseInt(request.getParameter("idvacina"));
                
                VacinaDAO dao = new VacinaDAO();
                VacinaBean v = new VacinaBean();
                
                v = dao.listarVacina(idvacina);
                
                request.setAttribute("vacina", v);
                request.getRequestDispatcher("editar_vacina.jsp").forward(request, response);
                
            }
            if (action.equals("atualizarVacina")) {
                int idvacina = Integer.parseInt(request.getParameter("idvacina"));
                
                VacinaDAO dao = new VacinaDAO();
                VacinaBean vac = new VacinaBean();
                
                vac.setNome(request.getParameter("txtNomeVacina"));
                vac.setDoses(request.getParameter("txtDoses"));
                vac.setIntervalo(request.getParameter("txtIntervalo"));
                vac.setPrimeira_dose(request.getParameter("txtPrimeiraDose"));
                
                dao.atualizarVacina(idvacina,vac);
                
                request.setAttribute("vacina", dao.listarVacinas());
                request.getRequestDispatcher("visualizarVacina.jsp").forward(request, response);
            }
            if (action.equals("toexcluirVacina")) {
                int idvacina = Integer.parseInt(request.getParameter("idvacina"));
                
                VacinaDAO dao = new VacinaDAO();
                VacinaBean v = new VacinaBean();
                
                v = dao.listarVacina(idvacina);
                
                request.setAttribute("vacina", v);
                request.getRequestDispatcher("excluir_vacina.jsp").forward(request, response);
                
            }
            if (action.equals("excluirVacina")) {
                int idvacina = Integer.parseInt(request.getParameter("idvacina"));
                
                VacinaDAO dao = new VacinaDAO();
                
                dao.excluirVacina(idvacina);
                
                request.setAttribute("vacina", dao.listarVacinas());
                request.getRequestDispatcher("visualizarVacina.jsp").forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarVacina</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarVacina at " + request.getContextPath() + "</h1>");
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
