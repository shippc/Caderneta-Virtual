package br.com.senaces.dao;

import br.com.senaces.bean.VacinaBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VacinaDAO {

    public void cadastrarVacina(VacinaBean vacina) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO vacina(nome,doses,intervalo,primeira_dose) VALUES(?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, vacina.getNome());
                stmt.setInt(2, Integer.parseInt(vacina.getDoses()));
                stmt.setInt(3, Integer.parseInt(vacina.getIntervalo()));
                stmt.setInt(4, Integer.parseInt(vacina.getPrimeira_dose()));
                stmt.execute();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public List listarVacina() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<VacinaBean> vacinas = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM vacina";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    VacinaBean vacina = new VacinaBean();
                    vacina.setIdvacina(rs.getInt("idvacina"));
                    vacina.setNome(rs.getString("nome"));
                    vacinas.add(vacina);

                }

            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return vacinas;
    }

    public List listarVacinas() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<VacinaBean> vac = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM vacina";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    VacinaBean v = new VacinaBean();
                    v.setIdvacina(rs.getInt("idvacina"));
                    v.setNome(rs.getString("nome"));
                    v.setDoses(rs.getString("doses"));
                    v.setIntervalo(rs.getString("intervalo"));
                    v.setPrimeira_dose(rs.getString("primeira_dose"));
                    vac.add(v);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return vac;
    }

    public VacinaBean listarVacina(int idvacina) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        VacinaBean vac = new VacinaBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM vacina WHERE idvacina = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idvacina);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    vac.setIdvacina(rs.getInt("idvacina"));
                    vac.setNome(rs.getString("nome"));
                    vac.setDoses(rs.getString("doses"));
                    vac.setIntervalo(rs.getString("intervalo"));
                    vac.setPrimeira_dose(rs.getString("primeira_dose"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return vac;
    }

    public void atualizarVacina(int idvacina, VacinaBean vac) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE vacina SET nome = ?, doses = ?, intervalo = ?, primeira_dose = ? WHERE idvacina = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, vac.getNome());
                stmt.setInt(2, Integer.parseInt(vac.getDoses()));
                stmt.setInt(3, Integer.parseInt(vac.getIntervalo()));
                stmt.setInt(4, Integer.parseInt(vac.getPrimeira_dose()));
                stmt.setInt(5, idvacina);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public void excluirVacina(int idvacina) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "DELETE FROM vacina WHERE idvacina = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idvacina);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public VacinaBean localizarVacina(int idvacina) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        VacinaBean vacina = new VacinaBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM vacina WHERE idvacina = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idvacina);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    vacina.setIdvacina(rs.getInt("idvacina"));
                    vacina.setNome(rs.getString("nome"));

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return vacina;
    }

}
