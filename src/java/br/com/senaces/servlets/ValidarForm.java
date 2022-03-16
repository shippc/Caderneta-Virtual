package br.com.senaces.servlets;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.dao.AcessoDAO;
import br.com.senaces.dao.EnderecoDAO;
import br.com.senaces.dao.UsuarioDAO;
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
public class ValidarForm extends HttpServlet {

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

            if (action.equals("cadastrarAcesso")) {
                AcessoBean acesso = new AcessoBean();

                acesso.setEmail(request.getParameter("txtCadastroEmail"));
                acesso.setSenha(request.getParameter("password"));
                acesso.setTipo("Usuario");

                AcessoDAO dao = new AcessoDAO();
                int braba = dao.cadastrarAcesso(acesso);
                acesso.setIdacesso(braba);
                request.setAttribute("acesso", acesso);
                request.getRequestDispatcher("formulario.jsp").forward(request, response);

            }

            if (action.equals("cadastrarDados")) {
                UsuarioBean user = new UsuarioBean();
                EnderecoBean endereco = new EnderecoBean();
                int idAcesso = Integer.parseInt(request.getParameter("idacesso"));

                user.setNome(request.getParameter("txtNome"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setCelular(request.getParameter("txtCelular"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setPai(request.getParameter("txtPai"));
                user.setMae(request.getParameter("txtMae"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                user.setEtnia(request.getParameter("optionEtnia"));

                endereco.setBairro(request.getParameter("txtBairro"));
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setEndereco(request.getParameter("txtEndereco"));

                EnderecoDAO daozao = new EnderecoDAO();
                UsuarioDAO dao = new UsuarioDAO();
                AcessoDAO daozinho = new AcessoDAO();

                int res = daozao.cadastrarEndereco(endereco);
                user.setIdendereco(res);
                int brabona = dao.cadastrarUsuario(user);

                daozinho.salvarIdAcesso(idAcesso, brabona);

                request.getRequestDispatcher("login.jsp").forward(request, response);

            }
            if (action.equals("cadastroTotal")) {
                UsuarioBean user = new UsuarioBean();
                EnderecoBean end = new EnderecoBean();
                AcessoBean acs = new AcessoBean();
                
                acs.setEmail(request.getParameter("txtEmail"));
                acs.setSenha(request.getParameter("txtSenha"));
                acs.setTipo(request.getParameter("optionUser"));
                
                user.setNome(request.getParameter("txtNome"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setCelular(request.getParameter("txtCelular"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setPai(request.getParameter("txtPai"));
                user.setMae(request.getParameter("txtMae"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                user.setEtnia(request.getParameter("optionEtnia"));
                
                end.setBairro(request.getParameter("txtBairro"));
                end.setCep(request.getParameter("txtCEP"));
                end.setCidade(request.getParameter("txtCidade"));
                end.setEstado(request.getParameter("optionEstado"));
                end.setEndereco(request.getParameter("txtEndereco"));
                
                AcessoDAO dao = new AcessoDAO();
                UsuarioDAO daozim = new UsuarioDAO();
                EnderecoDAO daozasso = new EnderecoDAO();
                
                int idendereco = daozasso.cadastrarEndereco(end);
                user.setIdendereco(idendereco);
                
                int idusuario = daozim.cadastrarUsuario(user);
                acs.setIdusuario(idusuario);
                
                dao.cadastrarLogin(acs);
                
                request.getRequestDispatcher("sidebar.jsp").forward(request, response);
                
            }
            if (action.equals("cadastrarUsuarioTotal")) {
                UsuarioBean user = new UsuarioBean();
                EnderecoBean end = new EnderecoBean();
                AcessoBean acs = new AcessoBean();
                
                acs.setEmail(request.getParameter("txtEmail"));
                acs.setSenha(request.getParameter("txtSenha"));
                acs.setTipo("Usuario");
                
                user.setNome(request.getParameter("txtNome"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setCelular(request.getParameter("txtCelular"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setPai(request.getParameter("txtPai"));
                user.setMae(request.getParameter("txtMae"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                user.setEtnia(request.getParameter("optionEtnia"));
                
                end.setBairro(request.getParameter("txtBairro"));
                end.setCep(request.getParameter("txtCEP"));
                end.setCidade(request.getParameter("txtCidade"));
                end.setEstado(request.getParameter("optionEstado"));
                end.setEndereco(request.getParameter("txtEndereco"));
                
                AcessoDAO dao = new AcessoDAO();
                UsuarioDAO daozim = new UsuarioDAO();
                EnderecoDAO daozasso = new EnderecoDAO();
                
                int idendereco = daozasso.cadastrarEndereco(end);
                user.setIdendereco(idendereco);
                
                int idusuario = daozim.cadastrarUsuario(user);
                acs.setIdusuario(idusuario);
                
                dao.cadastrarLogin(acs);
                
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
            }
            if (action.equals("listarUsuario")) {
                UsuarioDAO daozinho = new UsuarioDAO();
                EnderecoDAO daozao = new EnderecoDAO();
                //request.setAttribute("enderecos", daozao.listarEndereco());
                request.setAttribute("usuarios", daozinho.listarUsuario());
                request.getRequestDispatcher("visualizarUsuario.jsp").forward(request, response);

            }
            if (action.equals("listarDados")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioDAO daozinho = new UsuarioDAO();
                UsuarioBean usu = new UsuarioBean();
                AcessoBean aces = new AcessoBean();
                AcessoDAO daozao = new AcessoDAO();
                aces = daozao.localizarAcesso(id);
                usu = daozinho.localizar(id);
                request.setAttribute("acesso", aces);
                request.setAttribute("usuario", usu);
                request.getRequestDispatcher("sidebarDados.jsp").forward(request, response);

            }
            if (action.equals("listarEndereco")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioDAO dao = new UsuarioDAO();
                UsuarioBean user = new UsuarioBean();
                EnderecoBean end = new EnderecoBean();
                EnderecoDAO daozao = new EnderecoDAO();

                int rs = daozao.localizarEndereco(id);

                end = daozao.listarEnderecos(rs);
                user = dao.localizar(id);
                request.setAttribute("usuario", user);
                request.setAttribute("endereco", end);
                request.getRequestDispatcher("sidebarEndereco.jsp").forward(request, response);

            }
            if (action.equals("editar")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioBean user = new UsuarioBean();
                UsuarioDAO daozinho = new UsuarioDAO();
                
                AcessoBean acesso = new AcessoBean();
                AcessoDAO dao = new AcessoDAO();
                
                EnderecoBean end = new EnderecoBean();
                EnderecoDAO daozasso = new EnderecoDAO();
                
                int rs = daozasso.localizarEndereco(id);
                
                end = daozasso.listarEnderecos(rs);
                acesso = dao.localizarAcesso(id);
                user = daozinho.localizar(id);
                
                request.setAttribute("endereco", end);
                request.setAttribute("acesso", acesso);
                request.setAttribute("usuario", user);
                request.getRequestDispatcher("editar_usuario.jsp").forward(request, response);

            }
            if (action.equals("atualizar")) {
                UsuarioBean user = new UsuarioBean();
                AcessoBean acs = new AcessoBean();
                EnderecoBean endereco = new EnderecoBean();
                
                user.setIdusuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
                user.setNome(request.getParameter("txtNome"));
                user.setMae(request.getParameter("txtMae"));
                user.setPai(request.getParameter("txtPai"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setCelular(request.getParameter("txtCelular"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setEtnia(request.getParameter("optionEtnia"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                
                acs.setEmail(request.getParameter("txtEmail"));
                acs.setSenha(request.getParameter("txtSenha"));
                acs.setIdusuario(Integer.parseInt(request.getParameter("idusuario")));
                
                endereco.setIdendereco(Integer.parseInt(request.getParameter("txtIdEndereco")));
                endereco.setBairro(request.getParameter("txtBairro"));
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setEndereco(request.getParameter("txtEndereco"));
                
                EnderecoDAO daozasso = new EnderecoDAO();
                daozasso.editarEndereco(endereco);
                
                AcessoDAO daozim = new AcessoDAO();
                daozim.atualizarAcesso(acs);
                
                UsuarioDAO dao = new UsuarioDAO();
                dao.editar(user);
                
               
                
                request.setAttribute("usuarios", dao.listarUsuario());
                request.getRequestDispatcher("visualizarUsuario.jsp").forward(request, response);

            }
            if (action.equals("atualizarDados")) {
                UsuarioBean user = new UsuarioBean();
                user.setIdusuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
                user.setNome(request.getParameter("txtNome"));
                user.setMae(request.getParameter("txtMae"));
                user.setPai(request.getParameter("txtPai"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setCelular(request.getParameter("txtCelular"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setEtnia(request.getParameter("optionEtnia"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                UsuarioDAO dao = new UsuarioDAO();
                dao.editar(user);

                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioDAO daozinho = new UsuarioDAO();
                UsuarioBean usu = new UsuarioBean();
                AcessoBean aces = new AcessoBean();
                AcessoDAO daozao = new AcessoDAO();
                aces = daozao.localizarAcesso(id);
                usu = daozinho.localizar(id);
                request.setAttribute("acesso", aces);
                request.setAttribute("usuario", usu);
                request.getRequestDispatcher("sidebarDados.jsp").forward(request, response);

            }
            if (action.equals("atualizarEndereco")) {
                EnderecoBean endereco = new EnderecoBean();
                EnderecoDAO daozinho = new EnderecoDAO();

                endereco.setIdendereco(Integer.parseInt(request.getParameter("txtIdEndereco")));
                endereco.setBairro(request.getParameter("txtBairro"));
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setEstado(request.getParameter("optionEstado"));
                endereco.setEndereco(request.getParameter("txtEndereco"));
                daozinho.editarEndereco(endereco);

                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioDAO dao = new UsuarioDAO();
                UsuarioBean user = new UsuarioBean();
                EnderecoBean end = new EnderecoBean();
                EnderecoDAO daozao = new EnderecoDAO();

                int rs = daozao.localizarEndereco(id);

                end = daozao.listarEnderecos(rs);
                user = dao.localizar(id);

                request.setAttribute("usuario", user);
                request.setAttribute("endereco", end);
                request.getRequestDispatcher("sidebarEndereco.jsp").forward(request, response);

            }
            if (action.equals("excluir")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                int end = Integer.parseInt(request.getParameter("idendereco"));

                UsuarioDAO dao = new UsuarioDAO();
                dao.excluir(id, end);
                request.setAttribute("usuarios", dao.listarUsuario());
                request.getRequestDispatcher("visualizarUsuario.jsp").forward(request, response);

            }
            if (action.equals("excluirUsuario")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                UsuarioBean user = new UsuarioBean();
                UsuarioDAO daozinho = new UsuarioDAO();
                
                AcessoBean acesso = new AcessoBean();
                AcessoDAO dao = new AcessoDAO();
                
                EnderecoBean end = new EnderecoBean();
                EnderecoDAO daozasso = new EnderecoDAO();
                
                int rs = daozasso.localizarEndereco(id);
                
                end = daozasso.listarEnderecos(rs);
                acesso = dao.localizarAcesso(id);
                user = daozinho.localizar(id);
                
                request.setAttribute("endereco", end);
                request.setAttribute("acesso", acesso);
                request.setAttribute("usuario", user);
                request.getRequestDispatcher("excluir_usuario.jsp").forward(request, response);

            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarFormulario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar Formulario at</h1>");

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
