package br.com.senaces.bean;

public class VacinaBean {

    private String nome;
    private String doses;
    private String intervalo;
    private String primeira_dose;
    private int idvacina;

    public VacinaBean() {
    }

    public VacinaBean(String nome, String doses, String intervalo, String primeira_dose, int idvacina) {
        this.nome = nome;
        this.doses = doses;
        this.intervalo = intervalo;
        this.primeira_dose = primeira_dose;
        this.idvacina = idvacina;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDoses() {
        return doses;
    }

    public void setDoses(String doses) {
        this.doses = doses;
    }

    public String getIntervalo() {
        return intervalo;
    }

    public void setIntervalo(String intervalo) {
        this.intervalo = intervalo;
    }

    public String getPrimeira_dose() {
        return primeira_dose;
    }

    public void setPrimeira_dose(String primeira_dose) {
        this.primeira_dose = primeira_dose;
    }

    public int getIdvacina() {
        return idvacina;
    }

    public void setIdvacina(int idvacina) {
        this.idvacina = idvacina;
    }

}
