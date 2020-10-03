
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;

public class Administrador extends Usuario{
    private Long fk_usuario_id;

    public Long getFk_usuario_id() {
        return fk_usuario_id;
    }

    public void setFk_usuario_id(Long fk_usuario_id) {
        this.fk_usuario_id = fk_usuario_id;
    }
    
}
