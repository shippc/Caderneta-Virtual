package br.com.senaces.dao;

import br.com.senaces.bean.RegistroBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RegistroDAO {

    public void cadastrarRegistro(RegistroBean registro) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO registro_vacinas(vacina,lote,laboratorio,dose,local,atendente,data,usuario_id,reforco) VALUES(?,?,?,?,?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, registro.getIdvacina());
                stmt.setString(2, registro.getLote());
                stmt.setString(3, registro.getLaboratorio());
                stmt.setInt(4, Integer.parseInt(registro.getDose()));
                stmt.setInt(5, registro.getIdlocal());
                stmt.setInt(6, Integer.parseInt(registro.getAtendente()));
                stmt.setString(7, registro.getData());
                stmt.setInt(8, registro.getIdusuario());
                stmt.setString(9, registro.getReforco());
                stmt.execute();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
    }

    public List<RegistroBean> gerarLista(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroBean> tabela = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT rv.reforco, rv.data as data, rv.lote as lote, rv.laboratorio as laboratorio,"
                        + " rv.dose as dose, l.nome as local, v.nome as vacina, u.nome as atendente "
                        + "FROM registro_vacinas as rv, vacina as v, local as l, usuario as u"
                        + " WHERE rv.vacina = v.idvacina AND rv.local = l.idlocal AND rv.atendente = u.idusuario AND rv.usuario_id = ? "
                        + "AND rv.reforco = \"Não\" ORDER BY rv.idregistro_vacinas ASC";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    RegistroBean tab = new RegistroBean();
                    tab.setData(rs.getString("data"));
                    tab.setLote(rs.getString("lote"));
                    tab.setLaboratorio(rs.getString("laboratorio"));
                    tab.setDose(rs.getString("dose"));
                    tab.setLocal(rs.getString("local"));
                    tab.setVacina(rs.getString("vacina"));
                    tab.setVacinador(rs.getString("atendente"));
                    tab.setReforco(rs.getString("reforco"));
                    tabela.add(tab);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return tabela;
    }

    public List gerarCampanha(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroBean> campanha = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT rv.data as data, rv.lote as lote, rv.laboratorio as laboratorio,"
                        + " rv.dose as dose, rv.reforco as reforco, l.nome as local, v.nome as vacina, u.nome as atendente "
                        + "FROM registro_vacinas as rv, vacina as v, local as l, usuario as u"
                        + " WHERE rv.vacina = v.idvacina AND rv.local = l.idlocal AND rv.atendente = u.idusuario AND rv.usuario_id = ? "
                        + " AND rv.reforco = \"Sim\" ORDER BY rv.idregistro_vacinas ASC;";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    RegistroBean camp = new RegistroBean();
                    camp.setData(rs.getString("data"));
                    camp.setLote(rs.getString("lote"));
                    camp.setLaboratorio(rs.getString("laboratorio"));
                    camp.setDose(rs.getString("dose"));
                    camp.setReforco(rs.getString("reforco"));
                    camp.setLocal(rs.getString("local"));
                    camp.setVacina(rs.getString("vacina"));
                    camp.setVacinador(rs.getString("atendente"));
                    campanha.add(camp);

                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return campanha;

    }

    public List listaRegistros() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroBean> res = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT r.idregistro_vacinas, u.nome as usuario, r.usuario_id as idusuario,"
                        + " r.data, r.dose, r.laboratorio, r.lote, v.nome as vacina, v.idvacina, l.nome as local,"
                        + " l.idlocal, r.atendente as idatendente FROM registro_vacinas as r, vacina as v, local as l, usuario as u"
                        + " WHERE r.vacina = v.idvacina AND r.usuario_id = u.idusuario AND r.local = l.idlocal";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    RegistroBean r = new RegistroBean();
                    r.setIdregistro_vacinas(rs.getInt("idregistro_vacinas"));
                    r.setUsuario(rs.getString("usuario"));
                    r.setIdusuario(rs.getInt("idusuario"));
                    r.setData(rs.getString("data"));
                    r.setDose(rs.getString("dose"));
                    r.setLaboratorio(rs.getString("laboratorio"));
                    r.setLote(rs.getString("lote"));
                    r.setVacina(rs.getString("vacina"));
                    r.setIdvacina(rs.getInt("idvacina"));
                    r.setLocal(rs.getString("local"));
                    r.setIdlocal(rs.getInt("idlocal"));
                    r.setIdatendente(rs.getInt("idatendente"));
                    res.add(r);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }

        }
        return res;

    }

    public RegistroBean localizarRegistro(int idregistro_vacinas) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        RegistroBean registrao = new RegistroBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM registro_vacinas WHERE idregistro_vacinas = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idregistro_vacinas);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    registrao.setIdregistro_vacinas(rs.getInt("idregistro_vacinas"));
                    registrao.setVacina(rs.getString("vacina"));
                    registrao.setLote(rs.getString("lote"));
                    registrao.setLaboratorio(rs.getString("laboratorio"));
                    registrao.setDose(rs.getString("dose"));
                    registrao.setLocal(rs.getString("local"));
                    registrao.setAtendente(rs.getString("atendente"));
                    registrao.setData(rs.getString("data"));
                    registrao.setIdusuario(rs.getInt("usuario_id"));
                    registrao.setReforco(rs.getString("reforco"));
                }
            } catch (Exception e) {
                System.out.println("Erro:" + e);
            } finally {
                conexao.close();
            }
        }
        return registrao;
    }

    public void atualizarRegistro(RegistroBean registro) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "UPDATE registro_vacinas SET vacina = ?, lote = ?, laboratorio = ?,"
                        + " dose = ?, local = ?, atendente = ?, data = ?, usuario_id = ?, reforco = ?"
                        + " WHERE idregistro_vacinas = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, registro.getIdvacina());
                stmt.setString(2, registro.getLote());
                stmt.setString(3, registro.getLaboratorio());
                stmt.setInt(4, Integer.parseInt(registro.getDose()));
                stmt.setInt(5, registro.getIdlocal());
                stmt.setInt(6, registro.getIdatendente());
                stmt.setDate(7, Date.valueOf(registro.getData()));
                stmt.setInt(8, registro.getIdusuario());
                stmt.setString(9, registro.getReforco());
                stmt.setInt(10, registro.getIdregistro_vacinas());
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro :" + e);
            } finally {
                conexao.close();
            }

        }
    }

    public void excluirRegistro(int idregistro_vacinas) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "DELETE FROM registro_vacinas WHERE idregistro_vacinas = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idregistro_vacinas);
                stmt.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
    }

    public List listaRegistro() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroBean> res = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT DISTINCT u.nome as usuario, r.usuario_id as idusuario"
                        + " FROM registro_vacinas as r, usuario as u WHERE r.usuario_id = u.idusuario";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    RegistroBean r = new RegistroBean();
                    r.setUsuario(rs.getString("usuario"));
                    r.setIdusuario(rs.getInt("idusuario"));
                    res.add(r);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return res;
    }

    public RegistroBean listarRegistroUsuario(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        RegistroBean registro = new RegistroBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT DISTINCT u.nome as usuario, r.usuario_id as idusuario FROM registro_vacinas as r,"
                        + " usuario as u WHERE r.usuario_id = u.idusuario AND r.usuario_id = ? ";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    registro.setUsuario(rs.getString("usuario"));
                    registro.setIdusuario(rs.getInt("idusuario"));
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return registro;
    }

    public void excluirTodosRegistros(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "DELETE FROM registro_vacinas WHERE usuario_id = ?";
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

    public List localizarRegistroUsuario(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroBean> registro = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT DISTINCT u.nome as usuario, r.idregistro_vacinas as idregistro_vacinas,"
                        + " r.vacina as idvacina, v.nome as vacina, r.lote as lote, r.laboratorio as laboratorio, r.dose as dose,"
                        + " r.local as idlocal, l.nome as local, r.atendente as idatendente, r.data as data, r.usuario_id as idusuario"
                        + " FROM registro_vacinas as r, usuario as u, vacina as v, local as l WHERE r.usuario_id = u.idusuario"
                        + " AND r.vacina = v.idvacina AND r.local = l.idlocal AND u.idusuario = ?;";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    RegistroBean r = new RegistroBean();
                    r.setUsuario(rs.getString("usuario"));
                    r.setIdregistro_vacinas(rs.getInt("idregistro_vacinas"));
                    r.setIdvacina(rs.getInt("idvacina"));
                    r.setVacina(rs.getString("vacina"));
                    r.setLote(rs.getString("lote"));
                    r.setLaboratorio(rs.getString("laboratorio"));
                    r.setDose(rs.getString("dose"));
                    r.setIdlocal(rs.getInt("idlocal"));
                    r.setLocal(rs.getString("local"));
                    r.setIdatendente(rs.getInt("idatendente"));
                    r.setData(rs.getString("data"));
                    r.setIdusuario(rs.getInt("idusuario"));
                    registro.add(r);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return registro;
    }

}
