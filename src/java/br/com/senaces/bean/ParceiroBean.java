package br.com.senaces.bean;

public class ParceiroBean {

    private String nome;
    private String telefone;
    private String celular;
    private String email;
    private String site;
    private String cnpj;
    private int idendereco;
    private int idparceiro;

    public ParceiroBean() {
    }

    public ParceiroBean(String nome, String telefone, String celular, String email, String site, String cnpj, int idendereco, int idparceiro) {
        this.nome = nome;
        this.telefone = telefone;
        this.celular = celular;
        this.email = email;
        this.site = site;
        this.cnpj = cnpj;
        this.idendereco = idendereco;
        this.idparceiro = idparceiro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public int getIdendereco() {
        return idendereco;
    }

    public void setIdendereco(int idendereco) {
        this.idendereco = idendereco;
    }

    public int getIdparceiro() {
        return idparceiro;
    }

    public void setIdparceiro(int idparceiro) {
        this.idparceiro = idparceiro;
    }

}
