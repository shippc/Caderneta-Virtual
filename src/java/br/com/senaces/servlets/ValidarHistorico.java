package br.com.senaces.servlets;

import br.com.senaces.bean.HistoricoBean;
import br.com.senaces.dao.HistoricoDAO;
import br.com.senaces.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MAX
 */
public class ValidarHistorico extends HttpServlet {

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
            if (action.equals("listarUsuario")) {
                UsuarioDAO usuario = new UsuarioDAO();
                
                //EnderecoDAO daozao = new EnderecoDAO();
                //request.setAttribute("enderecos", daozao.listarEndereco());
                                
                request.setAttribute("usuarios", usuario.listarUsuario());
                request.getRequestDispatcher("formhistorico.jsp").forward(request, response);

            }
            if (action.equals("cadastrarHistorico")) {
                HistoricoBean historico = new HistoricoBean();
                // int idAcesso = Integer.parseInt(request.getParameter("idacesso"));
                
                SimpleDateFormat datao = new SimpleDateFormat("yyyy/MM/dd");
                String data = datao.format(new Date());
                
                
                historico.setLancamento(data);
                historico.setPerimetro(request.getParameter("txtPerimetro"));
                historico.setIdade(request.getParameter("txtIdade"));
                System.out.println("SERVLETHISTORICO IDADE: "+request.getParameter("txtIdade"));
                historico.setAltura(request.getParameter("txtAltura"));
                historico.setPeso(request.getParameter("txtPeso"));
                historico.setUnidade(request.getParameter("optionUnidade"));
                historico.setIdusuario(Integer.parseInt(request.getParameter("optionUsuario")));

                HistoricoDAO dao = new HistoricoDAO();
                UsuarioDAO usuario = new UsuarioDAO();

                //historico.setIdusuario(idAcesso);
                dao.cadastrarHistorico(historico);
                request.setAttribute("usuarios", usuario.listarUsuario());
                request.getRequestDispatcher("formhistorico.jsp").forward(request, response);

            }
            if (action.equals("listarHistoricoUsuario")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                
                HistoricoDAO dao = new HistoricoDAO();
                UsuarioDAO daozao = new UsuarioDAO();
                
                request.setAttribute("usuarios", daozao.localizar(id));
                request.setAttribute("historico", dao.listarHistoricoUnico(id));
                request.getRequestDispatcher("sidebarHistorico.jsp").forward(request, response);

            }
            if (action.equals("listarHistorico")) {
                HistoricoDAO dao = new HistoricoDAO();
                
                request.setAttribute("historico", dao.listarHistorico());
                request.getRequestDispatcher("visualizarHistorico.jsp").forward(request, response);
                
            }
            if (action.equals("listarHistoricos")) {
                HistoricoDAO dao = new HistoricoDAO();
                
                request.setAttribute("historico", dao.listarHistoricos());
                request.getRequestDispatcher("visualizarHistoricoUnico.jsp").forward(request, response);
                
            }
            if (action.equals("visualizarHistorico")) {
                 int idusuario = Integer.parseInt(request.getParameter("idusuario"));
                 
                 HistoricoDAO dao = new HistoricoDAO();
                
                request.setAttribute("objeto", dao.dadosUsuario(idusuario));
                request.setAttribute("historico", dao.listarHistoricoUnico(idusuario));
                request.getRequestDispatcher("visualizarHistoricosUsuario.jsp").forward(request, response);
                
            }
            if (action.equals("editarHistorico")) {
                int idhistorico = Integer.parseInt(request.getParameter("idhistorico"));
                
                HistoricoDAO daozin = new HistoricoDAO();
                HistoricoBean his = new HistoricoBean();
                
                his = daozin.localizarHistorico(idhistorico);
                
                request.setAttribute("historico", his);
                request.getRequestDispatcher("editar_historico.jsp").forward(request, response);
                
            }
            if (action.equals("atualizarHistorico")) {
                int idhistorico = Integer.parseInt(request.getParameter("idhistorico"));
                
                HistoricoBean h = new HistoricoBean();
                
                h.setLancamento(request.getParameter("txtDataLanc"));
                h.setPerimetro(request.getParameter("txtPerimetro"));
                h.setIdade(request.getParameter("txtIdade"));
                h.setAltura(request.getParameter("txtAltura"));
                h.setPeso(request.getParameter("txtPeso"));
                h.setUnidade(request.getParameter("optionUnidade"));
                h.setIdhistorico(idhistorico);
                
                HistoricoDAO dao = new HistoricoDAO();
                
                dao.atualizarHistorico(h);
                
                request.setAttribute("historico", dao.listarHistorico());
                request.getRequestDispatcher("visualizarHistorico.jsp").forward(request, response);
            }
            if (action.equals("excluirHistorico")) {
                int idhistorico = Integer.parseInt(request.getParameter("idhistorico"));
                
                HistoricoDAO daoz = new HistoricoDAO();
                HistoricoBean hist = new HistoricoBean();
                
                hist = daoz.localizarHistorico(idhistorico);
                
                request.setAttribute("historico", hist);
                request.getRequestDispatcher("excluir_historico.jsp").forward(request, response);
                
            }
            if (action.equals("excluirHistoricao")) {
                int idhistorico = Integer.parseInt(request.getParameter("idhistorico"));
                
                HistoricoDAO daozim = new HistoricoDAO();
                
                daozim.excluirHistorico(idhistorico);
                
                request.setAttribute("historico", daozim.listarHistorico());
                request.getRequestDispatcher("visualizarHistorico.jsp").forward(request, response);
                
            }
            if (action.equals("excluirTodosHistoricos")) {
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));
                
                HistoricoDAO dao = new HistoricoDAO();
                HistoricoBean his = new HistoricoBean();
                
                
                
                request.setAttribute("historico", dao.listarHistoricoUsuario(idusuario));
                request.getRequestDispatcher("excluir_todos_historicos.jsp").forward(request, response);
                
            }
            if (action.equals("excluirTodosHistoricao")) {
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));
                
                HistoricoDAO dao = new HistoricoDAO();
                
                dao.excluirTodosHistoricos(idusuario);
                
                request.setAttribute("historico", dao.listarHistorico());
                request.getRequestDispatcher("visualizarHistorico.jsp").forward(request, response);
                
            }
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarHistorico</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarHistorico at </h1>");
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
