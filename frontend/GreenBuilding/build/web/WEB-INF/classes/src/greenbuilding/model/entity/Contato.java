
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;

public class Contato extends BaseEntity{
    private Long id;
    private String fixo;
    private String celular;
    private String whatsapp;
    private String email;
    private Long fk_Loja_id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFixo() {
        return fixo;
    }

    public void setFixo(String fixo) {
        this.fixo = fixo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getWhatsapp() {
        return whatsapp;
    }

    public void setWhatsapp(String whatsapp) {
        this.whatsapp = whatsapp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getFk_Loja_id() {
        return fk_Loja_id;
    }

    public void setFk_Loja_id(Long fk_Loja_id) {
        this.fk_Loja_id = fk_Loja_id;
    }
    
    
}
