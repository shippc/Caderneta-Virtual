package br.com.senaces.dao;

import br.com.senaces.bean.HistoricoBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HistoricoDAO {

    public void cadastrarHistorico(HistoricoBean historico) {

        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;

        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO historico(peso,altura,idade,unidade,perimetro,lancamento,usuario) VALUES(?,?,?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setFloat(1, Float.parseFloat(historico.getPeso()));
                stmt.setFloat(2, Float.parseFloat(historico.getAltura()));
                stmt.setInt(3, Integer.parseInt(historico.getIdade()));
                stmt.setString(4, historico.getUnidade());
                stmt.setFloat(5, Float.parseFloat(historico.getPerimetro()));
                stmt.setString(6, historico.getLancamento());
                stmt.setInt(7, historico.getIdusuario());
                stmt.execute();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public HistoricoBean listarHistoricoUsuario(int idusuario) {
        ConnectionFactory cnx = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        HistoricoBean his = new HistoricoBean();
        if (cnx.getConnection()) {
            try {
                String sql = "SELECT distinct h.peso, h.altura, h.idade, h.unidade, h.perimetro, \n"
                        + "h.lancamento, h.idhistorico, h.usuario, u.nome as nome \n"
                        + "FROM historico as h, usuario as u WHERE h.usuario=u.idusuario AND h.usuario=? group by u.nome";
                stmt = cnx.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    his.setPeso(rs.getString("peso"));
                    his.setAltura(rs.getString("altura"));
                    his.setIdade(rs.getString("idade"));
                    his.setUnidade(rs.getString("unidade"));
                    his.setPerimetro(rs.getString("perimetro"));
                    his.setLancamento(rs.getString("lancamento"));
                    his.setIdhistorico(rs.getInt("idhistorico"));
                    his.setIdusuario(rs.getInt("usuario"));
                    his.setNome(rs.getString("nome"));
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                cnx.close();
            }

        }
        return his;
    }

    public List listarHistorico() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<HistoricoBean> tabs = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT peso, altura, idade, unidade, perimetro, lancamento, usuario, idhistorico,   ROUND( peso / (altura * altura)) as IMC FROM historico";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    HistoricoBean his = new HistoricoBean();
                    his.setIdhistorico(rs.getInt("idhistorico"));
                    his.setPeso(rs.getString("peso"));
                    his.setAltura(rs.getString("altura"));
                    his.setIdade(rs.getString("idade"));
                    his.setUnidade(rs.getString("unidade"));
                    his.setPerimetro(rs.getString("perimetro"));
                    his.setLancamento(rs.getString("lancamento"));
                    his.setIdusuario(rs.getInt("usuario"));
                    his.setIMC(rs.getDouble("IMC"));
                    tabs.add(his);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return tabs;
    }

    public HistoricoBean localizarHistorico(int idhistorico) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        HistoricoBean h = new HistoricoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT DISTINCT u.nome as nome, u.idusuario, h.idhistorico, h.peso, h.altura,"
                        + " h.idade, h.unidade, h.perimetro, h.lancamento,\n"
                        + "h.usuario FROM usuario as u, historico as h WHERE h.usuario = u.idusuario AND h.idhistorico = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idhistorico);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    h.setNome(rs.getString("nome"));
                    h.setPeso(rs.getString("peso"));
                    h.setAltura(rs.getString("altura"));
                    h.setIdade(rs.getString("idade"));
                    h.setUnidade(rs.getString("unidade"));
                    h.setPerimetro(rs.getString("perimetro"));
                    h.setLancamento(rs.getString("lancamento"));
                    h.setIdusuario(rs.getInt("usuario"));
                    h.setIdhistorico(rs.getInt("idhistorico"));
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return h;
    }

    public void atualizarHistorico(HistoricoBean h) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE historico SET peso=?,altura=?,idade=?,unidade=?,perimetro=?,lancamento=? WHERE idhistorico = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setFloat(1, Float.parseFloat(h.getPeso()));
                stmt.setFloat(2, Float.parseFloat(h.getAltura()));
                stmt.setInt(3, Integer.parseInt(h.getIdade()));
                stmt.setString(4, h.getUnidade());
                stmt.setFloat(5, Float.parseFloat(h.getPerimetro()));
                stmt.setDate(6, Date.valueOf(h.getLancamento()));
                stmt.setInt(7, h.getIdhistorico());
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public void excluirHistorico(int idhistorico) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "DELETE FROM historico WHERE idhistorico = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idhistorico);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public List listarHistoricos() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<HistoricoBean> h = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT DISTINCT u.nome as nome, u.idusuario as idusuario FROM usuario as u, historico as h WHERE h.usuario = u.idusuario";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    HistoricoBean his = new HistoricoBean();
                    his.setNome(rs.getString("nome"));
                    his.setIdusuario(rs.getInt("idusuario"));
                    h.add(his);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return h;
    }

    public void excluirTodosHistoricos(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "DELETE FROM historico WHERE usuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public List listarHistoricoUnico(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<HistoricoBean> his = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT peso, altura, idade, unidade, perimetro, lancamento, usuario, idhistorico,   ROUND( peso / (altura * altura)) as IMC FROM historico WHERE usuario = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    HistoricoBean h = new HistoricoBean();
                    h.setPeso(rs.getString("peso"));
                    h.setAltura(rs.getString("altura"));
                    h.setIdade(rs.getString("idade"));
                    h.setUnidade(rs.getString("unidade"));
                    h.setPerimetro(rs.getString("perimetro"));
                    h.setLancamento(rs.getString("lancamento"));
                    h.setIdusuario(rs.getInt("usuario"));
                    h.setIdhistorico(rs.getInt("idhistorico"));
                    h.setIMC(rs.getDouble("IMC"));
                    his.add(h);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return his;
    }

    public HistoricoBean dadosUsuario(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        HistoricoBean his = new HistoricoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT u.nome as nome FROM usuario as u, historico as h WHERE"
                        + " h.usuario = u.idusuario AND u.idusuario = ? GROUP BY u.nome";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    his.setNome(rs.getString("nome"));
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return his;
    }
}
