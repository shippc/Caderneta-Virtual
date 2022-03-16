package br.com.senaces.bean;

public class UsuarioBean {

    private int idLogin;
    private String nome;
    private String cpf;
    private String pai;
    private String mae;
    private String rg;
    private String endereco;
    private String cartao_sus;
    private String nascimento;
    private String telefone;
    private String celular;
    private String registro;
    private String etnia;
    private int idendereco;
    private int idusuario;

    public UsuarioBean() {
    }

    public UsuarioBean(int idLogin, String nome, String cpf, String pai, String mae, String rg, String endereco, String cartao_sus, String nascimento, String telefone, String celular, String registro, String etnia, int idendereco, int idusuario) {
        this.idLogin = idLogin;
        this.nome = nome;
        this.cpf = cpf;
        this.pai = pai;
        this.mae = mae;
        this.rg = rg;
        this.endereco = endereco;
        this.cartao_sus = cartao_sus;
        this.nascimento = nascimento;
        this.telefone = telefone;
        this.celular = celular;
        this.registro = registro;
        this.etnia = etnia;
        this.idendereco = idendereco;
        this.idusuario = idusuario;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getEtnia() {
        return etnia;
    }

    public void setEtnia(String etnia) {
        this.etnia = etnia;
    }

    public int getIdLogin() {
        return idLogin;
    }

    public void setIdLogin(int idLogin) {
        this.idLogin = idLogin;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getPai() {
        return pai;
    }

    public void setPai(String pai) {
        this.pai = pai;
    }

    public String getMae() {
        return mae;
    }

    public void setMae(String mae) {
        this.mae = mae;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCartao_sus() {
        return cartao_sus;
    }

    public void setCartao_sus(String cartao_sus) {
        this.cartao_sus = cartao_sus;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
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

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }

    public int getIdendereco() {
        return idendereco;
    }

    public void setIdendereco(int idendereco) {
        this.idendereco = idendereco;
    }

}
