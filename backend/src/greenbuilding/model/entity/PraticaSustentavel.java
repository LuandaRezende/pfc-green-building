
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;

public class PraticaSustentavel extends BaseEntity{
    private String descricao;
    private String imagem;
    private Long fk_Administrador_id;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public Long getFk_Administrador_id() {
        return fk_Administrador_id;
    }

    public void setFk_Administrador_id(Long fk_Administrador_id) {
        this.fk_Administrador_id = fk_Administrador_id;
    }

}
