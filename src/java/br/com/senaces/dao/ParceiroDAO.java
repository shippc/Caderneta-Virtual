package br.com.senaces.dao;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.ParceiroBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ParceiroDAO {

    public void cadastrarParceiro(ParceiroBean parceiro) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;

        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO parceiro(nome,telefone,celular,contato,site,cnpj,endereco) VALUES(?,?,?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, parceiro.getNome());
                stmt.setString(2, parceiro.getTelefone());
                stmt.setString(3, parceiro.getCelular());
                stmt.setString(4, parceiro.getEmail());
                stmt.setString(5, parceiro.getSite());
                stmt.setString(6, parceiro.getCnpj());
                stmt.setInt(7, parceiro.getIdendereco());
                stmt.execute();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
    }

    public List listarParceiros() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<ParceiroBean> parc = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM parceiro";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    ParceiroBean p = new ParceiroBean();
                    p.setIdparceiro(rs.getInt("idparceiro"));
                    p.setNome(rs.getString("nome"));
                    p.setTelefone(rs.getString("telefone"));
                    p.setCelular(rs.getString("celular"));
                    p.setEmail(rs.getString("contato"));
                    p.setSite(rs.getString("site"));
                    p.setCnpj(rs.getString("cnpj"));
                    p.setIdendereco(rs.getInt("endereco"));
                    parc.add(p);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return parc;

    }

    public ParceiroBean listarParceiro(int idparceiro) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        ParceiroBean p = new ParceiroBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM parceiro WHERE idparceiro = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idparceiro);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    p.setIdparceiro(rs.getInt("idparceiro"));
                    p.setNome(rs.getString("nome"));
                    p.setTelefone(rs.getString("telefone"));
                    p.setCelular(rs.getString("celular"));
                    p.setEmail(rs.getString("contato"));
                    p.setSite(rs.getString("site"));
                    p.setCnpj(rs.getString("cnpj"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return p;
    }

    public void atualizarParceiro(int idparceiro, int idendereco, ParceiroBean parceiro, EnderecoBean endereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE parceiro as p, endereco as e SET p.nome = ?, p.telefone = ?, p.celular = ?,"
                        + "p.contato = ?, p.site = ?, p.cnpj = ?, e.logradouro = ?, e.bairro = ?,"
                        + "e.cidade = ?, e.estado = ?, e.cep = ? WHERE p.endereco = e.idendereco AND "
                        + "p.idparceiro = ? AND e.idendereco = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, parceiro.getNome());
                stmt.setString(2, parceiro.getTelefone());
                stmt.setString(3, parceiro.getCelular());
                stmt.setString(4, parceiro.getEmail());
                stmt.setString(5, parceiro.getSite());
                stmt.setString(6, parceiro.getCnpj());
                stmt.setString(7, endereco.getEndereco());
                stmt.setString(8, endereco.getBairro());
                stmt.setString(9, endereco.getCidade());
                stmt.setString(10, endereco.getEstado());
                stmt.setString(11, endereco.getCep());
                stmt.setInt(12, idparceiro);
                stmt.setInt(13, idendereco);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public void excluirParceiro(int idparceiro, int idendereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql1 = "DELETE FROM parceiro WHERE idparceiro = ?";
                String sql2 = "DELETE FROM endereco WHERE idendereco = ?";
                
                
                stmt = conexao.connection.prepareStatement(sql1);
                stmt.setInt(1, idparceiro);
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

}
