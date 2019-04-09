package com.aimprosoft.yesipov.persistence.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RollerSkatesEntity {

    private long id;

    private ProductEntity product;

    private FixationEntity fixation;

    private BrandEntity brand;

    private FootSizeEntity footSize;

    private String description;

    private double price;

    private QualityEntity quality;

    private ImageEntity image;

    private ColorEntity color;

    @Override
    public String toString() {
        return "RollerSkatesEntity{" +
                "id=" + id +
                ", product=" + product +
                ", fixation=" + fixation +
                ", brand=" + brand +
                ", footSize=" + footSize +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", quality=" + quality +
                ", image=" + image +
                ", color=" + color +
                '}';
    }
}
