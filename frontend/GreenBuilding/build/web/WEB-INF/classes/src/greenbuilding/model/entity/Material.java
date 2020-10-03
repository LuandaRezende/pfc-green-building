/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;


public class Material extends BaseEntity{
    private String nome;
    private String descricao;
    private String imagem;
    private String fabricante;
    private Long fk_tipo_id ;
    private Long fk_categoria_id;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

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

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public Long getFk_tipo_id() {
        return fk_tipo_id;
    }

    public void setFk_tipo_id(Long fk_tipo_id) {
        this.fk_tipo_id = fk_tipo_id;
    }

    public Long getFk_categoria_id() {
        return fk_categoria_id;
    }

    public void setFk_categoria_id(Long fk_categoria_id) {
        this.fk_categoria_id = fk_categoria_id;
    }
       
}
