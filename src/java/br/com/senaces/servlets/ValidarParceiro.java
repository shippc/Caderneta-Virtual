package br.com.senaces.servlets;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.ParceiroBean;
import br.com.senaces.dao.EnderecoDAO;
import br.com.senaces.dao.ParceiroDAO;
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
public class ValidarParceiro extends HttpServlet {

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
            if (action.equals("cadastrarParceiro")) {
                ParceiroBean parceiro = new ParceiroBean();
                EnderecoBean endereco = new EnderecoBean();

                parceiro.setNome(request.getParameter("txtNome"));
                parceiro.setTelefone(request.getParameter("txtTelefone"));
                parceiro.setCelular(request.getParameter("txtCelular"));
                parceiro.setCnpj(request.getParameter("txtCNPJ"));
                parceiro.setEmail(request.getParameter("txtEmail"));
                parceiro.setSite(request.getParameter("txtSite"));

                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setEndereco(request.getParameter("txtEndereco"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setBairro(request.getParameter("txtBairro"));

                EnderecoDAO daozinho = new EnderecoDAO();
                ParceiroDAO dao = new ParceiroDAO();

                int res = daozinho.cadastrarEndereco(endereco);
                parceiro.setIdendereco(res);
                dao.cadastrarParceiro(parceiro);

                request.getRequestDispatcher("formparceiro.jsp").forward(request, response);

            }
            if (action.equals("listarParceiros")) {
                ParceiroDAO dao = new ParceiroDAO();

                request.setAttribute("parceiro", dao.listarParceiros());
                request.getRequestDispatcher("visualizarParceiro.jsp").forward(request, response);

            }
            if (action.equals("editarParceiro")) {
                int idparceiro = Integer.parseInt(request.getParameter("idparceiro"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                ParceiroBean prc = new ParceiroBean();
                EnderecoBean end = new EnderecoBean();
                
                ParceiroDAO dao = new ParceiroDAO();
                EnderecoDAO daozim = new EnderecoDAO();
                
                end = daozim.listarEnderecos(idendereco);
                prc = dao.listarParceiro(idparceiro);
                
                request.setAttribute("parceiro", prc);
                request.setAttribute("endereco", end);
                request.getRequestDispatcher("editar_parceiro.jsp").forward(request, response);
            }
            if (action.equals("atualizarParceiro")) {
                int idparceiro = Integer.parseInt(request.getParameter("idparceiro"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                ParceiroBean parceiro = new ParceiroBean();
                EnderecoBean endereco = new EnderecoBean();

                parceiro.setNome(request.getParameter("txtNome"));
                parceiro.setCnpj(request.getParameter("txtCNPJ"));
                parceiro.setSite(request.getParameter("txtSite"));
                parceiro.setEmail(request.getParameter("txtEmail"));
                parceiro.setTelefone(request.getParameter("txtTelefone"));
                parceiro.setCelular(request.getParameter("txtCelular"));

                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setEndereco(request.getParameter("txtEndereco"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setBairro(request.getParameter("txtBairro"));
                
                ParceiroDAO dao = new ParceiroDAO();
                
                dao.atualizarParceiro(idparceiro,idendereco,parceiro,endereco);
                
                request.setAttribute("parceiro", dao.listarParceiros());
                request.getRequestDispatcher("visualizarParceiro.jsp").forward(request, response);

            }
            if (action.equals("toexcluirParceiro")) {
                int idparceiro = Integer.parseInt(request.getParameter("idparceiro"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                ParceiroBean prc = new ParceiroBean();
                EnderecoBean end = new EnderecoBean();
                
                ParceiroDAO dao = new ParceiroDAO();
                EnderecoDAO daozim = new EnderecoDAO();
                
                end = daozim.listarEnderecos(idendereco);
                prc = dao.listarParceiro(idparceiro);
                
                request.setAttribute("parceiro", prc);
                request.setAttribute("endereco", end);
                request.getRequestDispatcher("excluir_parceiro.jsp").forward(request, response);
                
            }
            if (action.equals("excluirParceiro")) {
                int idparceiro = Integer.parseInt(request.getParameter("idparceiro"));
                int idendereco = Integer.parseInt(request.getParameter("idendereco"));
                
                ParceiroDAO dao = new ParceiroDAO();
                
                dao.excluirParceiro(idparceiro,idendereco);
                
                request.setAttribute("parceiro", dao.listarParceiros());
                request.getRequestDispatcher("visualizarParceiro.jsp").forward(request, response);                
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarParceiro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarParceiro at</h1>");
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
