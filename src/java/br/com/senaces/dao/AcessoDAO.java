package br.com.senaces.dao;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AcessoDAO {

    public AcessoBean logarAcesso(AcessoBean acs) {
        ConnectionFactory conexao = new ConnectionFactory();
        ResultSet rs = null;
        PreparedStatement stmt = null;
        AcessoBean acessao = new AcessoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM acesso WHERE login=? AND senha=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, acs.getEmail());
                stmt.setString(2, acs.getSenha());
                rs = stmt.executeQuery();
                if (rs.next()) {
                    acessao.setIdacesso(rs.getInt("idacesso"));
                    acessao.setIdusuario(rs.getInt("usuario"));
                    acessao.setEmail(rs.getString("login"));
                    acessao.setTipo(rs.getString("tipo"));
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return acessao;
    }

    public int cadastrarAcesso(AcessoBean access) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO acesso(login,senha,tipo) VALUES(?,?,?)";
                stmt = conexao.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, access.getEmail());
                stmt.setString(2, access.getSenha());
                stmt.setString(3, access.getTipo());
                if (stmt.executeUpdate() > 0) {
                    ResultSet rs = stmt.getGeneratedKeys();
                    if (rs.next()) {
                        resultado = rs.getInt(1);
                        System.out.println("Resultado: " + resultado);
                    }
                }
                System.out.println("Acesso cadastrado com sucesso!");
                System.out.println("Email: " + access.getEmail());
                System.out.println("Senha: " + access.getSenha());
                System.out.println("Tipo: " + access.getTipo());
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return resultado;

    }

    public void salvarIdAcesso(int acesso, int usuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE acesso SET usuario=? WHERE idacesso=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, usuario);
                stmt.setInt(2, acesso);
                stmt.executeUpdate();
                System.out.println("ID do acesso atualizado com sucesso!");

            } catch (SQLException e) {
                System.out.println("Erro: " + e);
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
    }

    public AcessoBean localizarAcesso(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        AcessoBean acessao = new AcessoBean();
        if (conexao.getConnection()) {
            try {

                String sql = "SELECT * FROM acesso WHERE usuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    acessao.setIdacesso(rs.getInt("idacesso"));
                    acessao.setEmail(rs.getString("login"));
                    acessao.setSenha(rs.getString("senha"));
                    acessao.setTipo(rs.getString("tipo"));
                    acessao.setIdusuario(rs.getInt("usuario"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }

        return acessao;

    }

    public void atualizarAcesso(AcessoBean acs) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE acesso SET login=?,senha=? WHERE usuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, acs.getEmail());
                stmt.setString(2, acs.getSenha());
                stmt.setInt(3, acs.getIdusuario());
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public void cadastrarLogin(AcessoBean acs) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO acesso (login,senha,tipo,usuario) VALUES (?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, acs.getEmail());
                stmt.setString(2, acs.getSenha());
                stmt.setString(3, acs.getTipo());
                stmt.setInt(4, acs.getIdusuario());
                stmt.execute();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }
}
