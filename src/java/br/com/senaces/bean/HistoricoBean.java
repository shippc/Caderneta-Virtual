package br.com.senaces.bean;

public class HistoricoBean {

    private String nome;
    private String peso;
    private String altura;
    private String idade;
    private String perimetro;
    private String lancamento;
    private String unidade;
    private double IMC;
    private int idusuario;
    private int idhistorico;

    public HistoricoBean() {
    }

    public HistoricoBean(String nome, String peso, String altura, String idade, String perimetro, String lancamento, String unidade, double IMC, int idusuario, int idhistorico) {
        this.nome = nome;
        this.peso = peso;
        this.altura = altura;
        this.idade = idade;
        this.perimetro = perimetro;
        this.lancamento = lancamento;
        this.unidade = unidade;
        this.IMC = IMC;
        this.idusuario = idusuario;
        this.idhistorico = idhistorico;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getAltura() {
        return altura;
    }

    public void setAltura(String altura) {
        this.altura = altura;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getPerimetro() {
        return perimetro;
    }

    public void setPerimetro(String perimetro) {
        this.perimetro = perimetro;
    }

    public String getLancamento() {
        return lancamento;
    }

    public void setLancamento(String lancamento) {
        this.lancamento = lancamento;
    }

    public String getUnidade() {
        return unidade;
    }

    public void setUnidade(String unidade) {
        this.unidade = unidade;
    }

    public double getIMC() {
        return IMC;
    }

    public void setIMC(double IMC) {
        this.IMC = IMC;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdhistorico() {
        return idhistorico;
    }

    public void setIdhistorico(int idhistorico) {
        this.idhistorico = idhistorico;
    }

}
