package br.com.senaces.dao;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EnderecoDAO {

    public int cadastrarEndereco(EnderecoBean endereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO endereco(logradouro,bairro,cidade,estado,cep) VALUES(?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, endereco.getEndereco());
                stmt.setString(2, endereco.getBairro());
                stmt.setString(3, endereco.getCidade());
                stmt.setString(4, endereco.getEstado());
                stmt.setString(5, endereco.getCep());
                if (stmt.executeUpdate() > 0) {
                    ResultSet rs = stmt.getGeneratedKeys();
                    if (rs.next()) {
                        resultado = rs.getInt(1);
                    }
                }
                System.out.println("Endereço salvo com sucesso!");
            } catch (SQLIntegrityConstraintViolationException e) {
                System.out.println("Error: " + e);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return resultado;
    }

    public List listarEndereco() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<EnderecoBean> enderecos = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM endereco";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {

                    EnderecoBean endereco = new EnderecoBean();
                    endereco.setIdendereco(rs.getInt("idendereco"));
                    endereco.setEndereco(rs.getString("logradouro"));
                    endereco.setBairro(rs.getString("bairro"));
                    endereco.setCidade(rs.getString("cidade"));
                    endereco.setEstado(rs.getString("estado"));
                    endereco.setCep(rs.getString("cep"));
                    enderecos.add(endereco);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return enderecos;

    }

    public EnderecoBean listarEnderecos(int rs) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet result;
        EnderecoBean end = new EnderecoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM endereco WHERE idendereco=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, rs);
                result = stmt.executeQuery();
                if (result.next()) {
                    end.setIdendereco(result.getInt("idendereco"));
                    end.setEndereco(result.getString("logradouro"));
                    end.setBairro(result.getString("bairro"));
                    end.setCidade(result.getString("cidade"));
                    end.setEstado(result.getString("estado"));
                    end.setCep(result.getString("cep"));

                }

            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return end;

    }

    public void editarEndereco(EnderecoBean endereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE endereco SET logradouro=?,bairro=?,cidade=?,estado=?,cep=? WHERE idendereco=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, endereco.getEndereco());
                stmt.setString(2, endereco.getBairro());
                stmt.setString(3, endereco.getCidade());
                stmt.setString(4, endereco.getEstado());
                stmt.setString(5, endereco.getCep());
                stmt.setInt(6, endereco.getIdendereco());
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
    }

    public int localizarEndereco(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT endereco FROM usuario WHERE idusuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    resultado = rs.getInt("endereco");

                }

            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return resultado;
    }
}
