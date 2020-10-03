
package greenbuilding.model.entity;

import greenbuilding.model.base.BaseEntity;


public class MaterialPraticaSustentavel extends BaseEntity{
    private Long fk_material_id;

    public Long getFk_material_id() {
        return fk_material_id;
    }

    public void setFk_material_id(Long fk_material_id) {
        this.fk_material_id = fk_material_id;
    }
}
