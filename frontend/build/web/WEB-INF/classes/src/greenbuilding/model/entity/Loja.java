package greenbuilding.model.entity;

public class Loja extends Usuario{
     private String cnpj;
     private String nome_loja;
     private Long fk_usuario_id;

    public Long getFk_usuario_id() {
        return fk_usuario_id;
    }

    public void setFk_usuario_id(Long fk_usuario_id) {
        this.fk_usuario_id = fk_usuario_id;
    }


    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNome_loja() {
        return nome_loja;
    }

    public void setNome_loja(String nome_loja) {
        this.nome_loja = nome_loja;
    }
}
