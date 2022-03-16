/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.LocalBean;
import br.com.senaces.bean.RegistroBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.bean.VacinaBean;
import br.com.senaces.dao.LocalDAO;
import br.com.senaces.dao.RegistroDAO;
import br.com.senaces.dao.UsuarioDAO;
import br.com.senaces.dao.VacinaDAO;
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
 * @author sala302b
 */
public class ValidarRegistro extends HttpServlet {

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
            if (action.equals("RegistroVacinas")) {
                VacinaDAO vacina = new VacinaDAO();
                LocalDAO local = new LocalDAO();
                UsuarioDAO usuario = new UsuarioDAO();

                request.setAttribute("vacinas", vacina.listarVacina());
                request.setAttribute("locais", local.listarLocal());
                request.setAttribute("usuarios", usuario.listarUsuario());
                request.setAttribute("atendente", usuario.listarAtendentes());
                request.getRequestDispatcher("formregistrovacina.jsp").forward(request, response);

            }
            if (action.equals("cadastrarRegistroVacinas")) {
                RegistroBean registro = new RegistroBean();

                SimpleDateFormat datao = new SimpleDateFormat("yyyy/MM/dd");
                String data = datao.format(new Date());
                            
                
                registro.setIdvacina(Integer.parseInt(request.getParameter("optionVacina")));
                registro.setReforco(request.getParameter("optionReforco"));
                registro.setIdlocal(Integer.parseInt(request.getParameter("optionLocal")));
                registro.setIdusuario(Integer.parseInt(request.getParameter("optionUsuario")));
                registro.setAtendente(request.getParameter("optionAtendente"));
                registro.setDose(request.getParameter("txtDosesRegistro"));                
                registro.setLaboratorio(request.getParameter("txtLabs"));
                registro.setLote(request.getParameter("txtLote"));
                registro.setData(data);

                RegistroDAO daozin = new RegistroDAO();
                daozin.cadastrarRegistro(registro);

                VacinaDAO vacina = new VacinaDAO();
                LocalDAO local = new LocalDAO();
                UsuarioDAO usuario = new UsuarioDAO();

                request.setAttribute("vacinas", vacina.listarVacina());
                request.setAttribute("locais", local.listarLocal());
                request.setAttribute("usuarios", usuario.listarUsuario());
                request.setAttribute("atendente", usuario.listarAtendentes());
                
                request.getRequestDispatcher("formregistrovacina.jsp").forward(request, response);

            }
            if (action.equals("listarVacinas")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));

                RegistroDAO res = new RegistroDAO();

                request.setAttribute("tabela", res.gerarLista(id));
                request.setAttribute("campanha", res.gerarCampanha(id));
                request.getRequestDispatcher("registro.jsp").forward(request, response);
            }
            if (action.equals("listaRegistros")) {
                RegistroDAO dao = new RegistroDAO();

                request.setAttribute("registro", dao.listaRegistros());
                request.getRequestDispatcher("visualizarRegistro.jsp").forward(request, response);

            }
            if (action.equals("editarRegistro")) {
                int idregistro_vacinas = Integer.parseInt(request.getParameter("idregistro_vacinas"));
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));
                int idlocal = Integer.parseInt(request.getParameter("idlocal"));
                int idatendente = Integer.parseInt(request.getParameter("idatendente"));
                int idvacina = Integer.parseInt(request.getParameter("idvacina"));

                UsuarioDAO daozim = new UsuarioDAO();
                UsuarioBean user = new UsuarioBean();
                UsuarioBean atend = new UsuarioBean();

                VacinaDAO vacina = new VacinaDAO();
                VacinaBean vac = new VacinaBean();

                LocalDAO daozin = new LocalDAO();
                LocalBean loc = new LocalBean();

                RegistroDAO daozasso = new RegistroDAO();
                RegistroBean res = new RegistroBean();

                user = daozim.localizar(idusuario);
                atend = daozim.localizarAtendente(idatendente);

                vac = vacina.localizarVacina(idvacina);

                loc = daozin.localizarLocal(idlocal);

                res = daozasso.localizarRegistro(idregistro_vacinas);

                request.setAttribute("usuario", user);
                request.setAttribute("admin", atend);
                request.setAttribute("atendente", daozim.listarAtendentes());
                request.setAttribute("vacinas", vacina.listarVacina());
                request.setAttribute("vacina", vac);
                request.setAttribute("local", loc);
                request.setAttribute("locais", daozin.listarLocal());
                request.setAttribute("registro", res);

                request.getRequestDispatcher("editar_registro.jsp").forward(request, response);

            }
            if (action.equals("atualizarRegistro")) {
                int idregistro_vacinas = Integer.parseInt(request.getParameter("idregistro_vacinas"));
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                RegistroBean registro = new RegistroBean();

                registro.setIdatendente(Integer.parseInt(request.getParameter("optionAtendente")));
                registro.setIdvacina(Integer.parseInt(request.getParameter("optionVacina")));
                registro.setDose(request.getParameter("txtDosesRegistro"));
                registro.setLote(request.getParameter("txtLote"));
                registro.setData(request.getParameter("txtDataRegistro"));
                registro.setLaboratorio(request.getParameter("txtLabs"));
                registro.setIdlocal(Integer.parseInt(request.getParameter("optionLocal")));
                registro.setIdusuario(idusuario);
                registro.setIdregistro_vacinas(idregistro_vacinas);
                registro.setReforco(request.getParameter("optionReforco"));

                RegistroDAO daozin = new RegistroDAO();

                daozin.atualizarRegistro(registro);

                request.setAttribute("registro", daozin.listaRegistros());
                request.getRequestDispatcher("visualizarRegistro.jsp").forward(request, response);
            }
            if (action.equals("toexcluirRegistro")) {
                int idregistro_vacinas = Integer.parseInt(request.getParameter("idregistro_vacinas"));
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                UsuarioDAO daozim = new UsuarioDAO();
                UsuarioBean user = new UsuarioBean();

                RegistroDAO daozasso = new RegistroDAO();
                RegistroBean res = new RegistroBean();

                user = daozim.localizar(idusuario);

                res = daozasso.localizarRegistro(idregistro_vacinas);

                request.setAttribute("usuario", user);
                request.setAttribute("registro", res);
                request.getRequestDispatcher("excluir_registro.jsp").forward(request, response);
            }
            if (action.equals("excluirRegistro")) {
                int idregistro_vacinas = Integer.parseInt(request.getParameter("idregistro_vacinas"));

                RegistroDAO daozin = new RegistroDAO();

                daozin.excluirRegistro(idregistro_vacinas);

                request.setAttribute("registro", daozin.listaRegistros());
                request.getRequestDispatcher("visualizarRegistro.jsp").forward(request, response);

            }
            if (action.equals("listarRegistro")) {
                RegistroDAO dao = new RegistroDAO();

                request.setAttribute("registro", dao.listaRegistro());
                request.getRequestDispatcher("visualizarRegistroUnico.jsp").forward(request, response);
            }
            if (action.equals("toexcluirTodosRegistros")) {
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                RegistroBean registrao = new RegistroBean();
                RegistroDAO daozim = new RegistroDAO();

                registrao = daozim.listarRegistroUsuario(idusuario);

                request.setAttribute("registro", registrao);
                request.getRequestDispatcher("excluir_todos_registros.jsp").forward(request, response);
            }
            if (action.equals("excluirTodosRegistros")) {
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                RegistroDAO dao = new RegistroDAO();

                dao.excluirTodosRegistros(idusuario);

                request.setAttribute("registro", dao.listaRegistro());
                request.getRequestDispatcher("visualizarRegistroUnico.jsp").forward(request, response);
            }
            if (action.equals("localizarRegistro")) {
                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                RegistroDAO dao = new RegistroDAO();

                request.setAttribute("objeto", dao.listarRegistroUsuario(idusuario));
                request.setAttribute("registro", dao.localizarRegistroUsuario(idusuario));
                request.getRequestDispatcher("visualizarRegistrosUsuario.jsp").forward(request, response);

            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarRegistro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarRegistro at " + request.getContextPath() + "</h1>");
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
