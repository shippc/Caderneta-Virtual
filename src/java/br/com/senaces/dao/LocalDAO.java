package br.com.senaces.dao;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.LocalBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LocalDAO {

    public void cadastrarLocal(LocalBean local) {

        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO local(nome,telefone,celular,endereco) VALUES(?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, local.getNome());
                stmt.setString(2, local.getTelefone());
                stmt.setString(3, local.getCelular());
                stmt.setInt(4, local.getIdendereco());
                stmt.execute();
                System.out.println("Local cadastrado com sucesso!");
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public List listarLocal() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<LocalBean> l = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM local";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    LocalBean local = new LocalBean();
                    local.setNome(rs.getString("nome"));
                    local.setIdlocal(rs.getInt("idlocal"));
                    l.add(local);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return l;
    }

    public LocalBean listarLocal(int idlocal, int idendereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        LocalBean l = new LocalBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT l.idlocal as idlocal, l.nome as nome, l.telefone as telefone,\n"
                        + "l.celular as celular, l.endereco as idendereco, e.logradouro as logradouro, e.bairro as bairro, e.cidade as cidade,\n"
                        + "e.estado as estado, e.cep as cep FROM local as l, endereco as e WHERE l.endereco = e.idendereco AND \n"
                        + "l.idlocal = ? AND e.idendereco = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idlocal);
                stmt.setInt(2, idendereco);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    l.setIdlocal(rs.getInt("idlocal"));
                    l.setNome(rs.getString("nome"));
                    l.setTelefone(rs.getString("telefone"));
                    l.setCelular(rs.getString("celular"));
                    l.setIdendereco(rs.getInt("idendereco"));
                    l.setEndereco(rs.getString("logradouro"));
                    l.setBairro(rs.getString("bairro"));
                    l.setCidade(rs.getString("cidade"));
                    l.setEstado(rs.getString("estado"));
                    l.setCep(rs.getString("cep"));

                }
            } catch (Exception e) {
                System.out.println("Erro:" + e);
            } finally {
                conexao.close();
            }

        }
        return l;

    }

    public List listarLocais() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<LocalBean> localzim = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT l.idlocal as idlocal, l.nome as nome, l.telefone as telefone, l.celular as celular, e.logradouro as logradouro,"
                        + "e.bairro as bairro, e.cidade as cidade, e.idendereco as idendereco,"
                        + "e.estado as estado, e.cep as cep FROM local as l, endereco as e WHERE l.endereco = e.idendereco";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    LocalBean l = new LocalBean();
                    l.setIdlocal(rs.getInt("idlocal"));
                    l.setIdendereco(rs.getInt("idendereco"));
                    l.setNome(rs.getString("nome"));
                    l.setTelefone(rs.getString("telefone"));
                    l.setCelular(rs.getString("celular"));
                    l.setEndereco(rs.getString("logradouro"));
                    l.setBairro(rs.getString("bairro"));
                    l.setCidade(rs.getString("cidade"));
                    l.setEstado(rs.getString("estado"));
                    l.setCep(rs.getString("cep"));
                    localzim.add(l);
                }
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }

        }
        return localzim;
    }

    public void atualizarLocal(LocalBean local, EnderecoBean endereco, int idlocal, int idendereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE local as l, endereco as e SET l.nome = ?, l.telefone = ?,"
                        + "l.celular = ?, e.logradouro = ?, e.bairro = ?, e.cidade =?,"
                        + "e.estado = ?, e.cep = ? WHERE l.endereco = e.idendereco AND"
                        + " l.idlocal = ? AND e.idendereco = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, local.getNome());
                stmt.setString(2, local.getTelefone());
                stmt.setString(3, local.getCelular());
                stmt.setString(4, endereco.getEndereco());
                stmt.setString(5, endereco.getBairro());
                stmt.setString(6, endereco.getCidade());
                stmt.setString(7, endereco.getEstado());
                stmt.setString(8, endereco.getCep());
                stmt.setInt(9, idlocal);
                stmt.setInt(10, idendereco);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
    }

    public void excluirLocal(int idlocal, int idendereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql2 = "DELETE FROM endereco WHERE idendereco = ?";
                String sql1 = "DELETE FROM local WHERE idlocal = ?";

                stmt = conexao.connection.prepareStatement(sql1);
                stmt.setInt(1, idlocal);
                stmt.executeUpdate();

                stmt = conexao.connection.prepareStatement(sql2);
                stmt.setInt(1, idendereco);
                stmt.executeUpdate();

            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public LocalBean localizarLocal(int idlocal) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        LocalBean localzin = new LocalBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM local WHERE idlocal = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idlocal);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    localzin.setIdlocal(rs.getInt("idlocal"));
                    localzin.setNome(rs.getString("nome"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return localzin;
    }
}
