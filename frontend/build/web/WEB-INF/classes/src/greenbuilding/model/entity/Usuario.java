package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;


public class Usuario extends BaseEntity {

    private String email;
    private String senha;
    private Boolean tipo;
    private Boolean situacao;

    public Usuario() {
    }

    public Usuario(String email, String senha, Boolean tipo, Boolean situacao) {
        this.email = email;
        this.senha = senha;
        this.tipo = tipo;
        this.situacao = situacao;
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

    public Boolean getTipo() {
        return tipo;
    }

    public void setTipo(Boolean tipo) {
        this.tipo = tipo;
    }

    public Boolean getSituacao() {
        return situacao;
    }

    public void setSituacao(Boolean situacao) {
        this.situacao = situacao;
    }

}
