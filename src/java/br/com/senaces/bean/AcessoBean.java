package br.com.senaces.bean;

import java.io.Serializable;

public class AcessoBean implements Serializable{

    private String email;
    private String senha;
    private String tipo;
    private int idacesso;
    private int idusuario;

    public AcessoBean() {
    }

    public AcessoBean(String email, String senha, String tipo, int idacesso, int idusuario) {
        this.email = email;
        this.senha = senha;
        this.tipo = tipo;
        this.idacesso = idacesso;
        this.idusuario = idusuario;
    }

    public int getIdacesso() {
        return idacesso;
    }

    public void setIdacesso(int idacesso) {
        this.idacesso = idacesso;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

}
