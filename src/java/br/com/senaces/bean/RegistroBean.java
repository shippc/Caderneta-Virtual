package br.com.senaces.bean;

public class RegistroBean {

    private String lote;
    private String laboratorio;
    private String dose;
    private String atendente;
    private String data;
    private String vacinador;
    private String vacina;
    private String local;
    private String usuario;
    private String reforco;
    private int idvacina;
    private int idlocal;
    private int idusuario;
    private int idregistro_vacinas;
    private int idatendente;

    public RegistroBean() {
    }

    public RegistroBean(String lote, String laboratorio, String dose, String atendente, String data, String vacinador, String vacina, String local, String usuario, String reforco, int idvacina, int idlocal, int idusuario, int idregistro_vacinas, int idatendente) {
        this.lote = lote;
        this.laboratorio = laboratorio;
        this.dose = dose;
        this.atendente = atendente;
        this.data = data;
        this.vacinador = vacinador;
        this.vacina = vacina;
        this.local = local;
        this.usuario = usuario;
        this.reforco = reforco;
        this.idvacina = idvacina;
        this.idlocal = idlocal;
        this.idusuario = idusuario;
        this.idregistro_vacinas = idregistro_vacinas;
        this.idatendente = idatendente;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }

    public String getLaboratorio() {
        return laboratorio;
    }

    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    }

    public String getDose() {
        return dose;
    }

    public void setDose(String dose) {
        this.dose = dose;
    }

    public String getAtendente() {
        return atendente;
    }

    public void setAtendente(String atendente) {
        this.atendente = atendente;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getVacinador() {
        return vacinador;
    }

    public void setVacinador(String vacinador) {
        this.vacinador = vacinador;
    }

    public String getVacina() {
        return vacina;
    }

    public void setVacina(String vacina) {
        this.vacina = vacina;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getReforco() {
        return reforco;
    }

    public void setReforco(String reforco) {
        this.reforco = reforco;
    }

    public int getIdvacina() {
        return idvacina;
    }

    public void setIdvacina(int idvacina) {
        this.idvacina = idvacina;
    }

    public int getIdlocal() {
        return idlocal;
    }

    public void setIdlocal(int idlocal) {
        this.idlocal = idlocal;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdregistro_vacinas() {
        return idregistro_vacinas;
    }

    public void setIdregistro_vacinas(int idregistro_vacinas) {
        this.idregistro_vacinas = idregistro_vacinas;
    }

    public int getIdatendente() {
        return idatendente;
    }

    public void setIdatendente(int idatendente) {
        this.idatendente = idatendente;
    }

}
