package br.com.senaces.dao;

import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    public int cadastrarUsuario(UsuarioBean usuarios) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO usuario(nome,cpf,pai,mae,rg,endereco,cartao_sus,nascimento,telefone,celular,registro_civil,etnia)"
                        + " VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, usuarios.getNome());
                stmt.setString(2, usuarios.getCpf());
                stmt.setString(3, usuarios.getPai());
                stmt.setString(4, usuarios.getMae());
                stmt.setString(5, usuarios.getRg());
                stmt.setInt(6, usuarios.getIdendereco());
                stmt.setString(7, usuarios.getCartao_sus());
                stmt.setDate(8, Date.valueOf(usuarios.getNascimento()));
                stmt.setString(9, usuarios.getTelefone());
                stmt.setString(10, usuarios.getCelular());
                stmt.setString(11, usuarios.getRegistro());
                stmt.setString(12, usuarios.getEtnia());
                if (stmt.executeUpdate() > 0) {
                    ResultSet rs = stmt.getGeneratedKeys();
                    if (rs.next()) {
                        resultado = rs.getInt(1);
                    }
                }
                System.out.println("Usuario salvo com sucesso!");
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return resultado;
    }

    public List listarUsuario() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<UsuarioBean> usuarios = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM usuario";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    UsuarioBean user = new UsuarioBean();
                    user.setIdusuario(rs.getInt("idusuario"));
                    user.setNome(rs.getString("nome"));
                    user.setNascimento(rs.getString("nascimento"));
                    user.setIdendereco(rs.getInt("endereco"));
                    usuarios.add(user);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return usuarios;

    }

    public UsuarioBean localizar(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        UsuarioBean usuario = new UsuarioBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM usuario WHERE idusuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    usuario.setIdusuario(rs.getInt("idusuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setPai(rs.getString("pai"));
                    usuario.setMae(rs.getString("mae"));
                    usuario.setRg(rs.getString("rg"));
                    usuario.setIdendereco(rs.getInt("endereco"));
                    usuario.setCartao_sus(rs.getString("cartao_sus"));
                    usuario.setNascimento(rs.getString("nascimento"));
                    usuario.setTelefone(rs.getString("telefone"));
                    usuario.setCelular(rs.getString("celular"));
                    usuario.setRegistro(rs.getString("registro_civil"));
                    usuario.setEtnia(rs.getString("etnia"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return usuario;
    }

    public void editar(UsuarioBean user) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE usuario set nome=?,cpf=?,pai=?,mae=?,rg=?,cartao_sus=?,nascimento=?,telefone=?,celular=?,registro_civil=?,etnia=? WHERE idusuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, user.getNome());
                stmt.setString(2, user.getCpf());
                stmt.setString(3, user.getPai());
                stmt.setString(4, user.getMae());
                stmt.setString(5, user.getRg());
                stmt.setString(6, user.getCartao_sus());
                stmt.setDate(7, Date.valueOf(user.getNascimento()));
                stmt.setString(8, user.getTelefone());
                stmt.setString(9, user.getCelular());
                stmt.setString(10, user.getRegistro());
                stmt.setString(11, user.getEtnia());
                stmt.setInt(12, user.getIdusuario());
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }

    }

    public void excluir(int id, int end) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql1 = "DELETE FROM historico WHERE usuario=?";
                String sql2 = "DELETE FROM acesso WHERE usuario=?";
                String sql3 = "DELETE FROM registro_vacinas WHERE usuario_id=?";
                String sql5 = "DELETE FROM endereco WHERE idendereco=?";
                String sql4 = "DELETE FROM usuario WHERE idusuario=?";

                stmt = conexao.connection.prepareStatement(sql1);
                stmt.setInt(1, id);
                stmt.executeUpdate();

                stmt = conexao.connection.prepareStatement(sql2);
                stmt.setInt(1, id);
                stmt.executeUpdate();

                stmt = conexao.connection.prepareStatement(sql3);
                stmt.setInt(1, id);
                stmt.executeUpdate();

                stmt = conexao.connection.prepareStatement(sql4);
                stmt.setInt(1, id);
                stmt.executeUpdate();

                stmt = conexao.connection.prepareStatement(sql5);
                stmt.setInt(1, end);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public UsuarioBean localizarAtendente(int idatendente) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        UsuarioBean atendente = new UsuarioBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM usuario WHERE idusuario = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idatendente);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    atendente.setNome(rs.getString("nome"));
                    atendente.setIdusuario(rs.getInt("idusuario"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return atendente;
    }

    public List listarAtendentes() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<UsuarioBean> atendentes = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT u.idusuario, u.nome FROM usuario as u, acesso as a"
                        + " WHERE u.idusuario = a.usuario AND a.tipo = \"Administrador\"";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    UsuarioBean a = new UsuarioBean();
                    a.setIdusuario(rs.getInt("idusuario"));
                    a.setNome(rs.getString("nome"));
                    atendentes.add(a);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return atendentes;
    }

}
