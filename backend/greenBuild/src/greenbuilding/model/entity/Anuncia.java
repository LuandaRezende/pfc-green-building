
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;
import java.util.List;

public class Anuncia extends BaseEntity{
    private String valor;
    private Integer qtd_clique;
    private Boolean status_anuncio;
    private Integer qtd_estoque;
    private String observacao;
    Loja loja;
    Material material;

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public Integer getQtd_clique() {
        return qtd_clique;
    }

    public void setQtd_clique(Integer qtd_clique) {
        this.qtd_clique = qtd_clique;
    }

    public Boolean getStatus_anuncio() {
        return status_anuncio;
    }

    public void setStatus_anuncio(Boolean status_anuncio) {
        this.status_anuncio = status_anuncio;
    }

    public Integer getQtd_estoque() {
        return qtd_estoque;
    }

    public void setQtd_estoque(Integer qtd_estoque) {
        this.qtd_estoque = qtd_estoque;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public Long getFk_material_id() {
        return fk_material_id;
    }

    public void setFk_material_id(Long fk_material_id) {
        this.fk_material_id = fk_material_id;
    }

    public Long getFk_loja_id() {
        return fk_loja_id;
    }

    public void setFk_loja_id(Long fk_loja_id) {
        this.fk_loja_id = fk_loja_id;
    }
    private Long fk_material_id;
    private Long fk_loja_id;
    
    
}
